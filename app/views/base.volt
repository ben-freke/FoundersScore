<!DOCTYPE HTML>
<html>
<head>
    <title>Founders 2017</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
    <script src="js/jquery.min.js"></script>
    <script src="js/skel.min.js"></script>
    <script src="js/skel-layers.min.js"></script>
    <script src="js/init.js"></script>
    <noscript>
        <link rel="stylesheet" href="css/skel.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style-xlarge.css" />
    </noscript>
    <link rel="shortcut icon" href="/img/icon.ico">

</head>
<body id="top">

<header id="header" class="skel-layers-fixed">
    <h1><a href="/">Founders 2017 </a></h1>
<nav id="nav">
    <ul>
        <li><a href="/">Home</a></li>
        <li><a href="/timetable">Timetable</a></li>
        <li><a href="/scores">Scores</a></li>
        <li><a href="/about">About</a></li>
    </ul>
</nav>
</header>



<!-- Banner -->
<section id="banner">
    <div class="inner">
        <h2>This is Founders.</h2>
        <p>Two Colleges. Thirty Two Sports. One winner.</p>

        <div id="progressbar" class="8u align-center" style="width: 80%; margin: 0 auto;;">
            <br>
            <div style="height:52px; width:100%; position: relative"><img src="/images/points_divider.png"></div>
            <div style="height:45px; width:{{ percentage1 }}%; background-color:darkred; float:right; display: inline-block; "><p style="color:white; line-height: 50px">{{ score1 }}</p></div>
            <div style="height:45px; width:{{ percentage2 }}%; background-color:royalblue; float: left; display: inline-block; "><p style="color:white; line-height: 50px">{{ score2 }}</p></div>
            <div style="height:45px; width:100%; background-color:lightgrey;"></div>


        </div>

        <div class="progressbar">
        </div>


    </div>
</section>


{% block body %}
{% endblock %}


<!-- Footer -->
<footer id="footer">
    <div class="container">
        <div class="row double">
            <div class="6u">
                <div class="row collapse-at-2">
                    <div class="6u">
                        <h3>Site Pages</h3>
                        <ul class="alt">
                            <li><a href="/">Live Updates</a></li>
                            <li><a href="/timetable">Event Timetable</a></li>
                            <li><a href="/scores">Event Scores</a></li>
                            <li><a href="/about">About</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="6u">
                <h2>Founders</h2>
                    <p>The founders website is developed by Ben Freke for Bowland and Lonsdale Colleges.</p>
                    <p class="text-center"><a href="https://www.benfreke.org">www.benfreke.org</a></p>
            </div>
        </div>
        <ul class="copyright">
            <li>&copy; Ben Freke 2017. All rights reserved.</li>
        </ul>
    </div>
</footer>

</body>
</html>