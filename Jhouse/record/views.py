from django.http import HttpResponse
from django.shortcuts import render, redirect

# Create your views here.
from index.models import Entrust
from new_house.models import newHouse
from old_house.models import oldHouse
from person.models import Person
from record.models import Trade
from rent_house.models import rentHouse
from village.models import Village


def entustRecord_views(request):
    if "uname" in request.session:
        name = request.session["uname"]
        record = Entrust.objects.filter(name=name)
        return render(request,"entrustRecord.html",locals())
    else:
        return render(request,"login.html")

def trade_views(request):
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
        return render(request, 'trade.html', locals())
    else:
        return render(request, 'login.html')

def tradeForm_views(request):
    url = "/tradeRecord/"
    name = request.POST['name']
    phone = request.POST['phone']
    card = request.POST['card']
    type = request.POST['type']
    describe = request.POST['describe']
    address = request.POST['address']
    village = request.POST['village']
    person = request.POST['person']
    entrust = request.POST['entrust']
    status = "交易中"
    dic = {
        "name": name,
        "phone": phone,
        'card':card,
        "type": type,
        "describe": describe,
        'address': address,
        "village": village,
        "person": person,
        "entrust": entrust,
        "status": status
    }
    Trade(**dic).save()
    return redirect(url)


def tradeRecord_views(request):
    if "uname" in request.session:
        name = request.session["uname"]
        record = Trade.objects.filter(name=name)
        return render(request,"tradeRecord.html",locals())
    else:
        return render(request,"login.html")