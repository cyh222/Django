import json

from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
from person.models import Person


def person_views(request):
    return render(request,'person.html',locals())

def loadPerson_views(request):
    person_list = []
    persons = Person.objects.all()
    for person in persons:
        # 将得到的old对象转换成JSON字符串
        person_json = json.dumps(person.to_person_dic())
        dic = {
            'id': person.id,
            'type': person_json,
        }
        person_list.append(dic)
    return HttpResponse(json.dumps(person_list))

def loadHperson_views(request):
    person_list = []
    persons = Person.objects.all()
    for person in persons:
        # 将得到的old对象转换成JSON字符串
        person_json = json.dumps(person.to_person_dic())
        dic = {
            'id': person.id,
            'type': person_json,
        }
        person_list.append(dic)
    return HttpResponse(json.dumps(person_list))
