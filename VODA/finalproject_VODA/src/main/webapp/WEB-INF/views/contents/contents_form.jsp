<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<!-- contents_form CSS-->
<link rel="stylesheet" type="text/css" href="${path}/resources/css/contents/contents_form.css">


<table style="width: 100%;">
    <tr class="row" id="posterbg">
        <td class="col d-none d-lg-block p-0" style="background: var(--main-bg-color); height: 400px;"></td>
        <td class="p-0" style="width: 1140px;">
            <div class="bg-black grabox image-show" id="image-show">
                <div class="LeftGradient" style="background-image: linear-gradient( to right, var(--main-bg-color) 40%, rgba(14, 8, 39, 0) 100%);"></div>
                <div class="RightGradient" style="background-image: linear-gradient( to left, var(--right-bg-color) 40%, rgba(14, 8, 39, 0) 100%);"></div>
                배경이미지를 등록 해주세요<img id="graposter" src="" class="image-show" alt="..." />
            </div>
        </td>
        <td class="col d-none d-lg-block p-0" style="background: var(--right-bg-color); height: 400px;"></td>
    </tr>
</table>

<!-- <div class="image-show bg-light" id="image-show"></div> -->

<div class="container" id="formbackground">
    <div class="profile" style="box-shadow: 2px 1px 10px 1px rgba(0,0,0,0.1);">
        <img id="preview" src="https://site.groupe-psa.com/content/uploads/sites/9/2016/12/white-background-2-768x450.jpg">
    </div>

    <form class="form">

        <p class="purple" type="프로필 파일 업로드" style="margin-left: 280px;"></p>
        <!-- <label for="profileFile">업로드</label> -->
        <div class="filebox">
            <input type="file" id="profileFile" style="margin-left: 280px; width:750px;" onchange="readURL(this);">
        </div>

        <p class="purple" type="배경 파일 업로드" style="margin-left: 280px;"></p>

        <input type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)" style="margin-left: 280px; width:750px;">

        <div class="fileInput" style="margin-left: 280px;">
            <p type="파일 첨부" class="m-0"></p>
            <p id="fileName" class="m-0"></p>
        </div>

        <table>
            <tr>
                <td style="width: 516px; padding-right: 10px;">
                    <p class="purple" type="왼쪽 배경 컬러 선택"></p>
                    <input type="color" class="form-control form-control-color" id="exampleColorInput" value="#495fe9" title="Choose your color" data-css-var="--main-bg-color">
                </td>
                <td style="width: 516px; padding-left: 10px;">
                    <p class="purple" type="오른쪽 배경 컬러 선택"></p>
                    <input type="color" class="form-control form-control-color" id="exampleColorInput" value="#495fe9" title="Choose your color" data-css-var="--right-bg-color">
                </td>
            </tr>
        </table>

        <p class="purple" type="제목"><input placeholder="컨텐츠의 제목을 작성하세요"></input></p>
        <p class="purple" type="컨텐츠 타입">
            <select class="select">
                <option value="value1">MOVIE</option>
                <option value="value1">TV</option>
                <option value="value2">BOOK</option>
                <option value="value3">WEBTOON</option>
            </select>
        <p class="purple" type="컨텐츠 장르"><input placeholder="컨텐츠의 장르를 작성하세요"></input></p>
        <p class="purple" type="컨텐츠 연도"><input placeholder="컨텐츠의 연도를 작성하세요"></input></p>
        <p class="purple" type="컨텐츠 국적"><input placeholder="컨텐츠의 국적을 작성하세요"></input></p>
        <p class="purple" type="컨텐츠 정보"><input placeholder="컨텐츠 기본정보 러닝타임/연재중/책페이지"></input></p>
        <p class="purple" type="컨텐츠 연령가">
            <select class="select">
                <option value="value1">전체 관람가</option>
                <option value="value1">12세 관람가</option>
                <option value="value2">15세 관람가</option>
                <option value="value3">18세 관람가</option>
            </select>
        <p class="purple" type="컨텐츠 줄거리"></p>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="4"></textarea>

        <p class="purple" type="컨텐츠 등장인물">

         <button id="btnFindProduct" class="btn mt-3 terms-view" type="button" style="background-color: rgb(73,95,233); color: white;">
             컨텐츠 인물 등록 버튼
         </button>
         <div>
             <button type="submit" class="contentssubmit" style="float: right;">컨텐츠 등록</button>
         </div>
    </form>
</div>



<script>
    $('input[type="color"]').on("change", function() {
        document.body.style.setProperty($(this).attr("data-css-var"), this.value);
    });
</script>

<script>
    $('input[type="color"]').on("change", function() {
        document.body.style.setProperty($(this).attr("right-css-var"), this.value);
    });
</script>

<script>
    var submit = document.getElementById('submitButton');
    submit.onclick = showImage; //Submit 버튼 클릭시 이미지 보여주기

    function showImage() {
        var newImage = document.getElementById('image-show').lastElementChild;
        newImage.style.visibility = "visible";

        document.getElementById('image-upload').style.visibility = 'hidden';

        document.getElementById('fileName').textContent = null; //기존 파일 이름 지우기
    }

    function loadFile(input) {
        var file = input.files[0];

        var name = document.getElementById('fileName');
        name.textContent = file.name;

        var newImage = document.createElement("img");
        newImage.setAttribute("class", 'img');
        newImage.setAttribute("id", 'graposter');

        newImage.src = URL.createObjectURL(file);

        // newImage.style.width = "100%";
        // newImage.style.height = "100%";
        // newImage.style.visibility = "visible";   //버튼을 누르기 전까지는 이미지 숨기기
        // newImage.style.objectFit = "contain";

        var container = document.getElementById('image-show');
        container.appendChild(newImage);
    };
</script>

<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('preview').src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
        } else {
            document.getElementById('preview').src = "";
        }
    }
</script>

<script>
    $(document).ready(() => {
        $("#btnFindProduct").on("click", () => {
            let url = "${path}/contents/contents_peoplemodal";
            let status = "left=300px,top=0px,width=850px,height=800px";

            open(url, "", status);
        });
    });
</script>

<div style="height: 5em;">
</div>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>