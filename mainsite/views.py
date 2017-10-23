# -*- coding: utf-8 -*-

from __future__ import unicode_literals


from django.shortcuts import render
from django.http import HttpResponse
from .models import Post,Product,Domain,Domain_ip
import random

import sys
import os
import commands 
reload(sys)
sys.setdefaultencoding('utf8')


# Create your views here.
from django.template.loader import get_template
from django.http import HttpResponse,Http404
from django.shortcuts import redirect
from datetime import datetime
from .models import Post

# Create your views here.
def homepage(request):
    template = get_template('index.html')
    posts = Post.objects.all()
    now = datetime.now()
    html = template.render(locals())
    return HttpResponse(html)

def showpost(request, slug):
    template = get_template('post.html')
    post = Post.objects.get(slug=slug)
    if post != None:
         html = template.render(locals())
         return HttpResponse(html)
    else:    
         #return redirect('/')
         post_lists = list()
         post_lists.append(post)
         return HttpResponse(post_lists)

def about(request):
    template = get_template('about.html')
    quotes = ['今日事，今日毕',
              '要收获，先付出',
              '知识就是力量',
              '拖拉浪费生命']
    html = template.render({'quote':random.choice(quotes)})
    return HttpResponse(html)

def about1(request,domain):
    t = Domain.objects.get(domain=domain)
    domain_list = t.domain
    server_list = t.service
    url_list = t.domain_url
    domain_type = t.respone_way
    
    os.environ['domain_list']=str(domain_list)
    os.environ['server_list']=str(server_list)
    os.environ['url_list']=str(url_list)
    os.environ['domain_type']=str(domain_type)
    codes = Domain_ip.objects.filter(encode=t)
    output_list = list()
    for count,ip_list in enumerate(codes):
        os.environ['vip']=str(ip_list.ip)
        #(status, output) = commands.getstatusoutput('echo $domain_type')
        #(status, output) = commands.getstatusoutput('/usr/bin/curl "https://$vip/iptv/api/user/loginWithMac?version=V2401RCN02C060254D07281D&versionName=6.0.254D_0728&model=X455&ui=6.0&hwVersion=H5000&mac=c80e77fa7abe&region=CN&user-prefer-language=zh-cn" -sv -k -H "Host:accounts-scloud.cp21.ott.cibntv.net"')
        try: 
            (status, output) = commands.getstatusoutput('/usr/bin/curl "$domain_type://$vip/$url_list" -sv -k -H "Host:$domain_list" ')
            output = output.strip('\n')
            output_list.append("<hr>")
            output_list.append("<h1>"+str(ip_list.description)+"</h1>")
            output_list.append(str(output)+"<br>")
        except:
            raise Http404('找不到指定API请求')
    return HttpResponse(output_list)
    #return HttpResponse(domain_type)


def disp_detail(request,sku):
    try:
        p = Product.objects.get(sku=sku)
    except:
        raise Http404('找不到指定的产品编号')
    template = get_template('disp.html')
    html = template.render({'product':p})
    return HttpResponse(html)

def listing(request):
    products = Product.objects.all()
    total = Product.objects.all().count()
    template = get_template('list.html')
    #html = template.render({'products':products},{'total':total})
    html = template.render(locals())
    return HttpResponse(html)

