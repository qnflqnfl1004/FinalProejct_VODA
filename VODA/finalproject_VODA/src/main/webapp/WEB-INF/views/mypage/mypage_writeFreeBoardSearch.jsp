<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>


    <!-- my CSS -->
    <link rel="stylesheet" href="${path}/resources/css/mypage/mypage_main.css">
	
	<style>
		/* pagination */
        #pagination {
            margin: 0;
            margin-top: 20px;
            padding: 0;
            text-align: center;

        }

        #pagination li {
            display: inline
        }

        #pagination li a {
            display: inline-block;
            text-decoration: none;
            padding: 3px 7px;
            color: #000000;
            font-size: 14.45px;
        }

        /* Active and Hoverable Pagination */
        #pagination li a {
            border-radius: 5px;
            -webkit-transition: background-color 0.3s;
            transition: background-color 0.3s
        }

        #pagination li a.active {
            background-color: rgb(73, 95, 233);
            color: #fff
        }

        #pagination li a:hover:not(.active) {
            background-color: #ddd;
        }
        
        .btn {

            transition: background 0.2s ease-in-out,
                color 0.2s ease-in-out;
            /* 패딩은 주석하쇼 */
            padding: 1px 0.38rem;


        }
        
        .btn-greyc {
            background-color: rgb(235, 236, 240);
            border: rgb(235, 236, 240);
            color: #000000;

        }

        .btn-greyc:hover {
            background-color: #c3c3c4b7 !important;
            border-color: #c3c3c4b7 !important;
            color: #000000 !important;



        }
        
        .form-control1 {
            display: block;
            height: 27.8px;
            padding: 0.2rem 0.7rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;

        }
        
	</style>
	
    <div class="container p-0">
        <div class="row">
            <!-- 왼쪽 사이드메뉴 -->
            <div class="col-sm-2">
                 <jsp:include page="/WEB-INF/views/mypage/mypage_sideMenu.jsp"/>
            </div>

            <!-- 오른쪽 컨텐츠 -->
            <div class="col-sm-10">
                <!-- 컨테이너 -->
                <div class="container">
      
                    <!-- 첫번째 행 -->
                    <div class="row">
                        <div class="col-sm-12" style="margin-top: 40px;">
                            <form style="margin-bottom: 3px;">
                                <h5 style="font-weight: 600;" >자유게시글 조회</h5>
                                <hr>
                            </form>
                        </div>
                    </div>


                    <!-- 두번째 행 -->
                    
                    <div class="">
                        <table class="table table-hover boardtable">
                            <thead>
                                <tr style="text-align: center">
                                    <th id="th" style="width: 5%;">No.</th>
                                    <th id="th" style="width: 55%;">Subject</th>
                                    <th id="th" style="width: 15%;">Date</th>
                                    <th id="th" style="width: 10%;">Hit</th>
                                </tr>
                            </thead>
            
                            <tbody>
                            	<c:forEach var="board" items="${ freeBoardList }">
                            		<tr style="text-align: center">
                                    <td id="td">${ board.bno }</td>
                                    <td id="td" style="text-align: left;">
                                    	<a href="${ path }/board/free_board_detail?no=${ board.bno }">
											${ board.btitle }
										</a>
                                    </td>
                                    <td id="td"><fmt:formatDate value="${ board.bcreatedate }" type="date"></fmt:formatDate></td>
                                    <td id="td">${ board.bview }</td>
                                </tr>
                            	</c:forEach>
                            </tbody>
            
                        </table>
                    </div>
                        
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-4">
                            <ul id="pagination">
				            	<!-- 맨 처음으로 -->
				                <li><a href="${ path }/mypage/writeFreeBoardSearch?page=1&searchType=${searchType}&searchVal=${searchVal}">«</a></li>
				                
				                <!-- 이전 페이지로 -->
				                <li><a href="${ path }/mypage/writeFreeBoardSearch?page=${ pageInfo.prevPage }&searchType=${searchType}&searchVal=${searchVal}">‹</a></li>
				                
								<!--  10개 페이지 목록 -->
								<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" varStatus="status">
									<c:if test="${ status.current == pageInfo.currentPage }">
										<li><a class="active">${ status.current }</a></li>
									</c:if>
									
									<c:if test="${ status.current != pageInfo.currentPage }">
				                		<li><a href="${ path }/mypage/writeFreeBoardSearch?page=${ status.current }&searchType=${searchType}&searchVal=${searchVal}">${ status.current }</a></li>
									</c:if>
								</c:forEach>
								
								<!-- 다음 페이지로 -->
									<li><a href="${ path }/mypage/writeFreeBoardSearch?page=${ pageInfo.nextPage }&searchType=${searchType}&searchVal=${searchVal}">›</a></li>  
								<!-- 맨 끝 페이지로 -->
					                <li><a href="${ path }/mypage/writeFreeBoardSearch?page=${ pageInfo.maxPage }&searchType=${searchType}&searchVal=${searchVal}">»</a></li>
				            </ul>
                        </div>
            
                        <div class="col-4 text-right">
                            <button class="btn btn-greyc text-nowrap" style="box-shadow: rgb(0 0 0 / 30%) 0px 0px 4px 0px;"><img
                    src="${path}/resources/img/community/edit.png" onclick="location.href='${path}/board/free_board_crud'" style="height: 20px;"></button>
                        </div>
                    </div>
					
					<div class="search1 row my-4">
						<div class="col-6 row">
						    <div class="col-3 mr-4">
						        <select id="searchType" name="searchType" class="form-control1" style="font-size: 14.45px; ">
							        <option value="title" selected>제목</option>
							        <option value="title">내용</option>
							        <option value="title">제목+내용</option>
						    	</select>
							</div>
					
							<div class="col-8 pl-0">
						    	<div class="input-group">
						        	<input id="searchVal" type="text" class="form-control1" style="font-size: 14.45px;">
									<span class="input-group-btn">
							    		<button id="searchBtn" class="btn btn-greyc text-nowrap" style="box-shadow: rgb(0 0 0 / 30%) 0px 0px 4px 0px;">
							    			<img src="${path}/resources/img/community/search.png" style="height: 16px;">
										</button>
						            </span>
						         </div>
						    </div>
					    </div>
					</div>
      				
                </div>
                <!-- 컨테이너 끝 -->
            </div>
            <!-- 오른쪽 그리드 끝 -->
        </div>
    </div>
    <!-- 내용 전체 컨테이너 끝 -->
<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
<script>
	$(document).ready(() => {
		$("#searchBtn").on("click", () => {
			var searchType = $("#searchType").val();
			var searchVal = $("#searchVal").val();
			
			location.href="${path}/mypage/writeFreeBoardSearch?searchType=" + searchType + "&searchVal=" + searchVal;
		});
	});
</script>