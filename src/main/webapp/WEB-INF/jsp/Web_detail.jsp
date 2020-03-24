<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/20 0020
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Single</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="/static/web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/static/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/static/web/css/light-carousel.css" rel="stylesheet" type="text/css">
    <!-- js -->
    <script type="text/javascript" src="/static/web/js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <link href='https://fonts.googleapis.com/css?family=Quicksand:400,300,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="/static/web/js/move-top.js"></script>
    <script type="text/javascript" src="/static/web/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->

</head>

<body>
<!-- header -->
<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="header-top-left">
                <ul>
                    <li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+0123 345 569</li>
                    <li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
                </ul>
            </div>
            <div class="header-top-left1">
                <ul class="social-icons">
                    <li><a href="#" class="icon icon-border facebook"></a></li>
                    <li><a href="#" class="icon icon-border twitter"></a></li>
                    <li><a href="#" class="icon icon-border instagram"></a></li>
                    <li><a href="#" class="icon icon-border pinterest"></a></li>
                </ul>
            </div>
            <div class="header-top-right">
                <div class="search">
                    <input class="search_box" type="checkbox" id="search_box">
                    <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
                    <div class="search_form">
                        <form action="#" method="post">
                            <input type="text" name="Search" placeholder="Search...">
                            <input type="submit" value=" ">
                        </form>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo">
                        <h1><a class="navbar-brand" href="index.html">Plottage <span>Real Estate</span></a></h1>
                    </div>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <nav>
                        <ul class="nav navbar-nav">
                            <li><a href="index.html" class="hvr-bounce-to-bottom">Home</a></li>
                            <li><a href="services.html" class="hvr-bounce-to-bottom">Services</a></li>
                            <li><a href="gallery.html" class="hvr-bounce-to-bottom">Gallery</a></li>
                            <li><a href="short-codes.html" class="hvr-bounce-to-bottom">Short Codes</a></li>
                            <li><a href="mail.html" class="hvr-bounce-to-bottom">Mail Us</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div>
<!-- //header -->
<!-- breadcrumbs -->
<div class="services-top-breadcrumbs">
    <div class="container">
        <div class="services-top-breadcrumbs-right">
            <ul>
                <li><a href="index.html">Home</a> <i>/</i></li>
                <li>Single Page</li>
            </ul>
        </div>
        <div class="services-top-breadcrumbs-left">
            <h3>Single Page</h3>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- single -->
