/**
 * Created by cyh on 19-3-24.
 */
function checkLog() {
    var uname = $("[name='username']").val()
    var upwd = $("[name='passwd']").val()
    $.ajax({
            url:"/checkLog/",
            type:"post",
            data:{
                uname:uname,
                upwd:upwd,
                csrfmiddlewaretoken:$("[name='csrfmiddlewaretoken']").val()
            },
            async:false,
            dataType:"json",
            success:function (data) {
                $("#log_err").html(data.text)
                if (data.status == 0) {
                    $("#log_err").css("color","red")
                    return false
                }else {
                    return true
                }
            }
        })
}

$(function () {
    $("#frmLogin").submit(function () {
        return checkLog()
    });
})