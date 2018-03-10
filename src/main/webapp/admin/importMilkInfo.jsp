<%--
  Created by IntelliJ IDEA.
  User: bearer
  Date: 18-3-8
  Time: 下午5:39
  用来做批量上传导入处理
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../assets/jquery-3.3.1.min.js"></script>

    <title>导入奶粉信息</title>
</head>
<body>

<form id="formData" method="post" enctype="multipart/form-data">
    <input type="file" id="file" name="file">
    <input type="submit">
</form>
</body>
<script>
    $("form#formData").submit(function (e) {
        e.preventDefault();
        /*var formData = new FormData($("#formData"));*/
        var formData = new FormData(this);
        console.log("the value of this is:"+this);
        console.log("the value of jquery formData is:"+$("#formData"));
        console.log("the value of formData is:"+formData);
        $.ajax({
            url: "/admin/registCertificate/uploadMilkInfo",
            type: 'POST',
            data: formData,
            beforeSend: function () {
                if(!checkFile($("#file").val())){
                    alert("请上传文件");
                }
            },
            success: function (data) {
                console.log(data);
            },
            error: function (xhr, ajaxptions, thrownError) {
                console.log(xhr.status);
                console.log(xhr.responseText);
                console.log(thrownError);
            },
            cache:false,
            contentType:false,
            processData:false
        });
    });

    function checkFile(string) {
        if(string == null || string=="")
            return false;
        else return true;
    }

</script>

</html>
