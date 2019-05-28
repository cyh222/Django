from django.conf.urls import url

from old_house.views import oldHouse_views

urlpatterns = [
    url(r"^old_house/$",oldHouse_views)
]