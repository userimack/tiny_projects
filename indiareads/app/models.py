from __future__ import unicode_literals

from django.db import models

# Create your models here.

class Category(models.Model):
    category = models.CharField(unique=true,max_length=1000)



class Data(models.Model):
    topic = models..OneToOneField(Category,unique = True)
    image = models.ImageField(upload_to=None)
    name = models.CharField(unique=true,max_length=1000)
    author = models.CharField(max_length=1000)
    mrp = models.DecimalField(max_digits=100,decimal_places=2)
    rent_price = models.DecimalField(max_digits=100,decimal_places=2)
    publisher = models.CharField(max_length=1000)
    binding = models.CharField(max_length=1000)
    isbn = models.CharField(max_length=1000)
    language = models.CharField(max_length=1000)

