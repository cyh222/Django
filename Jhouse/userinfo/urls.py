from django.conf.urls import url
from django.urls import include
from userinfo.views import index_views, login_views, register_views, checkUser_views, logout_views, logStatus_views,update_views
from old_house.views import oldHouse_views, logout_old_views, logStatus_old_views, loadOld_views, loadHostold_views
from new_house.views import newHouse_views, logout_new_views, logStatus_new_views, loadHotnew_views, loadNew_views
from rent_house.views import rentHouse_views,logout_rent_views,logStatus_rent_views,loadHotrent_views,loadRent_views
from village.views import loadHvillage_views, loadVillage_views, logout_village_views,logStatus_village_views, village_views
from index.views import loadIndexnew_views, loadIndexold_views,loadIndexvillage_views,loadIndexrent_views,detail_views,entrust_views,\
    entustFrom_views,advice_views
from person.views import person_views, loadHperson_views, loadPerson_views
from record.views import entustRecord_views,tradeRecord_views,trade_views,tradeForm_views
from push.views import push_views, pushForm_views, allPush_views, passForm_views

urlpatterns = [
    url(r'^$',index_views,name = "index"),
    url(r'^login/$',login_views,name="login"),
    url(r'^register/$',register_views,name="register"),
    url(r'^loadIndexnew/$',loadIndexnew_views),
    url(r'^loadIndexold/$',loadIndexold_views),
    url(r'^loadIndexrent/$',loadIndexrent_views),
    url(r'^loadIndexvillage/$',loadIndexvillage_views),
]

urlpatterns += [
    url(r'^checkUser/$',checkUser_views,name="checkUser"),
    url(r'^logStatus/$',logStatus_views,name="logStatus"),
    url(r'^logout/$',logout_views,name="logout"),
]

# 二手房网址链接
urlpatterns +=[
    url(r'^old_house/$',oldHouse_views),
    url(r'^logStatus_old/$',logStatus_old_views),
    url(r'^logout_old/$',logout_old_views),
    url(r'^loadOld/$',loadOld_views),
    url(r'^loadHotold/$',loadHostold_views)
]
# 新房网址链接
urlpatterns += [
    url(r'^new_house/$',newHouse_views),
    url(r'^logStatus_new/$',logStatus_new_views),
    url(r'^logout_new/$',logout_new_views),
    url(r'^loadNew/$',loadNew_views),
    url(r"loadHotnew/$",loadHotnew_views),
]

# 租房网址链接
urlpatterns += [
    url(r'^rent_house/$',rentHouse_views),
    url(r'^logStatus_rent/$',logStatus_rent_views),
    url(r'^logout_rent/$',logout_rent_views),
    url(r'^loadRent/$',loadRent_views),
    url(r"loadHotrent/$",loadHotrent_views),
]
# 小区网址链接
urlpatterns += [
    url(r'^village/$',village_views),
    url(r'^logStatus_village/$',logStatus_village_views),
    url(r'^logout_village/$',logout_village_views),
    url(r'^loadVillage/$',loadVillage_views),
    url(r"loadHvillage/$",loadHvillage_views),
]
# 详情页展示链接
urlpatterns += [
    url(r'^detail/',detail_views)
]
# 经纪人网址链接
urlpatterns += [
    url(r'^person/$',person_views),
    url(r'^loadPerson/$',loadPerson_views),
    url(r'^loadHperson/$',loadHperson_views),
]

# 委托链接
urlpatterns += [
    url(r'^entrust/',entrust_views),
    url(r'^entustFrom/$',entustFrom_views),
    url(r'^trade/$',trade_views),
    url(r'^tradeForm/$',tradeForm_views),
]
# 记录查询
urlpatterns += [
    url(r'^entrustRecord/$',entustRecord_views),
    url(r'^tradeRecord/$',tradeRecord_views),
]
# 建议链接
urlpatterns += [
    url(r'^advice/$',advice_views)
]
# 个人资料修改
urlpatterns += [
    url(r'^update/$',update_views)
]
# 发布房源
urlpatterns += [
    url(r'^push/$',push_views),
    url(r'^pushForm/$',pushForm_views),
    url(r'^allPush/$',allPush_views),
    url(r'^passForm/$',passForm_views)

]