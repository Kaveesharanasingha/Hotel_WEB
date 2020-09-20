<jsp:include page= "Header.jsp"/>

<!-- Banner -->
<section class="tm-banner">
    <!-- Flexslider -->
    <div class="flexslider flexslider-banner">
        <ul class="slides">
            <li>
                <div class="tm-banner-inner">
                    <h1 class="tm-banner-title">Join <span class="tm-yellow-text">With</span> Us</h1>
                    <p class="tm-banner-subtitle">For Enjoy Your Moment</p>
                    <a href="#more" class="tm-banner-link">SIGN UP</a>	
                </div>
                <img src="img/banner-3.jpg" alt="Banner 3" />	
            </li>		    
        </ul>
    </div>	
</section>

<!-- gray bg -->	
<section class="container tm-home-section-1" id="more">
    <div class="row">
        <!-- slider -->
        <div class="flexslider effect2 effect2-contact tm-contact-box-1">
            <ul class="slides">
                <li>
                    <img src="img/world-map.png" alt="image" class="contact-image" />
                    <div class="contact-text">
                        <h2 class="slider-title">Join With Us</h2>
                        <h3 class="slider-subtitle">To Enjoy Your Moment</h3>
                        <h4 class="slider-description"> World Largest Luxury Beach hotel </h4>
                        <div class="slider-social">
                            <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
                            <a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
                        </div>
                    </div>			      
                </li>
            </ul>
        </div>
    </div>
</section>		

<!-- white bg -->
<section class="section-padding-bottom">
    <div class="container">
        <div class="row">
            <div class="tm-section-header section-margin-top">
                <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
                <div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Sign Up</h2></div>
                <div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
            </div>				
        </div>
        <div class="row">
            <!-- contact form -->
            <form action="#" method="post" class="tm-contact-form">
                <div class="col-lg-6 col-md-6">
                    <div id="google-map"></div>
                    <div class="contact-social">
                        <a href="#" class="tm-social-icon tm-social-facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="tm-social-icon tm-social-dribbble"><i class="fa fa-dribbble"></i></a>
                        <a href="#" class="tm-social-icon tm-social-twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="tm-social-icon tm-social-instagram"><i class="fa fa-instagram"></i></a>
                        <a href="#" class="tm-social-icon tm-social-google-plus"><i class="fa fa-google-plus"></i></a>
                    </div>
                </div> 
                <div class="col-lg-6 col-md-6 tm-contact-form-input">
                    <div class="form-group">
                        <input type="text" id="FNAME" class="form-control" placeholder="First Name" />
                    </div>
                    <div class="form-group">
                        <input type="text" id="LNAME" class="form-control" placeholder="Last Name"  />
                    </div>
                    <div class="form-group">
                        <input type="text" id="UNAME" class="form-control" placeholder="Create Username" />
                    </div>
                    <div class="form-group">
                        <input type="email" id="EMAIL" class="form-control" placeholder="contact_email"  />
                    </div>
                    <div class="form-group">
                        <input type="text" id="ADDRESS" class="form-control" placeholder="Home Address"  />
                    </div>
                    <div class="form-group">
                        <input type="text" id="PWORD" class="form-control" placeholder="Create Password" />
                    </div>

                    <div class="form-group">
                        <button class="tm-submit-btn" type="submit" name="submit">Submit now</button> 
                    </div> 


                </div>
            </form>
        </div>			
    </div>
</section>
<footer class="tm-black-bg">
    <div class="container">
        <div class="row">
            <p class="tm-copyright-text">Copyright &copy; 2084 Your Company Name</p>
        </div>
    </div>		
</footer>
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>					<!-- bootstrap js -->
<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>			<!-- flexslider js -->
<script type="text/javascript" src="js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
<script>
    /* Google map
     ------------------------------------------------*/
    var map = '';
    var center;

    function initialize() {
        var mapOptions = {
            zoom: 14,
            center: new google.maps.LatLng(37.769725, -122.462154),
            scrollwheel: false
        };

        map = new google.maps.Map(document.getElementById('google-map'), mapOptions);

        google.maps.event.addDomListener(map, 'idle', function () {
            calculateCenter();
        });

        google.maps.event.addDomListener(window, 'resize', function () {
            map.setCenter(center);
        });
    }

    function calculateCenter() {
        center = map.getCenter();
    }

    function loadGoogleMap() {
        var script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' + 'callback=initialize';
        document.body.appendChild(script);
    }

// DOM is ready
    $(function () {

        // https://css-tricks.com/snippets/jquery/smooth-scrolling/
        $('a[href*=#]:not([href=#])').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });

        // Flexslider
        $('.flexslider').flexslider({
            controlNav: false,
            directionNav: false
        });

        // Google Map
        loadGoogleMap();
    });
</script>
</body>
</html>
