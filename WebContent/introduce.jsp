<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<style>
div#intro-box {
	height: 600px;
border:1px solid red;
}

#content {
	width: 960px;
	margin: auto;
	overflow: hidden;
	border:1px solid green;
}

#content  #main_section {
	width: 750px;
	float: left;
	border:1px solid black;
}

#content  #main_aside {
	width: 200px;
	float: left;
	border:1px solid yellow;
	
}
#main_section>article.main_article{

margin-bottom: 10px;
padding:20px;

}

</style>

<div id="content">
	
	<div id="intro-box">
		<aside id="main_aside">
			<h1>main aside</h1>
			<br/><br/>
			<p>인사말</p>
			<br/><br/><br/>
			<p>교훈</p>
			<br/><br/><br/>
			<p>찾아오시는 길</p>
		</aside>

	
		<section id= "main_section">
			<article class = "main_article">
			<h1>main section</h1>
			<br/>
			<p>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s, when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronic
				typesetting, remaining essentially unchanged. It was popularised in
				the 1960s with the release of Letraset sheets containing Lorem Ipsum
				passages, and more recently with desktop publishing software like
				Aldus PageMaker including versions of Lorem Ipsum.</p>
			</article>
			
			<article class = "main_article">
			<p>Lorem Ipsum is simply dummy text of the printing and
				typesetting industry. Lorem Ipsum has been the industry's standard
				dummy text ever since the 1500s, when an unknown printer took a
				galley of type and scrambled it to make a type specimen book. It has
				survived not only five centuries, but also the leap into electronic
				typesetting, remaining essentially unchanged. It was popularised in
				the 1960s with the release of Letraset sheets containing Lorem Ipsum
				passages, and more recently with desktop publishing software like
				Aldus PageMaker including versions of Lorem Ipsum.</p>
			</article>
			
			<article class = "main_article">
			<p>box</p>
			</article>
			
		</section>
		
		
		
		


	</div>
</div>