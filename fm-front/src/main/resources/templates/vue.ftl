<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello ${name}!</title>
    <link href="/css/main.css" rel="stylesheet">
    <#--<script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>-->
    <script src="/js/main.js"></script>
    <script type="text/javascript" src="/js/common/jquery-3.2.1.js"></script>
</head>
<body>
    <h2 class="hello-title">Hello</h2>
    <h2 id="late"></h2>
    <button id="btn">点击</button>
</body>
<script>
    $(function () {
        
        $("#btn").click(
            function () {
                let json = {};
                json.success = true;
                json.msg = 'SUCCESS';

                json = JSON.stringify(json);
                console.log('***json *', json);

                if (typeof(json) == "string") {
                    var data = JSON.parse(json);
                    console.log('****', typeof(data.success))
                };
                $.post(
                        '/postData',
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