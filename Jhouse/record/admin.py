from django.contrib import admin

# Register your models here.
from record.models import Trade


class tradeAdmin(admin.ModelAdmin):
    list_display = ['name','phone','type','describe','address','village','card','person','entrust','status','time']
    list_display_links = ['type','describe','address','village']
    list_editable = ['name','phone','person','status','card']
    list_filter = ['time']

admin.site.register(Trade,tradeAdmin)