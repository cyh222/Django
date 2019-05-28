from django.http import HttpResponse
from django.shortcuts import render, redirect
import json
from userinfo.models import Users
# Create your views here.

# 重定向到主页
def index_views(request):
    if "uname" in request.session:
        name = request.session['uname']
        userinfo = Users.objects.get(uname=name)
        return render(request,"index.html",locals())
    else:
        return render(request,"index.html")

#重定向到登录页
def login_views(request):
    if request.method == "GET":
        if 'uid' in request.session and 'uname' in request.session:
            return render(request,"index.html")
        else:
            if 'uid' in request.COOKIES and "uname" in request.COOKIES:
                uid = request.COOKIES['uid']
                uname = request.COOKIES['uname']
                request.session['uid'] = uid
                request.session['uname'] = uname
                return render(request,"index.html")
            else:
                return render(request,"login.html")
    else:
        uname = request.POST["uname"]
        upwd = request.POST["upwd"]
        ulist = Users.objects.filter(uname=uname,upwd=upwd)
        if ulist:
            uid = ulist[0].id
            request.session['uid'] = uid
            request.session['uname'] = uname
            resp = redirect("/")
            if 'isSaved' in request.POST:
                expires = 60 * 60 * 24 * 366
                resp.set_cookie('uid', uid, expires)
                resp.set_cookie('uname', uname, expires)
            uname = request.POST["uname"]
            return redirect("/",locals())
        else:
            errMsg = "用户名或密码不正确"
            return render(request, 'login.html', locals())


# 重定向到注册页
def register_views(request):
    if request.method == "GET":
        return render(request,"register.html")
    else:
        dic = {
            "uname":request.POST["username"],
            "uemail":request.POST["email"],
            "upwd":request.POST["passwd"],
        }
        Users(**dic).save()
        return render(request,"login.html")

# 验证用户是否存在
def checkUser_views(request):
    if request.method == "POST":
        uname = request.POST['uname']
        ulist = Users.objects.filter(uname=uname)
        if ulist:
            dic = {
                "status":"0",
                "text":"该用户已经存在"
            }
            return HttpResponse(json.dumps(dic))
        else:
            dic = {
                "status": "1",
                "text": ""
            }
            return HttpResponse(json.dumps(dic))

# 检查用户登陆状态
def logStatus_views(request):
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
def logout_views(request):
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

def update_views(request):
    name = request.session['uname']
    email = request.POST['email']
    passwd = request.POST['upwd']
    obj = Users.objects.get(uname=name)
    obj.uemail = email
    obj.upwd = passwd
    obj.save()
    return redirect('/')