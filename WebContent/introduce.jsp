<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	padding: 10px 40px 180px;
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
				<p><h3>�λ縻</h3></p>
				<hr/>
			</article>
			<article class="main_aside">
				<p><h3>����</h3></p>
				<hr/>
			</article>
			<article class="main_aside">
				<p><h3>ã�ƿ��ô� ��</h3></p>
			<hr/>
			</article>
		</aside>

<br/>
		<section id="main_section">
			<article class="main_article">
				<p>
				<img src="<%=request.getContextPath() %>/resources/images/introducepic.png" alt="�λ縻" width="600"
						height="250">
				</p>
			</article>
			
<br/><br/>
			<article class="main_article">
				<p>
					<img src="<%=request.getContextPath() %>/resources/images/diciple.png" alt="����" width="600"
						height="250">
				</p>
			</article>
<br/><br/>

			<article class="main_article">
				<p>
					<img src="<%=request.getContextPath() %>/resources/images/map.png" alt="����" width="600"
						height="250">
				</p>
			</article>

		</section>

	</div>
</div>