<div class="single">
    <div class="container">
        <div class="col-md-8 single-left">
            <div class="sample1">
                <div class="carousel">
                    <ul>
                        <li> <img src="images/13.jpg" alt="quibusdam et aut offi"> </li>
                        <li> <img src="images/14.jpg" alt="Itaque earum rerum hic"> </li>
                        <li> <img src="images/15.jpg" alt="doloribus asperio rep"> </li>
                        <li> <img src="images/16.jpg" alt="maiores alias consequ"> </li>
                    </ul>
                    <div class="controls">
                        <div class="prev"></div>
                        <div class="next"></div>
                    </div>
                </div>
                <div class="thumbnails">
                    <ul>
                        <li> <img src="images/13.jpg" alt=" "> </li>
                        <li> <img src="images/14.jpg" alt=" "> </li>
                        <li> <img src="images/15.jpg" alt=" "> </li>
                        <li> <img src="images/16.jpg" alt=" "> </li>
                    </ul>
                </div>
            </div>
            <script src="js/jquery.light-carousel.js"></script>
            <script>
                $('.sample1').lightCarousel();
            </script>
            <div class="single-left2">
                <h3>vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</h3>
                <ul class="com">
                    <li><span class="glyphicon glyphicon-snailUser" aria-hidden="true"></span><a href="#">SnailAdmin</a></li>
                    <li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="#">2 Comments</a></li>
                    <li><span class="glyphicon glyphicon-heart" aria-hidden="true"></span><a href="#">50 Likes</a></li>
                    <li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="#">3 Tags</a></li>
                </ul>
                <div class="single-left2-sub">
                    <ul>
                        <li>Recent Tags: </li>
                        <li><a href="#">Designs</a></li>
                        <li><a href="#">Category</a></li>
                        <li><a href="#">Packages</a></li>
                    </ul>
                </div>
            </div>
            <div class="single-left3">
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis
                    praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias
                    excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui
                    officia deserunt mollitia animi, id est laborum et dolorum fuga.
                    <span>Et harum quidem rerum facilis est et expedita distinctio. Nam libero
						tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus
						id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis
						dolor repellendus</span>. Temporibus autem quibusdam et aut officiis debitis
                    aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et
                    molestiae non recusandae. <span>Itaque earum rerum hic tenetur a sapiente delectus,
						ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis
						doloribus asperiores repellat.
						Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p>
            </div>
            <div class="single-left4">
                <h4>Share This Post</h4>
                <ul class="social-icons social-icons1">
                    <li><a href="#" class="icon icon-border icon-border1 facebook"></a></li>
                    <li><a href="#" class="icon icon-border icon-border1 twitter"></a></li>
                    <li><a href="#" class="icon icon-border icon-border1 instagram"></a></li>
                    <li><a href="#" class="icon icon-border icon-border1 pinterest"></a></li>
                </ul>
            </div>
            <div class="snailAdmin">
                <p>But I must explain to you how all this mistaken idea of denouncing
                    pleasure and praising pain was born and I will give you a complete
                    account of the system, and expound the actual teachings of the great
                    explorer of the truth, the master-builder of human happiness.
                    No one rejects, dislikes, or avoids pleasure itself.</p>
                <a href="#"><i>John Frank</i></a>
            </div>
            <div class="comments">
                <h4>Comments</h4>
                <div class="comments-grid">
                    <div class="comments-grid-left">
                        <img src="images/5.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="comments-grid-right">
                        <h3><a href="#">Adam Smith</a></h3>
                        <h5><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> On 28th May, 2016</h5>
                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
                        <div class="reply">
                            <a href="#">Reply</a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="comments-grid">
                    <div class="comments-grid-left">
                        <img src="images/4.png" alt=" " class="img-responsive" />
                    </div>
                    <div class="comments-grid-right">
                        <h3><a href="#">James Rick</a></h3>
                        <h5><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> On 28th May, 2016</h5>
                        <p>Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur.</p>
                        <div class="reply">
                            <a href="#">Reply</a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="write-reply">
                <h3>Write a Reply Or Comment</h3>
                <form action="#" method="post">
                    <textarea name="Comment" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'SnailMessage...';}" required="">Write a comment here...</textarea>
                    <input type="text" name="Name" value="Name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name...';}" required="">
                    <input type="email" name="Email" value="Email..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email...';}" required="">
                    <input type="text" name="Website" value="Website..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Website...';}" required="">
                    <input type="submit" value="Send" >
                </form>
            </div>
        </div>
        <div class="col-md-4 single-right">
            <div class="categories">
                <h3>Categories</h3>
                <ul>
                    <li><a href="#">Aliquam dapibus tincidunt</a></li>
                    <li><a href="#">Donec sollicitudin molestie</a></li>
                    <li><a href="#">Fusce feugiat malesuada odio</a></li>
                    <li><a href="#">Cum sociis natoque penatibus</a></li>
                    <li><a href="#">Magnis dis parturient montes</a></li>
                    <li><a href="#">Donec sollicitudin molestie</a></li>
                </ul>
            </div>
            <div class="categories categories-mid">
                <h3>Archives</h3>
                <ul>
                    <li><a href="#">May 20,2009</a></li>
                    <li><a href="#">July 31,2010</a></li>
                    <li><a href="#">January 20,2012</a></li>
                    <li><a href="#">November 2,2014</a></li>
                    <li><a href="#">December 25,2015</a></li>
                    <li><a href="#">May 28,2016</a></li>
                </ul>
            </div>
            <div class="related-posts">
                <h3>Related Posts</h3>
                <div class="related-post">
                    <div class="related-post-left">
                        <a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive" /></a>
                    </div>
                    <div class="related-post-right">
                        <h4><a href="single.html">Donec sollicitudin</a></h4>
                        <p>Aliquam dapibus tincidunt metus.
                            <span>Praesent justo dolor, lobortis.</span>
                        </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="related-post">
                    <div class="related-post-left">
                        <a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
                    </div>
                    <div class="related-post-right">
                        <h4><a href="single.html">Donec sollicitudin</a></h4>
                        <p>Aliquam dapibus tincidunt metus.
                            <span>Praesent justo dolor, lobortis.</span>
                        </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="related-post">
                    <div class="related-post-left">
                        <a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive" /></a>
                    </div>
                    <div class="related-post-right">
                        <h4><a href="single.html">Donec sollicitudin</a></h4>
                        <p>Aliquam dapibus tincidunt metus.
                            <span>Praesent justo dolor, lobortis.</span>
                        </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //single -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <h2>Sign up for our newsletter</h2>
        <p class="para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vitae eros eget tellus
            tristique bibendum. Donec rutrum sed sem quis venenatis.</p>
        <div class="footer-contact">
            <form action="#" method="post">
                <input type="text" name="Email" placeholder="Enter your email to update" required=" ">
                <input type="submit" value="Subscribe">
            </form>
        </div>
        <div class="footer-grids">
            <div class="col-md-4 footer-grid">
                <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> General Pvt 66, Dong Da
                    Hanoi, Vietnam.</p>
                <p><a href="mailto:contact@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> contact@example.com</a></p>
                <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+0123 456 686</p>
            </div>
            <div class="col-md-2 footer-grid">
                <ul>
                    <li><a href="mail.html">Contact</a></li>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="short-codes.html">Short Codes</a></li>
                    <li><a href="gallery.html">Gallery</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-grid">
                <div class="footer-grid1">
                    <div class="footer-grid1-left">
                        <a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive"></a>
                    </div>
                    <div class="footer-grid1-right">
                        <a href="single.html">eveniet ut molesti</a>
                        <div class="m1">
                            <a href="single.html"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="footer-grid1">
                    <div class="footer-grid1-left">
                        <a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive"></a>
                    </div>
                    <div class="footer-grid1-right">
                        <a href="single.html">earum rerum tenet</a>
                        <div class="m1">
                            <a href="single.html"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="footer-grid1">
                    <div class="footer-grid1-left">
                        <a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive"></a>
                    </div>
                    <div class="footer-grid1-right">
                        <a href="single.html">maiores alias cons</a>
                        <div class="m1">
                            <a href="single.html"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="col-md-3 footer-grid">
                <div class="footer-grid-instagram">
                    <a href="single.html"><img src="images/9.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-instagram">
                    <a href="single.html"><img src="images/10.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-instagram">
                    <a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="footer-grid-instagram">
                    <a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="footer-copy">
            <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        </div>
    </div>
</div>
<!-- //footer -->
<!-- for bootstrap working -->
<script src="/static/web/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->
</body>
</html>