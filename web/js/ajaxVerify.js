/*
/!**
 * Created by Maicius on 2017/3/13.
 *!/
$(function() {
    $('#username').onblur(function(){
        var phone_num = document.getElementById("username").value();
        var ajaxRequest;
        if(window.XMLHttpRequest){
            ajaxRequest = new XMLHttpRequest();
        } else if(window.activeXObject){
            ajaxRequest = new activeXObject("Microsoft.XMLHTTP");
        }
        alert("Ajax success");
        if(ajaxRequest){
            ajaxRequest.onreadystatechange = function(user){
                if(ajaxRequest.readyState == 4 && ajaxRequest.status == 200){
                    alert("Ajax success Return");
                    var msg = ajaxRequest.responseText;

                    if(msg == ""){
                        document.getElementById("login_tip").style.color = "red";
                        document.getElementById("login_tip").innerHTML = "该用户不存在";
                    }else{
                        document.getElementById("login_tip").innerHTML="欢迎您，"+user.user_name;
                        document.getElementById("login_tip").style.color = "black";
                    }
                }
            }
            ajaxRequest.open("get", "/userVerify?phone_num=" + phone_num, true);
            ajaxRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            ajaxRequest.send();
        }
    })

    });*/
