from django.contrib import admin

# Register your models here.
from index.models import Entrust, Advice


class entrustAdmin(admin.ModelAdmin):
    list_display = ['name','phone','type','describe','address','village','time','person','entrust','status']
    list_display_links = ['type','describe','address','village']
    list_editable = ['name','phone','time','person','status']
    list_filter = ['time','entrust']

admin.site.register(Entrust,entrustAdmin)

class adviceAdmin(admin.ModelAdmin):
    list_display = ['name','email','title','advice']
    list_filter = ['name']
    list_editable = ['email','title','advice']

admin.site.register(Advice,adviceAdmin)