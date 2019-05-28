
/**
 * Created by cyh on 19-3-24.
 */
// 验证用户名是否符合要求
function checkUsername() {
    var username = $("[name='username']").val()
    var regUser = /^[a-zA-Z][a-zA-Z]+/
    window.flag = false
    if (regUser.test(username)){
        // 验证用户名是否存在
        $.ajax({
            url:"/checkUser/",
            type:"post",
            data:{
                uname:username,
                csrfmiddlewaretoken:$("[name='csrfmiddlewaretoken']").val()
            },
            async:false,
            dataType:"json",
            success:function (data) {
                $("#user_err").html(data.text)
                if (data.status == 1) {
                    window.flag = true
                }else {
                    $("#user_err").css("color","red")
                    window.flag = false
                }
            }
        })
    } else{
        $("#user_err").html("用户名不符合要求")
        $("#user_err").css("color","red")
        window.flag = false
    }
    return window.flag
}

// 检查邮箱格式是否正确
function checkEmail() {
    var regEmail = /^[a-z0-9][\w\.\-]*@[a-z0-9\-]+(\.[a-z]{2,5}){1,2}$/;
    var email = $("[name='email']").val()
    if(regEmail.test(email)){
        $("#email_err").html("")
        return true
    }else {
        $("#email_err").html("邮箱格式不对")
        $("#email_err").css("color","red")
        return false
    }
}
// 检查密码是否符合要求
function checkPasswd() {
    var passwd = $("[name='passwd']").val()
    var regPasswd = /^\w{6,10}$/
    if(regPasswd.test(passwd)){
        $("#passwd_err").html("")
        return true
    }else {
        $("#passwd_err").html("密码不符合要求")
        $("#passwd_err").css("color","red")
        return false
    }
}
// 检查两次密码是否输入一致
function checkCpasswd() {
    var passwd = $("[name='passwd']").val()
    var repasswd = $("[name='repasswd']").val()
    if (passwd != repasswd) {
        $("#cpasswd_err").html("两次输入密码不一致")
        $("#cpasswd_err").css("color","red")
        return false
    }else {
        $("#cpasswd_err").html("")
        return true
    }
}
/**
 * DOM树加载完毕时要执行的操作
 * 包含初始化的行为操作 如：事件的绑定
 * */
$(function () {
    $("[name='username']").blur(function () {
        checkUsername()
    })

    $("[name='email']").blur(function () {
        checkEmail()
    });

    $("[name='passwd']").blur(function () {
        checkPasswd()
    });

    $("[name='repasswd']").blur(function () {
        checkCpasswd()
    });

    $("#frmRegister").submit(function () {
        return checkUsername() && checkEmail() && checkPasswd() && checkCpasswd();
    });
})