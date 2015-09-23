<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href='https://fonts.googleapis.com/css?family=Montserrat:700' rel='stylesheet' type='text/css'>
<script type="text/javascript">
  WebFontConfig = {
    custom: {
        families: ['Nanum Gothic'],
        urls: ['http://fonts.googleapis.com/earlyaccess/nanumgothic.css']
    }
  };
  (function() {
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
      '://ajax.googleapis.com/ajax/libs/webfont/1.4.10/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })(); 
 </script>

<!-- Header Component -->
<header id="main_header">
	<nav id="main_gnb"> 
	  <div id="menuTitleBox" class="skew50">
  	    <div class="un_skew50">
  		  <div class="title"><a class="main" href="<%=request.getContextPath() %>/index.jsp">YTC</a></div> 
  		</div>
	  </div>
	  <input id="select1" name="radioMenu" type="radio" class="openInput" checked />
<!-- 	  <label for="select1" class="openBtn headerBtn">Open Menu</label> -->
	  <input id="select2" name="radioMenu" type="radio" class="closeInput" />
<!-- 	  <label for="select2" class="closeBtn headerBtn">Close Menu</label> -->
	  <nav id="menuListBox" class="skew50">
	    <ul id="mainMenu">
	 	  <li class="menu1"><span><a class="main" href="<%=request.getContextPath()%>/introduce.view">학교소개</a></span></li> 	
	 	  <li class="menu2"><span><a class="main" href="<%=request.getContextPath()%>/learning.view">교육과정</a></span></li> 	
	 	  <li class="menu3"><span><a class="main" href="<%=request.getContextPath()%>/gallery.view">갤러리</a></span></li> 	
	 	</ul> 
	    <ul id="sideMenu">
	 	  <li><span><a class="main" href="<%=request.getContextPath() %>/AnnmntList.do">공지사항</a></span></li> 	
	 	  <li><span><a class="main" href="<%=request.getContextPath() %>/BoardList.do">Q/A</a></span></li> 	
	 	</ul> 
	  </nav>
	</nav>
</header>