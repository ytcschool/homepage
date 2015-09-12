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
  		  <div class="title">CSS3 TRANSITION MENU</div> 
  		</div>
	  </div>
	  <input id="select1" name="radioMenu" type="radio" class="openInput" checked />
	  <label for="select1" class="openBtn">Open Menu</label>
	  <input id="select2" name="radioMenu" type="radio" class="closeInput" />
	  <label for="select2" class="closeBtn">Close Menu</label>
	  <nav id="menuListBox" class="skew50">
	    <ul id="mainMenu">
	 	  <li class="menu1"><span><a href="#">Book</a></span></li> 	
	 	  <li class="menu2"><span><a href="#">Fashion</a></span></li> 	
	 	  <li class="menu3"><span><a href="#">Nature</a></span></li> 	
	 	</ul> 
	    <ul id="sideMenu">
	 	  <li><span><a href="#">About</a></span></li> 	
	 	  <li><span><a href="#">Services</a></span></li> 	
	 	</ul> 
	  </nav>
	</nav>

	<nav id="main_lnb">
		<ul id="main_lnb">
			<li><a href="#">Q/A</a></li>
			<li><a href="#">공지사항</a></li>
			<li><a href="#">교육과정</a></li>
			<li><a href="#">학교소개</a></li>	
		</ul>
	</nav>
</header>