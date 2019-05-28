function loadPerson(){
    $.get('/loadPerson/',function (data) {
        var html = ""
        $.each(data,function (i,obj) {
            var person = JSON.parse(obj.type)
            html += "<div class='row info-content'>"
                html += "<div class='col-md-5 col-sm-5 col-xs-5'>"
                    html += "<img src='/"+person['photo']+"' class='img-responsive' style='width:80%;height: 300px; '>"
                html += "</div>"
                html += "<div class='col-md-7 col-sm-7 col-xs-7' style='padding: 30px;'>"
                    html += "<h3>"+person['name']+"</h3>"
                    html += "<p>主营模块："+person['address']+"</p>"
                    html += "<p>联系方式："+person['phone']+"</p>"
                    html += "<p>职位: "+person['position']+"</p>"
                    html += "<p>评论："+person['comment']+"</p>"
                    html += "<p style='color: red;font-size: 40px;'>"+person['point']+"</p>"
                html += "</div>"
            html += "</div>"
        })
        $("#person").append(html)
    },'json')
}
function loadHperson(){
    $.get('/loadHperson/',function (data) {
        var html = ""
        $.each(data,function (i,obj) {
            var person = JSON.parse(obj.type)
            html += "<div class='row info-content'>"
                html += "<div class='col-md-5 col-sm-5 col-xs-5'>"
                    html += "<img src='/"+person['photo']+"' class='img-responsive'>"
                html += "</div>"
                html += "<div class='col-md-7 col-sm-7 col-xs-7'>"
                    html += "<h3>"+person['name']+"</h3>"
                    html += "<p>主营模块："+person['address']+"</p>"
                    html += "<p>联系方式："+person['phone']+"</p>"
                    html += "<p>职位: "+person['position']+"</p>"
                html += "</div>"
            html += "</div>"
        })
        $("#show_Hostperson").append(html)
    },'json')
}
$(function(){
    loadPerson();
    loadHperson();
});