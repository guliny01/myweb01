# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Post,Product,Domain,Domain_ip
# Register your models here.

class PostAdmin(admin.ModelAdmin):
    list_display = ('title','slug','pub_date')

class ProductAdmin(admin.ModelAdmin):
    list_display = ('name','sku','price','size')

class DomainAdmin(admin.ModelAdmin):
    list_display = ('service','domain','domain_vip','respone_way')

class Domain_ipAdmin(admin.ModelAdmin):
    list_display = ('encode','ip','description',)

admin.site.register(Post, PostAdmin)
admin.site.register(Product,ProductAdmin)
admin.site.register(Domain,DomainAdmin)
admin.site.register(Domain_ip,Domain_ipAdmin)

