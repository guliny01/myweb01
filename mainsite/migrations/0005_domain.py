# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-10-16 08:55
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainsite', '0004_product_qty'),
    ]

    operations = [
        migrations.CreateModel(
            name='Domain',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('service', models.CharField(max_length=200)),
                ('domain', models.CharField(max_length=100)),
                ('domain_vip', models.CharField(max_length=100)),
                ('respone_way', models.CharField(choices=[('H', 'Http'), ('S', 'Https')], max_length=5)),
            ],
        ),
    ]
