# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.utils import timezone
# Create your models here.

class Post(models.Model):
    title = models.CharField(max_length=200)
    slug = models.CharField(max_length=200)
    body = models.TextField()
    pub_date = models.DateTimeField(default=timezone.now)

    class Meta:
        ordering = ('-pub_date',)

    def __unicode__(self):
        return self.title

class Product(models.Model):
    SIZES = (
        ('S','Small'),
        ('M','Medium'),
        ('L','Large'),
    )
    sku = models.CharField(max_length=5)
    name = models.CharField(max_length=20)
    price = models.PositiveIntegerField()
    qty = models.PositiveIntegerField()
    size = models.CharField(max_length=1,choices=SIZES)

    def __unicode__(self):
        return self.name

class Domain(models.Model):
    service = models.CharField(max_length=200)
    domain = models.CharField(max_length=100)
    encode = models.CharField(max_length=10)
    domain_url = models.CharField(max_length=200,default='/')
    respone_type = (
        ('Http','Http'),
        ('Https','Https'),
    )
    domain_vip = models.CharField(max_length=100)
    respone_way = models.CharField(max_length=5,choices=respone_type)
    

    def __unicode__(self):
        return self.service

class Domain_ip(models.Model):
    encode = models.ForeignKey(Domain,on_delete=models.CASCADE)
    ip = models.CharField(max_length=100)
    description = models.CharField(max_length=100)

    def __unicode__(self):
        return self.ip
