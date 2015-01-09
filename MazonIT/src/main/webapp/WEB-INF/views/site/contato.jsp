<jsp:directive.include file="/WEB-INF/views/includes.jsp" />

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-formhelpers.css"/>" ></link>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/validationEngine.jquery.css"/>" />

<style>
	.formError .formErrorContent {
		min-width: 215px;
	}
	
	.formError .formErrorContent,
	.formError .formErrorArrow div,
	.blackPopup .formErrorContent {
	    background: none repeat scroll 0 0 #14b8e6;
	    color: #FFFFFF;
	}
	
	#map-canvas {
	height: 400px;
	width: auto;
	}
</style>
<script src="<c:url value="/resources/js/bootstrap-formhelpers/bootstrap-formhelpers-phone.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap-formhelpers/bootstrap-formhelpers-phone.format.js"/>"></script>
<script src="<c:url value="/resources/js/plugins/jquery.validationEngine-pt_BR.js"/>"></script>
<script src="<c:url value="/resources/js/plugins/jquery.validationEngine.js"/>"></script>


<script>
	var styles = [
		{
			stylers: [ { saturation: -100 } ]
		},{
			featureType: "road",
			elementType: "geometry",
			stylers: [
					{ lightness: -8 },
					{ visibility: "simplified" }
			]
		},{
			featureType: "road",
			elementType: "labels",
		}
	];
	var myLatlng = new google.maps.LatLng(-25.4043966, -49.2636306); 
	var mapOptions = {
		zoom: 15,
		center: myLatlng
	};
	
	function loadMapLocation() {
		var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

		// Disabled Map Scroll in Contact Page 
		map.setOptions({'scrollwheel': false});

		// Black and White style for Google Map
		map.setOptions({styles: styles});

	// Google Map Maker 
		var marker = new google.maps.Marker({
			position: myLatlng,
			map: map,
			animation: google.maps.Animation.DROP,
			icon: '<c:url value="/resources/img/pin_7.png" />'
		});
	}
	
	$(document).ready(function() {
		
		$('form').attr('onsubmit', 'return false');
		/*
		var map1;
        map1 = new GMaps({
            el: '#map1',
            scrollwheel: false,
            lat: 29.983775,
            lng: 31.167161,
            zoom: 15
        });
        map1.addMarker({
            lat: -25.4043966,
            lng: -49.2636306
            ,icon: '<c:url value="/resources/img/pin_7.png" />'
        });
        map1.setOptions({styles: styles});
        
        var marker = new google.maps.Marker({
			position: myLatlng,
			map: map1,
		});
        
        var marker = new google.maps.Marker({
			position: myLatlng,
			map: map1,
		});
        */
		

		google.maps.event.addDomListener(window, 'load', loadMapLocation);
		
		
		$('#btn-enviar').click(function() {
			
			if ( !$('form').validationEngine('validate') ) {
				return;
			}
			
			$('#input-msg').val( $('#input-msg').val().replace(/\r\n|\r|\n/g,"<br />") );
			
			$(this).button('loading')
			
			
			//$('form').attr('onsubmit', 'return true');
			//S$('form').submit();
		});
		

	});
</script>


<section class="breadcrumb-wrapper">
	<div class="container">
		<div class="row">
			<div class="page-description">
				<h2>ENTRE EM CONTATO</h2>
			</div>
		</div>
	</div>
</section>


<section class="white-section">
	<div class="container">
		<div class="row">
		
		<div class="contact">
		
		<!-- =========================================
		Get in touch
		========================================== -->
		<div class="col-md-4">
		
		<div class="short-section-title">
		    <h3>ENDEREÇO</h3>
		</div>
		
		<ul class="contact-details">
		    <li>
		        <span class="title">Endereço</span>
		        <span class="value">Rua Alberto Folloni, nº 1244, AhÚ</span>
		    </li>
		    <li>
		        <span class="title">Cidade</span>
		        <span class="value">CURITIBA</span>
		    </li>
		    <li>
		        <span class="title">Pais</span>
		        <span class="value">BRASIL</span>
		    </li>
		</ul>
		
		</div>
		
		<!-- =========================================
		General Inquiries
		========================================== -->
		<div class="col-md-4">
		
			<div class="short-section-title">
			    <h3>CONTATOS</h3>
			</div>
			
			<ul class="contact-details">
			    <li>
			        <span class="title">Fone:</span>
			        <span class="value">+55 (41) 3018-3364</span>
			    </li>
			    <li>
			        <span class="title">Celular</span>
			        <span class="value">+55 (41) 8815-4151</span>
			    </li>
			    <li>
			        <span class="title">Email</span>
			        <span class="value">contato@mazonit.com.br</span>
			    </li>
			</ul>
		
		</div>
		
		<!-- =========================================
		Business Hours
		========================================== -->
		<div class="col-md-4">
		
			<div class="short-section-title">
			    <h3>ATENDIMENTO</h3>
			</div><!-- /short-section-title -->
			
			<ul class="contact-details">
			    <li>
			        <span class="title">Segunda-feira - Sexta-feira</span>
			        <span class="value">09:00 - 18:00 </span>
			    </li>
			    <li>
			        <span class="title">sabado</span>
			        <span class="value">09:00 - 13:00</span>
			    </li>
			    <li>
			        <span class="title">Domingo</span>
			        <span class="value">Fechado</span>
			    </li>
			    <li>
			        <span class="title text-center">Suporte 24/7 - Basta nos enviar email.</span>
			    </li>
			</ul>
		
		</div>
		
		</div>
		
		</div>
	</div>
</section>

<section class="gray-section">
	<div class="container">
		<div class="row">
	
			<div class="col-md-12">

				<form role="form" id="form" class="contactForm" method="post" action="php/send.php">
                        
					<div class="col-md-6">
						<div class="form-group">
						    <label for="contact-name" class="control-label">Nome <span>( Obrigatório )</span></label>
						
						    <div class="controls">
						
						    <input type="text" class="form-control requiredField" placeholder="Nome Completo" name="name">
						
						    </div>
						</div>
						<div class="form-group">
						
						    <label for="contact-mail" class="control-label">Email <span>( Obrigatório )</span></label>
						
						    <div class="controls">
						
						        <input type="email" class="form-control requiredField" placeholder="Email" name="email">
						
						    </div>
						
						</div><!-- /Contact Mail -->
						
						
						<div class="form-group">
						
						    <label for="contact-subject" class="control-label">Telefone <span>( Obrigatório )</span></label>
						
						    <div class="controls">
						
						        <input type="text" class="form-control requiredField" placeholder="Contato" name="telefone">
						
						    </div>
						
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
						
						    <label for="contact-subject" class="control-label">Assunto <span>( Obrigatório )</span></label>
						
						    <div class="controls">
						
						        <input type="text" class="form-control requiredField" placeholder="Subject" name="subject">
						
						    </div>
						
						</div>
					

                          <div class="form-group">

                              <label for="contact-message" class="control-label">Mensagem <span>( Obrigatório )</span></label>

                              <div class="controls">

                                  <textarea rows="8" class="form-control requiredField" placeholder="Sua Menssagem" name="message"></textarea>

                              </div>

                          </div>

					</div>
					<div class="col-md-12 text-center">
                          <button type="submit" class="btn btn-main" style="width: 185px;">Enviar</button>

					</div>

                        </form><!-- /form -->

                    </div>
		
		</div>
	</div>
</section>

<%--
<div id="map1"></div>
 --%>
<div id="map-canvas"></div>

