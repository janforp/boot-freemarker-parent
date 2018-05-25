<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>多图上传</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
    <script type="text/javascript" src="/js/common/jquery-3.2.1.js"></script>
</head>
<body>

<h4>步骤</h4>
<h3>1.type=file上传按钮隐藏，通过美化的按钮触发该按钮</h3>
<h3>2.通过FileReader图片选择的图片，先展示预览的</h3>
<h3>3.预览图片中的src = 'base64'格式的</h3>
<h3>4.上传的时候只要把图片的 base64 传给后台即可</h3>
<h3>5.后台就像接受普通字符串参数一样接收这些图片的base64即可</h3>
<h3>6.base64格式可以转换为 MultipartFile 然后再上传到服务器，或者直接把 base64 转换为图片即可</h3>

<!--用于存 base64-->
<form id="picForm"></form>
<div class="dialog" style="display: block;">
    <div class="mask"></div>
    <div class="dialog-item">
        <div class="am-flex" style="justify-content: space-between;">
            <span class="am-ft-16 ft-black" onclick="cancel()">取消</span>
            <span class="ft-black" style="font-size: 18px;">写评论</span>
            <span class="am-ft-16 default"  id="sendBtn" onclick="submitComment()">发送</span>
            <!--default在可以发送时增加active类-->
        </div>
        <textarea rows="3"  style="width: 100%;" autofocus id="textareaIn"></textarea>
        <ul class="am-flex" id="uploadUl">
            <li id="uploadBtn">
                <a href="#"  class="add-btn" onclick="clickUploadInput()"></a>
            </li>
        </ul>
        <input id="fileUpload" style="display: none;height: 0" name="file" type="file" accept="image/*" multiple onchange="previewUploadImage()" value="上传"/>
    </div>
</div>
<script>

    $(function () {

    })

    /**
     * 点击上传图片按钮
     */
    function clickUploadInput() {

        $("#fileUpload").click();

    }

    /**
     * 先不上传，先预览出来
     */
    function previewUploadImage() {
        console.log('有图片添加到了上传按钮');
        const files = $("#fileUpload")[0].files;
        const len = files.length;
        console.log('文件数量 ：', len);
        //判断浏览器是否支持 FileReader
        console.log('window.FileReader : ' + window.FileReader);
        if (window.FileReader) {
            //循环处理本次的图片
            for (let j=0; j<len; j++) {
                const img = files[j];
                console.log('第' + j + "个图片：", img);
                const reader = new FileReader();
                reader.readAsDataURL(img);
                reader.onload = function (e) {
                    const randomId = new Date().getTime().toString();
                    const base64 = e.target.result;
                    console.log('第' + j + "个图片的 base64：", base64);
                    //生成图片li， prepend进ul
                    const imgLi = "<li style='margin-right: 10px;' class='imgList'><img src='"+ base64 + "' width='100%' height='83px'/> <i id='"+ randomId +"' class='icon-close' onclick='removeImage(this)'></i> </li>";
                    $("#uploadUl").prepend(imgLi);
                    //生成用于传到后台的 form input
                    const formInput = "<input type='hidden' value='"+base64 +"' class='"+ randomId + "'/>";
                    $("#picForm").append(formInput);
                    $("#fileUpload").eq(0).attr('value', new Date().getTime())
                }
            }
        }else {
           alert("请升级")
        }
    }
</script>
</body>
</html>
