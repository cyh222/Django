from django.contrib import admin

# Register your models here.
from .models import *

class newHouseAdmin(admin.ModelAdmin):
    list_display = ['picture','describe','addr','village',
                     'standard','area','direction','elevator','floor_stand',
                     'floor','bulid_time','point1','point2','point3']
    list_display_links = ['point1','point2','point3']
    list_editable = ['picture','describe','addr','village',
                     'standard','area','direction','elevator','floor_stand',
                     'floor','bulid_time']
    list_filter = ['standard','addr','area',]

admin.site.register(newHouse,newHouseAdmin)