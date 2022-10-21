<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- Jquery-->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>

<!--BootStrap CSS-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<!--BootStrap JS-->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script> 

<!-- common CSS-->
<link rel="stylesheet" type="text/css" href="../../CSS/Common/headerfooter.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

<style>
/* reset */
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, textarea, blockquote, th, td, input, select, button {
  margin: 0;
  padding: 0; }

fieldset, img {
  border: 0 none; }

dl, ul, ol, menu, li {
  list-style: none; }

blockquote, q {
  quotes: none; }

blockquote:before, blockquote:after, q:before, q:after {
  content: '';
  content: none; }

input, select, textarea, button {
  vertical-align: middle; }

input::-ms-clear {
  display: none; }

button {
  border: 0 none;
  background-color: transparent;
  cursor: pointer; }

button span {
  position: relative; }

body {
  background: #fff; }

body, th, td, input, select, textarea, button {
  font-size: 14px;
  line-height: 1.5;
  color: #000; }

a {
  color: #000;
  text-decoration: none; }

a:active, a:hover {
  text-decoration: underline; }

a:active {
  background-color: transparent; }

address, caption, cite, code, dfn, em, var {
  font-style: normal;
  font-weight: normal; }

header, footer, main, article, section, aside, nav {
  display: block; }

strong {
  font-weight: 600; }


.section_ranking *, ::after, ::before {
  box-sizing: content-box !important; }

/* global */
.direct-link {
  position: absolute;
  top: -1px;
  left: 0;
  z-index: 1000;
  height: 1px; }

/* 바로가기 */
.direct-link a {
  position: absolute;
  top: -999px;
  padding: 5px 10px;
  font-weight: 600;
  color: #fff;
  background: #333;
  text-decoration: none;
  white-space: nowrap; }

.direct-link a:focus {
  top: 0; }

.ir_pm {
  display: block;
  overflow: hidden;
  font-size: 0;
  line-height: 0;
  text-indent: -9999px; }

/* PC용 사용된 이미지내 의미있는 텍스트의 대체텍스트를 제공할때 */
.ir_pm {
  display: block;
  overflow: hidden;
  font-size: 1px;
  line-height: 0;
  color: transparent; }

/* Mobile용 사용된 이미지내 의미있는 텍스트의 대체텍스트를 제공할때 */
.ir_wa {
  display: block;
  overflow: hidden;
  position: relative;
  z-index: -1;
  width: 100%;
  height: 100%; }

/* 중요한 이미지 대체텍스트로 이미지off시에도 대체 텍스트를 보여주고자 할때 */
.ir_caption {
  overflow: hidden;
  width: 1px;
  font-size: 1px;
  line-height: 0;
  text-indent: -9999px; }

/* Table caption에 숨김텍스트를 제공할때 */
.screen_out {
  overflow: hidden;
  position: absolute;
  width: 0;
  height: 0;
  line-height: 0;
  text-indent: -9999px; }

/* 대체텍스트가 아닌 접근성을 위한 숨김텍스트를 제공할때 */
.show {
  display: block; }

.hide {
  display: none; }

/* Common Images */
.ico_movie, .ico_logo {
  display: inline-block;
  overflow: hidden;
  font-size: 0;
  line-height: 0;
  text-indent: -9999px;
  vertical-align: top;
  background: url(https://t1.daumcdn.net/movie/movie2020/pc/ico_movie_220818.png) no-repeat 0 0;
  background-size: 500px auto; }

/* 2022-08-18 수정 */
.thumb_img, .thumb_item {
  background: #EDEEF0 url(https://t1.daumcdn.net/movie/movie2020/pc/ico_noimage.png) no-repeat 50% 50%;
  background-size: 44px 44px; }

/* noImage */
.img_thumb {
  display: block;
  width: 100%;
  vertical-align: top; }

/* 썸네일 */
.thumb_img .bg_img {
  display: block;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 50% 50%; }

/* 공통 스타일 */
.fc_g {
  color: #E92130; }

/* 강조 색상 */
.slide_wrap {
  overflow: hidden; }

/* 슬라이드 감싸는 용도 */
.item_poster .thumb_item:before, .item_news .thumb_img:after, .item_contents .thumb_img:after, .item_movienews .thumb_img:after, .info_poster .thumb_img:before, .item_crewall .thumb_item:after, .item_vodphoto .thumb_img:after, .item_related .thumb_img:before, .item_thumbsub .thumb_item:after, .item_crew .thumb_item:after, .item_mediavod .thumb_img:before, .item_photo .thumb_item:before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  border: 1px solid rgba(0, 0, 0, 0.05);
  border-radius: 8px; }

/* layout */
.os_windows body {
  letter-spacing: -0.05em; }

html, body {
  height: 100%; }

.kakao_wrap {
  position: relative;
  min-width: 1100px;
  height: 100%;
  margin: 0 auto;
  padding: 180px 0 165px 0;
  box-sizing: border-box; }

.kakao_content {
  position: relative;
  min-height: 100%;
  background-image: linear-gradient(to bottom, #fafbfb 0, white 300px); }

.kakao_article {
  width: 1100px;
  min-height: 500px;
  margin: 0 auto;
  padding-bottom: 100px; }

/* 공통 - 더보기(링크 이동) */
.link_more {
  position: absolute;
  top: 0;
  right: 0;
  min-width: 59px;
  height: 32px;
  padding: 0 12px 0 17px;
  border: 1px solid #e4e4e4;
  border-radius: 34px;
  font-weight: 500;
  font-size: 14px;
  line-height: 33px;
  background-color: #fff;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
  color: #000;
  -webkit-transition: all .2s ease-out;
  transition: all .2s ease-out; }

.link_more:hover {
  text-decoration: none;
  border-color: #9A9A9A; }

.link_more .ico_arr {
  width: 7px;
  height: 12px;
  margin: 10px 0 0 15px;
  background-position: -260px -20px; }

/* 공통 - 더보기(하단 리스트) */
.moreview_btn {
  padding-top: 30px;
  border-top: 1px solid #ECEDF1;
  margin-top: 60px;
  text-align: center; }

.link_moreview {
  display: inline-block;
  min-width: 70px;
  height: 44px;
  padding: 0 21px 0 27px;
  border: 1px solid #e4e4e4;
  border-radius: 34px;
  font-weight: 500;
  font-size: 16px;
  line-height: 45px;
  background-color: #fff;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
  color: #000;
  -webkit-transition: all .2s ease-out;
  transition: all .2s ease-out; }

.link_moreview:hover {
  text-decoration: none;
  border-color: #9A9A9A; }

.link_moreview .ico_arr {
  width: 14px;
  height: 8px;
  margin: 18px 0 0 17px;
  background-position: -200px -60px; }

/* 공통 - 타이틀 */
.tit_section {
  font-size: 24px;
  line-height: 28px;
  color: #000; 
  margin-top: 35px;
  margin-bottom: 10px;}

.os_windows .tit_section {
  letter-spacing: -0.06em; }

.tit_section .ico_logo {
  width: 28px;
  height: 28px;
  margin-right: 8px; }

.tit_section .ico_netflix {
  background-position: 0 -320px; }

.tit_section .ico_watcha {
  background-position: -40px -320px; }

.tit_section .ico_wavve {
  background-position: -120px -320px; }

.tit_section .ico_tving {
  background-position: -160px -320px; }

.tit_section .num_score {
  margin-left: 7px;
  color: #98989C; }

.head_section {
  position: relative;}

.head_section:after {
  display: block;
  visibility: hidden;
  height: 0;
  font-size: 0;
  clear: both;
  content: ''; }

.head_section .tit_section {
  float: left; }

.head_section .txt_noti {
  float: left;
  padding: 6px 0 0 15px;
  font-weight: 200;
  font-size: 14px;
  color: #000; }

.head_section .ico_noti {
  width: 16px;
  height: 16px;
  margin: 2px 6px 0 0;
  background-position: -240px -100px; }

.head_section .util_head {
  float: right;
  position: relative; }

.util_head .tab_g {
  margin-top: 2px; }

.util_head .util_calendar {
  margin: 2px 0 0 37px; }

/* 공통 - 관람가 */
.ico_see {
  width: 28px;
  height: 28px;
  background-position: 0 -120px; }

.ico_see.see12 {
  background-position: -40px -120px; }

.ico_see.see15 {
  background-position: -80px -120px; }

.ico_see.see19 {
  background-position: -120px -120px; }

/* 공통 - 예매순위 포스터 */
.item_poster {
  display: block;
  width: 150px; }

.item_poster .thumb_item {
  display: block;
  overflow: hidden;
  position: relative;
  height: 298px;
  border-radius: 5%;
  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  -webkit-transform: translate3d(0, 0, 0);
  -moz-transform: translate3d(0, 0, 0); 
  margin: auto; 
  width: 130px;
  height: 190px; }

.item_poster .thumb_item:before {
  z-index: 2; }

.item_poster .poster_movie {
  position: relative;
  height: 100%; }

.item_poster .poster_movie:before {
  content: '';
  position: absolute;
  z-index: 1;
  top: 0;
  left: 0;
  right: 0;
  height: 60px;
  opacity: 0.2;
  background-image: linear-gradient(to top, rgba(0, 0, 0, 0) 0, black 100%); }

.item_poster .img_thumb {
  position: relative;
  left: 50%;
  width: auto;
  min-width: 100%;
  height: 100%;
  transform: translateX(-50%); }

.item_poster .rank_num {
  position: absolute;
  z-index: 1;
  top: 5px;
  left: 13px;
  font-family: 'SF-UI-Display-Thin', sans-serif;
  font-style: italic;
  font-size: 32px;
  color: #fff;
  text-shadow: 0 0 2px rgba(0, 0, 0, 0.2); }

.item_poster .txt_tag {
  position: absolute;
  z-index: 1;
  top: 15px;
  right: 15px;
  font-size: 0;
  line-height: 0; }

.item_poster .txt_state {
  display: inline-block;
  min-width: 32px;
  height: 28px;
  padding: 0 9px;
  border-radius: 28px;
  font-weight: 600;
  font-size: 13px;
  line-height: 28px;
  vertical-align: top;
  background-color: #fff;
  text-align: center; }

.item_poster .state_dday {
  color: #E92130; }

.item_poster .ico_see {
  top: 15px;
  right: 15px; }

.item_poster .txt_state + .ico_see {
  margin-left: 6px; }

.item_poster .thumb_item .txt_append {
  position: absolute;
  z-index: 2;
  left: 0;
  right: 0;
  bottom: 0;
  padding-bottom: 10px;
  font-weight: 200;
  line-height: 24px;
  color: #fff;
  text-align: center; }

.item_poster .thumb_item .txt_append:before {
  position: absolute;
  z-index: -1;
  left: 0;
  right: 0;
  bottom: 0;
  height: 90px;
  background-image: linear-gradient(to bottom, rgba(13, 12, 23, 0) 0, #0d0c17 100%);
  content: ''; }

.item_poster .thumb_item .txt_num {
  display: inline-block;
  padding: 1px 0 0 5px;
  font-weight: 600;
  font-size: 16px;
  color: #fff;
  vertical-align: top; }

.os_windows .item_poster .thumb_item .txt_num {
  padding-top: 0; }

.item_poster .thumb_item .txt_bar {
  display: inline-block;
  width: 7px;
  height: 15px;
  margin: 4px 5px 0;
  vertical-align: top;
  background-position: -280px -20px; }

.item_poster .poster_info {
  position: absolute;
  z-index: -1;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(26, 25, 28, 0.95);
  opacity: 0;
  -webkit-transition: all .2s ease-out .3s;
  transition: all .2s ease-out .3s; }

.item_poster .link_story {
  display: block;
  display: -webkit-box;
  overflow: hidden;
  /* max-height: 160px; */
  padding: 29px 24px 0;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 8;
  line-height: 20px;
  color: #D4D4D4;
  text-decoration: none; }

.os_windows .item_poster .link_story {
  letter-spacing: -0.06em; }

.item_poster .info_btn {
  display: flex;
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  height: 50px;
  background-color: #000; }

.item_poster .info_btn .link_info {
  flex: 1;
  font-weight: 500;
  line-height: 49px;
  color: #fff;
  text-align: center;
  text-decoration: none; }

.item_poster .info_btn .link_info + .link_info:before {
  content: '';
  position: absolute;
  top: 16px;
  left: 50%;
  height: 16px;
  margin-left: -1px;
  border-left: 2px solid #3C3B3C; }

.item_poster .thumb_item:hover .poster_info {
  opacity: 1;
  z-index: 3; }

.item_poster .thumb_cont {
  padding: 12px 8px 0; 
  margin-left: 10px; }

.item_poster .thumb_cont .tit_item {
  display: block;
  overflow: hidden;
  font-weight: 600;
  font-size: 16px;
  line-height: 21px;
  white-space: nowrap;
  text-overflow: ellipsis; }

.os_windows .item_poster .thumb_cont .tit_item {
  letter-spacing: -0.06em; }

.item_poster .thumb_cont .txt_append {
  display: block;
  padding-top: 3px;
  font-size: 13px;
  line-height: 16px; }

.item_poster .thumb_cont .txt_grade {
  color: black; }

.item_poster .thumb_cont .txt_info {
  display: block;
  padding-top: 7px;
  font-size: 13px;
  line-height: 16px;
  color: #98989C; }

.item_poster .thumb_cont .txt_append + .txt_info {
  padding-top: 3px; }

.item_poster .thumb_cont .info_txt {
  display: inline-block;
  vertical-align: top; }

.item_poster .thumb_cont .info_txt + .info_txt:before {
  content: '';
  display: inline-block;
  width: 2px;
  height: 2px;
  border-radius: 50%;
  margin: 6px 6px 0 3px;
  background-color: #DCDCDF;
  vertical-align: top; }

.item_poster .thumb_cont .txt_num {
  padding-left: 5px; }

.item_poster .info_link {
  display: block;
  height: 100%;
  padding-top: 29px;
  box-sizing: border-box; }

.item_poster .list_info {
  overflow: hidden;
  padding: 0 24px; }

.os_windows .item_poster .list_info {
  letter-spacing: -0.06em; }

.item_poster .list_info dt {
  float: left;
  width: 34px;
  color: #7A7A7A; }

.item_poster .list_info dd {
  overflow: hidden;
  color: #D4D4D4; }

/* 공통 - 콘텐츠 */
.item_contents .thumb_img {
  display: block;
  overflow: hidden;
  position: relative;
  height: 145px;
  border-radius: 8px; }

.item_contents .bg_img {
  display: block;
  height: 100%;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 50% 50%; }

.item_contents .thumb_cont {
  height: 72px;
  margin: 12px 0 -2px 0; }

.item_contents .tit_thumb {
  display: block;
  margin-right: 8px; }

.item_contents .link_txt {
  display: block;
  display: -webkit-box;
  overflow: hidden;
  max-height: 50px;
  font-size: 17px;
  line-height: 25px;
  text-overflow: ellipsis;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  color: #000; }

.os_windows .item_contents .link_txt {
  letter-spacing: -0.06em; }

.item_contents .txt_info {
  display: block;
  overflow: hidden;
  margin-top: 5px;
  font-size: 14px;
  line-height: 16px;
  white-space: nowrap;
  text-overflow: ellipsis;
  color: #98989C; }

.item_contents .ico_by {
  display: inline-block;
  width: 16px;
  height: 16px;
  margin-right: 6px;
  background-position: -80px -160px;
  vertical-align: top; }

/*** 랭킹 ***/
.section_ranking {
  padding-top: 10px; }

.detail_rankinginfo {
  position: relative; }

.detail_rankinginfo + .detail_rankinginfo {
  margin-top: 70px; }

.list_movieranking {
  position: relative;
  margin: 0 -10px;
  padding-top: 12px; }

.list_movieranking:after {
  content: '';
  display: block;
  clear: both; }

.list_movieranking li {
  float: left;
  padding-top: 15px; }

.list_movieranking li:nth-child(-n+4) {
  padding-top: 0; }

.list_movieranking .item_poster {
  padding: 0 0px; }

/* 포스터 */
.info_poster {
  float: left;
  width: 210px;
  height: 308px;
  margin-right: 40px; }

.info_poster .thumb_img {
  display: block;
  overflow: hidden;
  position: relative;
  height: 100%;
  border-radius: 8px; }

.info_poster .thumb_img .bg_img {
  height: 100%; }

.info_poster .thumb_img:before {
  z-index: 2; }

.info_poster .ico_zoom {
  position: absolute;
  bottom: 10px;
  right: 10px;
  width: 28px;
  height: 28px;
  background-position: -220px -40px; }

.info_poster .ico_rerelease {
  position: absolute;
  right: 15px;
  top: 15px;
  min-width: 34px;
  height: 26px;
  padding: 0 7px;
  border: 1px solid #fff;
  background-color: rgba(0, 0, 0, 0.3);
  border-radius: 28px;
  font-weight: 600;
  font-size: 13px;
  line-height: 27px;
  color: #fff;
  text-align: center; }

.os_windows .info_poster .ico_rerelease {
  line-height: 25px;
  letter-spacing: -0.06em; }

.info_poster .ico_netflix {
  position: absolute;
  left: 10px;
  top: 10px;
  width: 28px;
  height: 28px;
  background-position: 0 -400px; }

.info_poster .ico_watcha {
  position: absolute;
  left: 10px;
  top: 10px;
  width: 28px;
  height: 28px;
  background-position: -40px -400px; }

.info_poster .ico_wavve {
  position: absolute;
  left: 10px;
  top: 10px;
  width: 28px;
  height: 28px;
  background-position: -120px -400px; }

.info_poster .ico_tving {
  position: absolute;
  left: 10px;
  top: 10px;
  width: 28px;
  height: 28px;
  background-position: -160px -400px; }

/* 기본정보 */
.info_detail {
  position: relative;
  margin-left: 250px; }

.info_detail:after {
  display: block;
  visibility: hidden;
  height: 0;
  font-size: 0;
  clear: both;
  content: ''; }

.info_detail .detail_tit_fixed {
  display: none;
  position: fixed;
  z-index: 100;
  top: 0;
  left: 0;
  right: 0;
  height: 59px;
  border-bottom: 1px solid #F5F5F5;
  background-color: #fff; }

.info_detail .detail_tit_fixed .inner_tit {
  width: 1100px;
  margin: 0 auto; }

.info_detail .detail_tit_fixed .txt_tit {
  display: inline-block;
  overflow: hidden;
  max-width: 850px;
  padding-top: 17px;
  font-weight: 600;
  font-size: 23px;
  line-height: 29px;
  white-space: nowrap;
  text-overflow: ellipsis;
  vertical-align: top; }

.info_detail .detail_tit_fixed .link_search {
  float: right;
  margin: 20px -6px 0 0; }

.head_fixed .info_detail .detail_tit_fixed {
  display: block; }

.info_detail .detail_tit {
  margin-top: -1px; }

.info_detail .detail_tit .tit_movie .txt_tit {
  font-weight: 600;
  font-size: 30px;
  line-height: 36px;
  color: #000; }

.os_windows .info_detail .detail_tit .tit_movie .txt_tit {
  letter-spacing: -0.08em; }

.info_detail .detail_tit .txt_tag {
  display: inline-block;
  margin-left: 4px;
  font-size: 0;
  line-height: 0;
  vertical-align: top; }

.info_detail .detail_tit .txt_state {
  display: inline-block;
  min-width: 30px;
  height: 26px;
  padding: 0 9px;
  margin: 4px 0 0 10px;
  border: 1px solid #E92130;
  border-radius: 28px;
  font-weight: 600;
  font-size: 13px;
  line-height: 27px;
  background-color: #E92130;
  color: #fff;
  text-align: center; }

.os_windows .info_detail .detail_tit .txt_state {
  line-height: 25px; }

.info_detail .detail_tit .txt_state:first-child {
  margin-left: 0; }

.info_detail .detail_tit .state_dday {
  border-color: #E5E5E5;
  background-color: #fff;
  color: #000; }

.info_detail .detail_tit .state_dday.day1 {
  color: #E92130; }

.info_detail .detail_tit .state_filmfest {
  border-color: rgba(0, 0, 0, 0.1);
  background-color: #fff;
  color: #000; }

.info_detail .tit_movie {
  padding-right: 40px; }

.info_detail .head_origin {
  position: relative;
  padding-right: 20px;
  margin-top: 6px; }

.info_detail .head_origin .txt_name {
  display: block;
  overflow: hidden;
  margin-left: 2px;
  font-size: 16px;
  line-height: 19px;
  color: #000;
  word-break: break-all;
  white-space: nowrap;
  text-overflow: ellipsis; }

.info_detail .head_origin .link_originmore {
  position: absolute;
  top: 0;
  right: 0;
  width: 19px;
  height: 19px;
  background-position: -240px -80px; }

.info_detail .head_origin .tooltip_origin {
  display: none;
  position: absolute;
  z-index: 10;
  right: 0;
  top: 26px;
  width: 528px;
  padding: 12px 14px 13px;
  border: 1px solid #C5C5C5;
  border-radius: 2px;
  background-color: #fff; }

/* POPCORN-2050 수정 */
.info_detail .head_origin .tooltip_origin .txt_tooltip {
  font-size: 16px;
  line-height: 19px; }

.info_detail .head_origin .tooltip_origin .link_close {
  position: absolute;
  right: -1px;
  top: -27px;
  width: 19px;
  height: 19px;
  background-position: -260px -80px; }

.info_detail .origin_open .tooltip_origin {
  display: block; }

.info_detail .detail_cont {
  display: block;
  display: -ms-flexbox;
  display: flex;
  padding: 20px 0 48px;
  align-items: flex-start; }

.info_detail .detail_cont .inner_cont {
  display: table;
  max-width: 60%; }

.info_detail .detail_cont .inner_cont + .inner_cont {
  margin-left: 60px; }

.info_detail .detail_cont .list_cont {
  display: table-row;
  line-height: 27px; }

.os_windows .info_detail .detail_cont .list_cont {
  letter-spacing: -0.06em; }

.info_detail .detail_cont .list_cont dt, .info_detail .detail_cont .list_cont dd {
  display: table-cell;
  font-size: 16px; }

.info_detail .detail_cont .list_cont dt {
  max-width: 100px;
  padding-right: 20px;
  font-weight: normal;
  color: #98989C;
  white-space: nowrap; }

.info_detail .detail_cont .list_cont dd {
  color: #000;
  word-break: break-all;
  word-wrap: break-word; }

.info_detail .detail_cont .link_txt {
  color: #206DDF; }

.info_detail .detail_cont .ico_star {
  width: 13px;
  height: 13px;
  margin: 6px 2px 0 0;
  background-position: -200px -40px; }

.info_detail .detail_cont .inner_cont .tooltip_info {
  position: relative;
  z-index: 1;
  bottom: inherit;
  margin-top: 27px; }

/* 영화상세 - 주요정보 */
.detail_basicinfo .movie_summary {
  float: left;
  width: 800px;
  padding-bottom: 7px; }

/* 공통 - 더보기(내용) */
.link_moredesc {
  display: inline-block;
  font-size: 15px;
  line-height: 26px;
  vertical-align: top; }

.link_moredesc .ico_arrow {
  width: 12px;
  height: 7px;
  margin: 9px 0 0 6px;
  background-position: -260px -40px; }

/* 줄거리 */
.info_desc {
  padding-top: 48px;
  font-size: 16px; }

.info_desc .desc_cont {
  display: block;
  display: -webkit-box;
  overflow: hidden;
  max-height: 104px;
  line-height: 26px;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 4; }

.os_windows .info_desc .desc_cont {
  letter-spacing: -0.06em; }

.info_desc .making_note {
  margin-top: 50px;
  padding-top: 45px;
  border-top: 1px solid #ECEDF1; }

.info_desc .desc_cont.expand {
  max-height: none;
  -webkit-line-clamp: initial; }

.info_desc strong {
  display: block;
  font-weight: 600; }

.info_desc .link_moredesc {
  margin-top: 12px; }

.info_desc .desc_cont.expand + .link_moredesc {
  display: none; }

/* 일간순위 */
.detail_graphinfo .tit_section {
  border-bottom: 0 none;
  margin-bottom: 0; }

.detail_graphinfo .txt_help {
  position: absolute;
  right: 0;
  top: 82px;
  font-size: 14px;
  color: #000; }

.detail_graphinfo .txt_help .fc_g {
  font-weight: 600; }

/* 공통 - 영화상세 썸네일 리스트 */
.list_thumbsub:after {
  display: block;
  visibility: hidden;
  height: 0;
  font-size: 0;
  clear: both;
  content: ''; }

.list_thumbsub li {
  float: left; }

.list_thumbsub li + li {
  margin-left: 34px; }

/* 공통 */
.item_thumbsub {
  width: 128px; }

.item_thumbsub .thumb_item {
  display: block;
  overflow: hidden;
  position: relative;
  width: 100%;
  height: 188px;
  border-radius: 8px; }

.item_thumbsub .rank_num {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 60px;
  padding: 4px 0 0 15px;
  font-weight: 300;
  font-family: 'SF-UI-Display-Thin', sans-serif;
  font-style: italic;
  font-size: 34px;
  color: #fff;
  text-shadow: 0 0 2px rgba(250, 44, 44, 0.2);
  background-image: linear-gradient(to top, rgba(0, 0, 0, 0) 0, rgba(0, 0, 0, 0.2) 100%);
  box-sizing: border-box; }

.item_thumbsub .img_thumb {
  height: 100%; }

.item_thumbsub .thumb_cont {
  display: block;
  padding-top: 11px;
  margin-bottom: -4px; }

.os_windows .item_thumbsub .thumb_cont {
  letter-spacing: -0.06em; }

.item_thumbsub .tit_item {
  display: block;
  overflow: hidden;
  font-weight: normal;
  font-size: 16px;
  line-height: 19px;
  white-space: nowrap;
  text-overflow: ellipsis;
  color: #000; }

.item_thumbsub .tit_item .link_tit {
  color: #000; }

.item_thumbsub .txt_info, .item_thumbsub .link_txt {
  display: block;
  overflow: hidden;
  padding-top: 2px;
  font-size: 15px;
  line-height: 19px;
  white-space: nowrap;
  text-overflow: ellipsis; }

.item_thumbsub .txt_info {
  color: #98989C; }

.item_thumbsub .link_txt {
  color: #206DDF; }

/* 실시간 박스오피스 */
.detail_boxofficeinfo .link_more {
  top: 70px; }

/* 영화상세 - 출연/제작 */
/* 감독,주연,출연 */
.detail_crewinfo .list_crew {
  overflow: hidden;
  margin: -30px 0 0 -25px; }

.detail_crewinfo .list_crew li {
  float: left;
  width: 350px;
  margin: 30px 0 0 25px; }

/* 공통 */
.item_crew:after {
  display: block;
  visibility: hidden;
  height: 0;
  font-size: 0;
  clear: both;
  content: ''; }

.item_crew .thumb_item {
  overflow: hidden;
  float: left;
  position: relative;
  width: 116px;
  height: 168px;
  margin-right: 30px;
  border-radius: 8px; }

.item_crew .thumb_cont {
  overflow: hidden; }

.item_crew .tit_item {
  display: block;
  margin-top: 6px;
  font-weight: 400;
  font-size: 18px;
  line-height: 21px;
  color: #206DDF; }

.os_windows .item_crew .tit_item {
  letter-spacing: -0.06em; }

.item_crew .tit_item .link_txt {
  color: #206DDF; }

.item_crew .subtit_item {
  display: block;
  margin-top: 5px;
  font-size: 16px;
  line-height: 18px;
  color: #000; }

.os_windows .item_crew .subtit_item {
  letter-spacing: -0.06em; }

.item_crew .txt_info {
  display: block;
  margin-top: 9px;
  font-size: 15px;
  line-height: 21px;
  color: #98989C; }

/* 청소년 이용불가 */
.frame_player .bg_adult, .item_mediavod .bg_adult, .item_photo .bg_adult, .photoview_layer .view_photo .bg_adult {
  display: inline-block;
  position: absolute;
  z-index: 1;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  font-size: 22px;
  color: #fff;
  letter-spacing: -0.025em;
  text-align: center;
  vertical-align: middle;
  background-color: #121212; }

.bg_adult:after {
  content: '';
  display: inline-block;
  vertical-align: middle;
  height: 100%; }

.frame_player .bg_adult {
  font-size: 24px; }

.item_mediavod .bg_adult ~ .ico_play, .item_mediavod .bg_adult ~ .num_vod {
  display: none; }

.photoview_layer .item_photolist .bg_adult {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  font-size: 0;
  line-height: 0;
  color: #fff;
  text-align: right;
  background-color: white; }

/* 서치바 CSS */
.search-box {
  position : absolute;
  margin-left: 10px;
  /*top : 50px;
  left : 550px;  */
  transform : translate(0%, 0%);
  background : rgb(235,236,246);
  height : 40px;
  border-radius : 40px;
  padding : 10px; }

.search-btn {
  color : white;
  float : right;
  width : 40px;
  height : 40px;
  border-radius: 50%;
  background : rgb(73,95,233);
  display:flex;
  justify-content: center;
  align-items: center;
  text-decoration: none;
  transition: 0.4s; }

.search-txt {
  border:none;
  background:none;
  outline:none;
  float:left;
  padding:0;
  color: black;
  font-size:16px;
  transition : 1s;
  line-height: 40px;
  width : 0px; }

.search-box:hover > .search-txt {
  width: 240px;
  padding: 0px 20px; }
  
.search-box:hover > .search-btn {
  background:rgb(235,236,246); }
  
/* 페이지 네이션 시작 */
#wrapper {
margin: 0 auto;
display: block;
width: 960px;
}

.page-header {
text-align: center;
font-size: 1.5em;
font-weight: normal;
border-bottom: 1px solid #ddd;
margin: 30px 0
}

#pagination {
margin: 0;
margin-top: 70px;
padding: 0;
text-align: center
}

#pagination li {
display: inline
}

#pagination li a {
display: inline-block;
text-decoration: none;
padding: 5px 10px;
color: #000
}

/* Active and Hoverable Pagination */
#pagination li a {
border-radius: 5px;
-webkit-transition: background-color 0.3s;
transition: background-color 0.3s
}
#pagination li a.active {
background-color: rgb(73,95,233);
color: #fff
}
#pagination li a:hover:not(.active) {
background-color: #ddd;
} 

/* border-pagination */
.b-pagination-outer {
width: 100%;
margin: 0 auto;
text-align: center;
overflow: hidden;
display: flex
}

#border-pagination {
margin: 0 auto;
padding: 0;
text-align: center
}

#border-pagination li {
display: inline;
}

#border-pagination li a {
display: block;
text-decoration: none;
color: #000;
padding: 5px 10px;
border: 1px solid #ddd;
float: left;
}

#border-pagination li a {
-webkit-transition: background-color 0.4s;
transition: background-color 0.4s
}

#border-pagination li a.active {
background-color: #4caf50;
color: #fff;
}

#border-pagination li a:hover:not(.active) {
background: #ddd;
}  
  
</style>
</head>

<body>
    <div class="container p-0" style="width:600px; height: 40px;">
	 <form>
    	<div class="search-box p-0">
            <input class="search-txt" type="text" name="" >
	       <a class="search-btn">
	         <i class="fas fa-search" style="color: white;"></i>
	       </a>
        </div>
	  </form>	    
    </div>
    <div class="container p-0" style="width:600px;">
    <div class="section_ranking">
        <div class="box_ranking" data-tiara-layer="list">
            <ol class="list_movieranking m-0">
            	<c:forEach var="people" items="${ list }">
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F36f22dea0e0a9e0e626c549ce689558160c46ed4"
                                    class="img_thumb" alt="${ people.people_name }">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=147615" class="link_txt"
                                    data-tiara-layer="moviename">${ people.people_name }</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt"><span class="txt_grade">${ people.people_job }</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                </c:forEach>
         <!--   <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Fe3c34791317eefee49caec94c87a3b1bb24b0e8d"
                                    class="img_thumb" alt="늑대사냥">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=155115" class="link_txt"
                                    data-tiara-layer="moviename">늑대사냥</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">9.0</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Ff5c62530ef4f57a469bdb51cc065f2c47503f9d8"
                                    class="img_thumb" alt="육사오(6/45)">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 5;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=142869" class="link_txt"
                                    data-tiara-layer="moviename">육사오(6/45)</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">8.4</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F4eb261668eb43a125d0adc250a89adb48216c005"
                                    class="img_thumb" alt="탑건: 매버릭">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=114329" class="link_txt"
                                    data-tiara-layer="moviename">탑건: 매버릭</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">9.4</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <br>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F292bb497493d7d227ecbf994742c1ff9f90f10bb"
                                    class="img_thumb" alt="인생은 아름다워">

                                <span class="txt_tag">
                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                </span>
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=133709" class="link_txt"
                                    data-tiara-layer="moviename">인생은 아름다워</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">8.6</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3673a8a0c5ff4f5c8c25cc959fd6985b1558662957684"
                                    class="img_thumb" alt="알라딘">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=115601" class="link_txt"
                                    data-tiara-layer="moviename">알라딘</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">8.4</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F252b6d50e59e82a0d34a50c5d99708f5d8b14134"
                                    class="img_thumb" alt="극장판 엄마 까투리: 도시로 간 까투리 가족">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=162471" class="link_txt"
                                    data-tiara-layer="moviename">극장판 엄마 까투리: 도시로 간 까투리 가족</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">8.6</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F360edc32c521d7536c31e167cfd3cf5f3fe4bc74"
                                    class="img_thumb" alt="인생은 뷰티풀: 비타돌체">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=163053" class="link_txt"
                                    data-tiara-layer="moviename">인생은 뷰티풀: 비타돌체</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">9.7</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <br>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F292bb497493d7d227ecbf994742c1ff9f90f10bb"
                                    class="img_thumb" alt="인생은 아름다워">

                                <span class="txt_tag">
                                    <span class="ico_movie ico_see see12">12세이상관람가</span>
                                </span>
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=133709" class="link_txt"
                                    data-tiara-layer="moviename">인생은 아름다워</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">8.6</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F3673a8a0c5ff4f5c8c25cc959fd6985b1558662957684"
                                    class="img_thumb" alt="알라딘">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=115601" class="link_txt"
                                    data-tiara-layer="moviename">알라딘</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">8.4</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F252b6d50e59e82a0d34a50c5d99708f5d8b14134"
                                    class="img_thumb" alt="극장판 엄마 까투리: 도시로 간 까투리 가족">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=162471" class="link_txt"
                                    data-tiara-layer="moviename">극장판 엄마 까투리: 도시로 간 까투리 가족</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">8.6</span></span>
                            </span>
                        </div>
                    </div>
                </li>
                <li class="item">
                    <div class="item_poster">
                        <div class="thumb_item">
                            <div class="poster_movie" style="position: absolute;">
                                <img src="https://img1.daumcdn.net/thumb/C408x596/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2F360edc32c521d7536c31e167cfd3cf5f3fe4bc74"
                                    class="img_thumb" alt="인생은 뷰티풀: 비타돌체">
                            </div>
                            <div class="mx-2 my-1" style="position: absolute; z-index: 2;">
                                <input type="checkbox" style="width: 17px; height: 17px;">
                            </div>
                        </div>
                        <div class="thumb_cont">
                            <strong class="tit_item">
                                <a href="/moviedb/main?movieId=163053" class="link_txt"
                                    data-tiara-layer="moviename">인생은 뷰티풀: 비타돌체</a>
                            </strong>
                            <span class="txt_append">
                                <span class="info_txt">평점<span class="txt_grade">9.7</span></span>
                            </span>
                        </div>
                    </div>
                </li> -->
            </ol>
            
             <!--Active and Hoverable Pagination-->
	        <ul id="pagination">
	            <li><a href="${ path }/contents/contents_movie?page=1">«</a></li>
	            
	            <!--  10개 페이지 목록 -->
				<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
					<c:if test="${ status.current == pageInfo.currentPage }">
						<li><a class="active">${ status.current }</a></li>
					</c:if>
					<c:if test="${ status.current != pageInfo.currentPage }">
						<li><a href="${ path }/contents/contents_movie?page=${ status.current }">${ status.current }</a></li>
					</c:if>
				</c:forEach>
	            
	            <li><a href="${ path }/contents/contents_movie?page=${ pageInfo.maxPage }">»</a></li>
	        </ul>
        </div>
    </div>
</div>

<script>
$(document).ready(() => {
	$(".search-btn").on("click", () => {

		var searchVal = $(".search-txt").val();
		
		location.href="${ path }/contents/contents_peoplesearch?keyword="+searchVal+"";
	});
 });
</script> 