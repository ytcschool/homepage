<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- Header Component -->
<header id="main_header">
	<hgroup id="title">
		<h3>Header</h3>	
	</hgroup>

	<nav id="main_gnb"> 
	  <div id="menuTitleBox" class="skew50">
  	    <div class="un_skew50">
  		  <div class="title"><a class="main" href="<%=request.getContextPath() %>/index.jsp">YTC</a></div> 
  		</div>
	  </div>
	  <input id="select1" name="radioMenu" type="radio" class="openInput" checked />
	  <label for="select1" class="openBtn headerBtn">Open Menu</label>
	  <input id="select2" name="radioMenu" type="radio" class="closeInput" />
	  <label for="select2" class="closeBtn headerBtn">Close Menu</label>
	  <nav id="menuListBox" class="skew50">
	    <ul id="mainMenu">
	 	  <li class="menu1"><span><a class="main" href="#">학교소개</a></span></li> 	
	 	  <li class="menu2"><span><a class="main" href="#">교육과정</a></span></li> 	
	 	  <li class="menu3"><span><a class="main" href="#">커뮤니티</a></span></li> 	
	 	</ul> 
	    <ul id="sideMenu">
	 	  <li><span><a class="main" href="#">공지사항</a></span></li> 	
	 	  <li><span><a class="main" href="<%=request.getContextPath() %>/BoardList.do">Q/A</a></span></li> 	
	 	</ul> 
	  </nav>
	</nav>
</header>