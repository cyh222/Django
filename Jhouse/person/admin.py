from django.contrib import admin

# Register your models here.
from person.models import Person


class personAdmin(admin.ModelAdmin):
    list_display = ['name','phone','address','phone','point','comment','photo']
    list_display_links = ['point','comment']
    list_editable = ["name","phone","photo","address"]
    list_filter = ['point']


admin.site.register(Person,personAdmin)