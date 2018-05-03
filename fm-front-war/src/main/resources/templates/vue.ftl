<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello ${name}!</title>
    <link href="${baseUrl}/css/main.css" rel="stylesheet">
    <script src="${baseUrl}/js/main.js"></script>
    <script type="text/javascript" src="${baseUrl}/js/common/jquery-3.2.1.js"></script>
</head>
<body>
    <h2 class="hello-title">Hello</h2>
    <h2 id="late"></h2>
    <button id="btn">点击</button>
</body>
<script>
    $(function () {
        const baseUrl = '${baseUrl}';
        $("#btn").click(
            function () {
                $.post(
                        baseUrl + 'postData',
                        {
                            name:'Lucy',
                            age:40
                        },
                        function (data) {
                            $("#late").text(data.name + " , age " + data.age)
                        }

                );
            }
        );
    })
</script>
</html>