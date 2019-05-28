from django.core import serializers
from django.http import HttpResponse
from django.shortcuts import render, redirect
import json
from userinfo.models import Users
from old_house.models import oldHouse


def oldHouse_views(request):
    # if "uname" in request.session:
    #     name = request.session['uname']
    #     userinfo = Users.objects.get(uname=name)
    return render(request,"old_house.html")
    # else:
    #     return redirect("/")

# 检查用户登陆状态
def logStatus_old_views(request):
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

# 退出登录处理
def logout_old_views(request):
    #获取请求源地址，如果没有，则返回首页 /
    url = request.META.get('HTTP_REFERER','/')
    resp = redirect(url)
    # 判断 session 中是否有登录信息
    if 'uid' in request.session and 'uname' in request.session:
        del request.session['uid']
        del request.session['uname']
    if 'uid' in request.COOKIES and 'uname' in request.COOKIES:
        resp.delete_cookie('uid')
        resp.delete_cookie('uname')

    return resp

def loadOld_views(request):
    old_list = []
    olds = oldHouse.objects.all()
    for old in olds:
        # 将得到的old对象转换成JSON字符串
        old_json = json.dumps(old.to_old_dict())
        dic = {
            'id':old.id,
            'type':old_json,
        }
        old_list.append(dic)
    return HttpResponse(json.dumps(old_list))

def loadHostold_views(request):
    old_list = []
    olds = oldHouse.objects.all()
    for old in olds:
        # 将得到的old对象转换成JSON字符串
        old_json = json.dumps(old.to_old_dict())
        dic = {
            'type': old_json,
        }
        old_list.append(dic)
    return HttpResponse(json.dumps(old_list))