<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="navbar-nav mt-0">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			<!-- <li class="nav-item"><a class="nav-link" href="index.html">Trang chủ</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Giới thiệu</a></li>
			<li class="nav-item"><a class="nav-link" href="qt-tuvan.html">Quy trình tư vấn</a></li>
			<li class="nav-item"><a class="nav-link" href="product.html">Sản phẩm</a></li>
			<div class="nav-item lieutrinh"><a class="nav-link" href="lieutrinh.html">Liệu trình</a>
				<div class="container lieutrinh-menu">
					<div class="row mx-0">
						<div class="col-3 lieutrinh-list">
							<ul class="list-group list-unstyled">
								<li class="list-group-item lieutrinh-1"><a href="lieutrinh-chitiet.html"> <span>Liệu trình thải độc da</span><br></br>(Detox
										treatment)</a></li>
								<li class="list-group-item lieutrinh-2"><a href="lieutrinh-chitiet.html"> <span>Liệu trình nặn mụn</span><br></br>(Acne
										treatment)</a></li>
								<li class="list-group-item lieutrinh-3"><a href="lieutrinh-chitiet.html"> <span>Liệu trình tẩy tế bào chết</span><br></br>(Peeling
										Treatment)</a></li>
								<li class="list-group-item lieutrinh-4"><a href="lieutrinh-chitiet.html"> <span>Liệu trình căn bản</span><br></br>(Basic
										treatment)</a></li>
								<li class="list-group-item lieutrinh-5"><a href="lieutrinh-chitiet.html"> <span>Liệu trình nâng cao</span><br></br>(Advanced
										treatment)</a></li>
								<li class="list-group-item lieutrinh-6"><a href="lieutrinh-chitiet.html"> <span>Liệu trình đặc trị</span><br></br>(Specific
										treatment)</a></li>
							</ul>
						</div>
						<div class="col-9">
							<div class="row lieutrinh-1-content lieutrinh-content active">
								<div class="col-4">
									<div class="img"><img src="./img/lieutrinh/lt-1.jpg" alt=""></img></div>
								</div>
								<div class="col-8">
									<div class="text">
										<p>Những độc tố xuất hiện trên da do những ngày tiếp xúc môi trường khói bụi, làn da thường xuyên phải
											trang điểm,... Liệu trình thải độc da sẽ ngăn chặn tình trạng lão hóa da sớm, da sạm nám, giúp bảo vệ làn
											da khỏi các nguy cơ bùng phát bệnh da liễu, đem lại một làn da săn chắc và khỏe mạnh.</p>
									</div>
								</div>
							</div>
							<div class="row lieutrinh-2-content lieutrinh-content">
								<div class="col-4">
									<div class="img"><img src="./img/lieutrinh/lt-2.jpg" alt=""></img></div>
								</div>
								<div class="col-8">
									<div class="text">
										<p>Tự tin với làn da tỏa sáng, không lo các vết thâm, sẹo và mụn trên da khi đã sử dụng liệu trình nặn mụn.
											Đội ngũ nhân viên chuyên nghiệp và kinh nghiệm tại Miracle Beaute sẽ đem lại một làn da mịn màng và tươi
											sáng.</p>
									</div>
								</div>
							</div>
							<div class="row lieutrinh-3-content lieutrinh-content">
								<div class="col-4">
									<div class="img"><img src="./img/lieutrinh/lt-3.jpg" alt=""></img></div>
								</div>
								<div class="col-8">
									<div class="text">
										<p>Làn da trở nên sáng hồng và mịn màng hơn với liệu trình tẩy tế bào chất trên mặt và cơ thể. Cuốn trôi
											mọi bụi bẩn, bã nhờn, tránh bị sần sùi, thô ráp và bị xỉn màu bằng AHA và BHA. Đồng thời đẩy mạnh quá
											trình tái tạo da và thúc đẩy sản sinh collagen.</p>
									</div>
								</div>
							</div>
							<div class="row lieutrinh-4-content lieutrinh-content">
								<div class="col-4">
									<div class="img"><img src="./img/lieutrinh/lt-4.jpg" alt=""></img></div>
								</div>
								<div class="col-8">
									<div class="text">
										<p>Ngăn ngừa làn da chảy xệ và tăng sức đề kháng cho da với liệu trình chăm sóc bằng các sản phẩm đặc trị
											cho làn da thêm căng mịn, cùng với tay nghề chuyên nghiệp nhiều kinh nghiệm của Miracle Beaute đem đến cho
											bạn những khoảng thời gian nghỉ ngơi thoải mái nhất.</p>
									</div>
								</div>
							</div>
							<div class="row lieutrinh-5-content lieutrinh-content">
								<div class="col-4">
									<div class="img"><img src="./img/lieutrinh/lt-5.jpg" alt=""></img></div>
								</div>
								<div class="col-8">
									<div class="text">
										<p>Trải nghiệm liệu trình khoa học, tác động đa chiều, mang đến làn da trẻ hóa thần kỳ ngay những lần điều
											trị đầu tiên, giúp khắc phục được các khuyết điểm, để làn da luôn tươi trẻ, hồi lại nét đẹp thanh xuân.</p>
									</div>
								</div>
							</div>
							<div class="row lieutrinh-6-content lieutrinh-content">
								<div class="col-4">
									<div class="img"><img src="./img/lieutrinh/lt-6.jpg" alt=""></img></div>
								</div>
								<div class="col-8">
									<div class="text">
										<p>Cải thiện sức sống cho làn da, khôi phục hư tổn và tăng cường tinh chất cho da mặt tại liệu trình đặc
											biệt chăm sóc da chuyên sâu bằng những bộ sản phẩm đặc trị phù hợp với từng loại da. Mọi vấn đề bạn gặp về
											làn da, lựa chọn Miracle Beaute để chăm sóc toàn diện.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="nav-item giaiphap"><a class="nav-link" href="giaiphap.html">Giải pháp</a>
				<div class="container giaiphap-menu px-0">
					<ul class="list-group list-unstyled">
						<li class="list-group-item"><a href="giaiphap-chitiet.html"> <span>Da nhờn mụn</span></a></li>
						<li class="list-group-item"><a href="giaiphap-chitiet.html"> <span>Da tổn thương</span></a></li>
						<li class="list-group-item"><a href="giaiphap-chitiet.html"> <span>Da lão hóa</span></a></li>
						<li class="list-group-item"><a href="giaiphap-chitiet.html"> <span>Nám, tàn nhang, xỉn màu</span></a></li>
						<li class="list-group-item"><a href="giaiphap-chitiet.html"> <span>Thâm, bọng mắt</span></a></li>
						<li class="list-group-item"><a href="giaiphap-chitiet.html"> <span>Thiếu ẩm</span></a></li>
					</ul>
				</div>
			</div>
			<li class="nav-item"><a class="nav-link" href="news.html">Tin tức</a></li>
			<li class="nav-item"><a class="nav-link" href="contact.html">Liên hệ</a></li> -->
		</ul>
	</xsl:template>



	<xsl:template match="Zone">
		<li class="nav-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="nav-link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>