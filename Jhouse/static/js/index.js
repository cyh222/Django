/**
 * Created by tarena on 18-9-6.
 */
/**
 * 功能：检查登录状态(AJAX)
 *  如果有登录信息的话，登录位置处显示 ： 欢迎 xxxx 退出
 *  如果没有登录信息的话，登录位置处显示：登录/注册
 * */
function check_login(){
    $.get('/logStatus/',function(data){
        var html = "";
        if(data.status == 0){
            html+="<li><a href='/login/'>登录</a></li>";
            html+="<li><a href='/register/'>注册</a></li>";
        }else if(data.status == 1){
            //用户已经处于登录状态
            user = JSON.parse(data.user)
            html+="<li><a href='/tradeRecord/'>交易记录</a></li>";
            html+="<li><a href='/entrustRecord/'>委托记录</a></li>";
            html+="<li><a href='#' data-toggle='modal' data-target='#myModal'>"+"欢迎: "+user.uname+"</a></li>"
            html+="<li><a href='/logout/'>退出</a></li>";
        }
        $("#daohang").append(html);
    },'json');
}
function LoadnewHouse(){
    $.get('/loadIndexnew/',function (data) {
        var html = ""
        $.each(data,function (i,obj) {
            var newhouse = JSON.parse(obj.type)
            var newid = JSON.parse(obj.id)
            html += "<div class='col-md-3'>"
                html += "<div class='thumbnail'>"
                html += "<a href='/detail/?id="+newid+"&name="+newhouse['title']+"'><img src='/"+newhouse['picture']+"' class='img img-responsive'></a>"
                    html += "<div>"
                        html += "<h4 style='font-weight: bold;'>"+newhouse['village']+"</h4>"
                        html += "<span>"+newhouse['addr']+" </span>"
                        html += "<span>"+newhouse['standard']+" </span>"
                        html += "<span>"+newhouse['area']+"</span>"
                        html += "<span style='float: right;color: red;'>"+newhouse["money"]+"万</span>"
                    html += "</div>"
                html += "</div>"
            html += "</div>"
        })
        $("#newhouse").append(html)
    },'json')
}
function LoadoldHouse(){
    $.get('/loadIndexold/', function (data) {
        var html = ""
        $.each(data, function (i,obj) {
            var oldhouse = JSON.parse(obj.type)
            var oldid = JSON.parse(obj.id)
            html += "<div class='col-md-3'>"
                html += "<div class='thumbnail'>"
                html += "<a href='/detail/?id="+oldid+"&name="+oldhouse['title']+"'><img src='/"+oldhouse['picture']+"' class='img img-responsive'></a>"
                    html += "<div>"
                        html += "<h4 style='font-weight: bold;'>"+oldhouse['village']+"</h4>"
                        html += "<span>"+oldhouse['addr']+" </span>"
                        html += "<span>"+oldhouse['standard']+" </span>"
                        html += "<span>"+oldhouse['area']+"</span>"
                        html += "<span style='float: right;color: red;'>"+oldhouse["money"]+"万</span>"
                    html += "</div>"
                html += "</div>"
            html += "</div>"
        })
        $("#oldhouse").append(html)
    },'json')
}
function LoadrentHouse(){
    $.get('/loadIndexrent/', function (data) {
        var html = ""
        $.each(data, function (i,obj) {
            var renthouse = JSON.parse(obj.type)
            var rentid = JSON.parse(obj.id)
            html += "<div class='col-md-3'>"
                html += "<div class='thumbnail'>"
                html += "<a href='/detail/?id="+rentid+"&name="+renthouse['title']+"'><img src='/"+renthouse['picture']+"' class='img img-responsive'></a>"
                    html += "<div>"
                        html += "<h4 style='font-weight: bold;'>"+renthouse['village']+"</h4>"
                        html += "<span>"+renthouse['addr']+" </span>"
                        html += "<span>"+renthouse['standard']+" </span>"
                        html += "<span>"+renthouse['area']+"</span>"
                        html += "<span style='float: right;color: red;'>"+renthouse["money"]+"元/月</span>"
                    html += "</div>"
                html += "</div>"
            html += "</div>"
        })
        $("#renthouse").append(html)
    },'json')
}
function LoadVillage(){
    $.get('/loadIndexvillage/', function (data) {
        var html = ""
        $.each(data, function (i,obj) {
            var village = JSON.parse(obj.type)
            var vid = JSON.parse(obj.id)
            html += "<div class='col-md-3'>"
                html += "<div class='thumbnail'>"
                html += "<a href='/detail/?id="+vid+"&name="+village['title']+"'><img src='/"+village['picture']+"' class='img img-responsive'></a>"
                    html += "<div>"
                        html += "<h4 style='font-weight: bold;'>"+village['village']+"</h4>"
                        html += "<span>"+village['addr']+" </span>"
                        html += "<span>"+village['standard']+" </span>"
                        html += "<span>"+village['area']+"</span>"
                        html += "<span style='float: right;color: red;'>"+village["money"]+"元/m2</span>"
                    html += "</div>"
                html += "</div>"
            html += "</div>"
        })
        $("#village").append(html)
    },'json')
}
$(function(){
    //检车登录状态 - check_login()
    check_login();
    LoadnewHouse();
    LoadoldHouse();
    LoadrentHouse();
    LoadVillage();
});