<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
div#intro-box {
	height: 900px;
	
}

#content {
	width: 960px;
	margin: auto;
	overflow: hidden;
	
}

#content  #main_section {
	width: 750px;
	float: left;
	
}

#content  #main_aside {
	width: 200px;
	float: left;
	
}

#main_aside>article.main_aside {
	margin-top: 70px;
	padding: 10px 40px 280px;
}

#main_section>article.main_article {
	margin-bottom: 10px;
	padding: 10px;
}
</style>

<div id="content">

	<div id="intro-box">
		<aside id="main_aside">
			<article class="main_aside">
				<p><h3>인사말</h3></p>
				<hr/>
			</article>
			<article class="main_aside">
				<p><h3>교훈</h3></p>
				<hr/>
			</article>
			<article class="main_aside">
				<p><h3>찾아오시는 길</h3></p>
			<hr/>
			</article>
		</aside>

<br/>
		<section id="main_section">
			<article class="main_article">
				<p>
				<img src="<%=request.getContextPath() %>/resources/images/introducepic.png" alt="인사말" width="600"
						height="300">
				</p>
			</article>
			
<br/><br/>
			<article class="main_article">
				<p>
					<img src="<%=request.getContextPath() %>/resources/images/diciple.png" alt="교훈" width="600"
						height="350">
				</p>
			</article>
<br/><br/>

			<article class="main_article">
				<p>
					<img src="<%=request.getContextPath() %>/resources/images/map.png" alt="지도" width="600"
						height="350">
				</p>
			</article>

		</section>

	</div>
</div>