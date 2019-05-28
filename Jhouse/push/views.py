from django.shortcuts import render, redirect

# Create your views here.
from Jhouse import settings
from index.models import Entrust
from new_house.models import newHouse
from old_house.models import oldHouse
from person.models import Person
from rent_house.models import rentHouse


def allPush_views(request):
    if "uname" in request.session:
        name = request.session['uname']
        info = Entrust.objects.filter(name=name,status="通过")
        for i in info:
            type = i.type
            describe = i.describe
            addr = i.address
            village = i.village
        return render(request,"passPush.html",locals())
    else:
        return redirect("/login/")

def passForm_views(request):
    if request.method == "GET":
        return redirect("/")
    else:
        title = request.POST['title']
        money = request.POST['money']
        picture = str(request.FILES.get('file'))
        describe = request.POST['describe']
        addr = request.POST['addr']
        village = request.POST['village']
        standard = request.POST['standard']
        area = request.POST['area']
        direction = request.POST['direction']
        elevator = request.POST['elevator']
        floor_stand = request.POST['floor_stand']
        floor = request.POST['floor']
        bulid_time = request.POST['bulid_time']
        point1 = request.POST['point1']
        point2 = request.POST['point2']
        point3 = request.POST['point3']
        if title == "租房":
            url1 = "renthouse/"
            staticpath = settings.MEDIA_ROOT + url1 + picture
            dbpath = "static/" + "images/" + url1 + picture
            dic = {
                'title': title,
                'money': money,
                'picture': dbpath,
                'describe': describe,
                'addr': addr,
                'village': village,
                'standard': standard,
                'area': area,
                'direction': direction,
                'elevator': elevator,
                'floor_stand': floor_stand,
                'floor': floor,
                'bulid_time': bulid_time,
                'point1': point1,
                'point2': point2,
                'point3': point3,
            }
            rentHouse(**dic).save()
        else:
            url2 = "oldhouse/"
            if title == "新房":
                staticpath = settings.MEDIA_ROOT + url2 + picture
                dbpath = "static/" + "images/" + url2 + picture
                dic = {
                    'title': title,
                    'money': money,
                    'picture': dbpath,
                    'describe': describe,
                    'addr': addr,
                    'village': village,
                    'standard': standard,
                    'area': area,
                    'direction': direction,
                    'elevator': elevator,
                    'floor_stand': floor_stand,
                    'floor': floor,
                    'bulid_time': bulid_time,
                    'point1': point1,
                    'point2': point2,
                    'point3': point3,
                }
                newHouse(**dic).save()
            else:
                staticpath = settings.MEDIA_ROOT + url2 + picture
                dbpath = "static/" + "images/" + url2 + picture
                dic = {
                    'title': title,
                    'money': money,
                    'picture': dbpath,
                    'describe': describe,
                    'addr': addr,
                    'village': village,
                    'standard': standard,
                    'area': area,
                    'direction': direction,
                    'elevator': elevator,
                    'floor_stand': floor_stand,
                    'floor': floor,
                    'bulid_time': bulid_time,
                    'point1': point1,
                    'point2': point2,
                    'point3': point3,
                }
                oldHouse(**dic).save()
        file = request.FILES['file']
        with open(staticpath,"wb") as f:
            for p in file:
                f.write(p)
        msg = "已发布"
        obj = Entrust.objects.get(status="通过")
        obj.status = msg
        obj.save()
        return redirect("/")

def push_views(request):
    if "uname" in request.session:
        name = request.session['uname']
        person = Person.objects.all()
        obj = Entrust.objects.filter(name=name)
        for i in obj:
            if i.status == "通过":
                resp = redirect("/allPush/",locals())
            else:
                resp = render(request,"push.html",locals())
        return resp
    else:
        return redirect("/login/")

def pushForm_views(request):
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
        "name": name,
        "phone": phone,
        "type": type,
        "describe": describe,
        'address': address,
        "village": village,
        "time": time,
        "person": person,
        "entrust": entrust,
        "status": status
    }
    Entrust(**dic).save()
    return redirect("/")