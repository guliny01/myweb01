# -*- coding: utf-8 -*-

from __future__ import unicode_literals


from django.shortcuts import render
from django.http import HttpResponse
from .models import Post

import sys
reload(sys)
sys.setdefaultencoding('utf8')


# Create your views here.
def homepage(request):
    posts = Post.objects.all()
    post_lists = list()
    for count,body in enumerate(posts):
        post_lists.append("No.{}:".format(str(count)) + str(body.title)+"<br>")
        post_lists.append(str(body.slug)+"<br>")
        post_lists.append("<larger>" + str(body.body.encode('utf-8'))\
    +"</small><br><br>")
        post_lists.append("test" + str(body.slug)+"<br>")
    return HttpResponse(post_lists)
