from django.http import HttpResponse
from django.shortcuts import render, redirect
import json

# Create your views here.
from userinfo.models import Users
from rent_house.models import rentHouse


def rentHouse_views(request):
    return render(request,'rent_house.html')

def logStatus_rent_views(request):
    # 判断 session 中是否有 uid 和 uphone
    if 'uid' in request.session and 'uname' in request.session:
        # 用户此时处于登录状态
        # 根据 uid 获取 uname 的值
        uid = request.session['uid']
        user = Users.objects.get(id=uid)
        dic = {
            "status": '1',
            'user': json.dumps(user.to_dict())
        }
        return HttpResponse(json.dumps(dic))
    else:
        # 判断cookie是否有登录信息
        if 'uid' in request.COOKIES and 'uname' in request.COOKIES:
            # 从cookie中取出数据保存进session
            uid = request.COOKIES['uid']
            uname = request.COOKIES['uname']
            request.session['uid'] = uid
            request.session['uname'] = uname
            # 根据uid查询处对应的user信息转换成字典，响应给客户端
            user = Users.objects.get(id=uid)
            jsonStr = json.dumps(user.to_dict())
            dic = {
                "status": "1",
                "user": jsonStr,
            }
            return HttpResponse(json.dumps(dic))
        else:
            # session和cookie中都没有登录信息
            dic = {
                "status": 0,
                'text': '用户尚未登录'
            }
            return HttpResponse(json.dumps(dic))

def logout_rent_views(request):
    # 获取请求源地址，如果没有，则返回首页 /
    url = request.META.get('HTTP_REFERER', '/')
    resp = redirect(url)
    # 判断 session 中是否有登录信息
    if 'uid' in request.session and 'uname' in request.session:
        del request.session['uid']
        del request.session['uname']
    if 'uid' in request.COOKIES and 'uname' in request.COOKIES:
        resp.delete_cookie('uid')
        resp.delete_cookie('uname')

    return resp

def loadRent_views(request):
    rent_list = []
    rents = rentHouse.objects.all()
    for rent in rents:
        # 将得到的old对象转换成JSON字符串
        rent_json = json.dumps(rent.to_rent_dict())
        dic = {
            'id':rent.id,
            'type': rent_json,
        }
        rent_list.append(dic)
    return HttpResponse(json.dumps(rent_list))

def loadHotrent_views(request):
    rent_list = []
    rents = rentHouse.objects.all()
    for rent in rents:
        # 将得到的old对象转换成JSON字符串
        rent_json = json.dumps(rent.to_rent_dict())
        dic = {
            'type': rent_json,
        }
        rent_list.append(dic)
    return HttpResponse(json.dumps(rent_list))