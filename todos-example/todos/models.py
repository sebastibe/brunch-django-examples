# -*- coding: utf-8 -*-

from django.db import models


class Task(models.Model):
    title = models.CharField(max_length=200)
    completed = models.BooleanField(default=False)
    created = models.DateTimeField()
    order = models.IntegerField(blank=True, null=True)
