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
  		  <div class="title">YTC���������б�</div> 
  		</div>
	  </div>
	  <input id="select1" name="radioMenu" type="radio" class="openInput" checked />
	  <label for="select1" class="openBtn">Open Menu</label>
	  <input id="select2" name="radioMenu" type="radio" class="closeInput" />
	  <label for="select2" class="closeBtn">Close Menu</label>
	  <nav id="menuListBox" class="skew50">
	    <ul id="mainMenu">
	 	  <li class="menu1"><span><a href="#">�б��Ұ�</a></span></li> 	
	 	  <li class="menu2"><span><a href="#">��������</a></span></li> 	
	 	  <li class="menu3"><span><a href="#">Ŀ�´�Ƽ</a></span></li> 	
	 	</ul> 
	    <ul id="sideMenu">
	 	  <li><span><a href="#">��������</a></span></li> 	
	 	  <li><span><a href="#">Ŀ�´�Ƽ</a></span></li> 	
	 	</ul> 
	  </nav>
	</nav>
</header>