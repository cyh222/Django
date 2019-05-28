from django.contrib import admin

# Register your models here.
from .models import *

class UserAdmin(admin.ModelAdmin):
    list_display = ['uname','uemail']
    list_display_links = ['uemail']
    list_editable = ['uname']
    list_filter = ['uname']

admin.site.register(Users,UserAdmin)