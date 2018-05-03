<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spring Boot Hello World Example with FreeMarker</title>
    <link href="${baseUrl}/css/main.css" rel="stylesheet">
    <script type="text/javascript" src="${baseUrl}/js/common/jquery-3.2.1.js"></script>
    <script>
        $(function () {
            $.get(
                '/data',
                function(data){
                    const name = data.name;
                    const age = data.age;
                    $('#name').text(name);
                    $('#age').text(age);
                },
                "json"
            );
        })
    </script>
</head>
<body>
    <h2 class="hello-title">我的名字叫：</h2><h3 id="name"></h3>
    <h2 class="hello-title">我的年龄：</h2><h3 id="age"></h3>
    <script src="${baseUrl}/js/main.js"></script>
</body>
</html>