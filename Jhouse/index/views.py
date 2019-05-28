import json

from django.http import HttpResponse
from django.shortcuts import render, redirect

from index.models import Entrust, Advice
from new_house.models import newHouse
from old_house.models import oldHouse
from person.models import Person
from rent_house.models import rentHouse
from village.models import Village


def loadIndexnew_views(request):
    new_list = []
    news = newHouse.objects.all()[0:4]
    for new in news:
        # 将得到的old对象转换成JSON字符串
        news_json = json.dumps(new.to_new_dict())
        dic = {
            'id': new.id,
            'type': news_json,
        }
        new_list.append(dic)
    return HttpResponse(json.dumps(new_list))

def loadIndexold_views(request):
    old_list = []
    olds = oldHouse.objects.all()[0:4]
    for old in olds:
        # 将得到的old对象转换成JSON字符串
        odls_json = json.dumps(old.to_old_dict())
        dic = {
            'id':old.id,
            'type': odls_json,
        }
        old_list.append(dic)
    return HttpResponse(json.dumps(old_list))

def loadIndexrent_views(request):
    rent_list = []
    rents = rentHouse.objects.all()[0:4]
    for rent in rents:
        # 将得到的old对象转换成JSON字符串
        rents_json = json.dumps(rent.to_rent_dict())
        dic = {
            'id':rent.id,
            'type': rents_json,
        }
        rent_list.append(dic)
    return HttpResponse(json.dumps(rent_list))

def loadIndexvillage_views(request):
    village_list = []
    villages = Village.objects.all()[0:4]
    for village in villages:
        # 将得到的old对象转换成JSON字符串
        # villages_json = json.dumps({"inmd": village.id, "data": village.to_village_dict()})
        villages_json = json.dumps(village.to_village_dict())
        dic = {
            'id': village.id,
            'type': villages_json,
        }
        village_list.append(dic)
    return HttpResponse(json.dumps(village_list))

def detail_views(request):
    house_id = request.GET.get("id")
    house_type = request.GET.get("name")
    if house_type == "二手房":
        content = oldHouse.objects.get(id=house_id)
    if house_type == "新房":
        content = newHouse.objects.get(id=house_id)
    if house_type == "租房":
        content = rentHouse.objects.get(id=house_id)
    if house_type == "小区":
        content = Village.objects.get(id=house_id)
    return render(request,'detail.html',locals())

def entrust_views(request):
    house_id = request.GET.get("id")
    house_type = request.GET.get("name")
    person = Person.objects.all()
    if "uname" in request.session:
        if house_type == "二手房":
            content = oldHouse.objects.get(id=house_id)
            name = request.session['uname']
        if house_type == "新房":
            content = newHouse.objects.get(id=house_id)
            name = request.session['uname']
        if house_type == "租房":
            content = rentHouse.objects.get(id=house_id)
            name = request.session['uname']
        if house_type == "小区":
            content = Village.objects.get(id=house_id)
            name = request.session['uname']
        return render(request, 'entrust.html', locals())
    else:
        return render(request,'login.html')

def entustFrom_views(request):
    url = "/entrustRecord/"
    name = request.POST['name']
    phone = request.POST['phone']
    type = request.POST['type']
    describe = request.POST['describe']
    address = request.POST['address']
    village = request.POST['village']
    time = str(request.POST['time'])
    person = request.POST['person']
    entrust = request.POST['entrust']
    status = "处理中"
    dic = {
        "name":name,
        "phone":phone,
        "type":type,
        "describe":describe,
        'address':address,
        "village":village,
        "time":time,
        "person":person,
        "entrust":entrust,
        "status":status
    }
    Entrust(**dic).save()
    return redirect(url)

def advice_views(request):
    url = "/"
    if "uname" in request.session:
        email = request.POST['email']
        name = request.session['uname']
        title = request.POST['title']
        advice = request.POST['advice']
        dic = {
            "email":email,
            "name":name,
            "title":title,
            "advice":advice,
        }
        Advice(**dic).save()
        return redirect(url)
    else:
        return render(request,"login.html")