/**
 * Created by cyh on 19-3-29.
 */
/**
 * 功能：检查登录状态(AJAX)
 *  如果有登录信息的话，登录位置处显示 ： 欢迎 xxxx 退出
 *  如果没有登录信息的话，登录位置处显示：登录/注册
 * */
function check_login(){
    $.get('/logStatus_old/',function(data){
        var html = "";
        if(data.status == 0){
            html+="<li><a href='/login/'>登录</a></li>";
            html+="<li><a href='/register/'>注册</a></li>";
        }else if(data.status == 1){
            //用户已经处于登录状态
            user = JSON.parse(data.user)
            html+="<li><a href='/tradeRecord/'>交易记录</a></li>";
            html+="<li><a href='/entrustRecord/'>委托记录</a></li>";
            html+="<li><a href='#'>"+"欢迎: "+user.uname+"</a></li>"
            html+="<li><a href='/logout_old/'>退出</a></li>";
        }
        $("#daohang").append(html);
    },'json');
}

function loadoldHouse(){
    $.get('/loadOld/',function (data) {
        var html = ""
        $.each(data,function (i,obj) {
            var olds = JSON.parse(obj.type)
            var oldid = JSON.parse(obj.id)
            html += "<div class='row info-content'>"
                html += "<div class='col-md-5 col-sm-5 col-xs-5'>"
                    html += "<img src='/"+olds['picture']+"' class='img-responsive'>"
                html += "</div>"
                html += "<div class='col-md-7 col-sm-7 col-xs-7' style='padding: 30px;'>"
                    html += "<a href='/detail/?id="+oldid+"&name="+olds['title']+"'><h4>"+olds['describe']+"</h4></a>"
                    html += "<p>"
                        html += "<span>"+olds['addr']+"</span>&nbsp;"
                        html += "<span>"+olds['village']+"</span>&nbsp;"
                        html += "<span>"+olds['standard']+"</span>&nbsp;"
                        html += "<span>"+olds['area']+"</span>&nbsp;"
                        html += "<span>"+olds['direction']+"</span>&nbsp;"
                        html += "<span>"+olds['elevator']+"电梯</span>&nbsp;"
                    html += "</p>"
                    html += "<p>"
                        html += "<span>"+olds['floor_stand']+"楼层</span>&nbsp;"
                        html += "<span>"+olds['floor']+"层</span>&nbsp;"
                        html += "<span>"+olds['bulid_time']+"年</span>"
                    html += "</p>"
                    html += "<p style='color: red;'>"+olds['money']+"万</p>"
                    html += "<span class='subway'>"+olds['point1']+"</span>&nbsp;"
                    html += "<span class='taxfree'>"+olds['point2']+"</span>&nbsp;"
                        html += "<span class='haskey'>"+olds['point1']+"</span>&nbsp;"
                html += "</div>"
            html += "</div>"
        })
        $("#old_house").append(html)
    },'json')
}


function loadHotOld(){
    $.get('/loadHotold/',function (data) {
        var html = ""
        $.each(data,function (i,obj) {
            var hostolds = JSON.parse(obj.type)
            html += "<div class='row info-content'>"
                html += "<div class='col-md-5 col-sm-5 col-xs-5'>"
                    html += "<img src='/"+hostolds['picture']+"' class='img-responsive'>"
                html += "</div>"
                html += "<div class='col-md-7 col-sm-7 col-xs-7'>"
                    html += "<h4>"+hostolds['describe']+"</h4>"
                    html += "<p>"
                        html += "<span>"+hostolds['floor_stand']+"楼层</span>&nbsp;"
                        html += "<span>"+hostolds['floor']+"层</span>&nbsp;"
                        html += "<span>"+hostolds['bulid_time']+"年</span>"
                    html += "</p>"
                    html += "<p style='color: red;'>"+hostolds['money']+"万</p>"
                html += "</div>"
            html += "</div>"
        })
        $("#show_Hostold").append(html)
    },'json')
}

$(function(){
    //检查登录状态 - check_login()
    check_login();
    loadoldHouse();
    loadHotOld();
});