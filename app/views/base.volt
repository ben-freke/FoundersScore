<!DOCTYPE HTML>
<html>
<head>
    <title>Founders 2019</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <script src="/static/js/jquery.min.js"></script>

    <!--[if lte IE 8]>
        <script src="/static/js/html5shiv.js"></script>
    <![endif]-->

    <script src="/static/js/skel.min.js"></script>
    <script src="/static/js/skel-layers.min.js"></script>
    <script src="/static/js/init.js"></script>
    <noscript>
        <link rel="stylesheet" href="/static/css/skel.css" />
        <link rel="stylesheet" href="/static/css/style.css" />
        <link rel="stylesheet" href="/static/css/style-xlarge.css" />
    </noscript>
    <link rel="shortcut icon" href="/static/img/icon.ico">

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-142417468-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-142417468-1');
    </script>

    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.css" />

    <script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js"></script>

    <script>
        window.addEventListener("load", function(){
            window.cookieconsent.initialise({
                "palette": {
                    "popup": {
                        "background": "#efefef",
                        "text": "#404040"
                    },
                    "button": {
                        "background": "#8ec760",
                        "text": "#ffffff"
                    }
                },
                "theme": "edgeless",
                "position": "bottom-left",
                "content": {
                    "href": "https://www.lancasterfounders.com/privacy"
                }
            })});
    </script>

    {% block metadata %} {% endblock %}

</head>
<body id="top">

<header id="header" class="skel-layers-fixed">
    <h1><a href="/">Founders 2019: The Revival </a></h1>
<nav id="nav">
    <ul>
        <li><a href="/">Home</a></li>
        <li><a href="/timetable#one">Timetable</a></li>
        <li><a href="/scores#one">Scores</a></li>
        <li><a href="/about#one">About</a></li>
    </ul>
</nav>
</header>

<!-- Banner -->
<section id="banner">
    <div class="inner">
        <h2><b>Founders 2019:</b> The Revival</h2>
        <p>Two Colleges. Thirty Two Sports. One winner.</p>

        <div id="progressbar" class="8u align-center" style="width: 80%; margin: 0 auto;;">
            <br>
            <div style="height:52px; width:100%; position: relative"><img src="/static/img/points_divider.png"></div>
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
                            <li><a href="/timetable#one">Event Timetable</a></li>
                            <li><a href="/scores#one">Event Scores</a></li>
                            <li><a href="/about#one">About</a></li>
                            <li><a href="/privacy#one">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="6u">
                <h2>Founders 2019</h2>
                    <p>The Founders website is developed by Ben Freke for Bowland and Lonsdale Colleges.</p>
                    <p class="text-center"><a href="https://www.benfreke.org">www.benfreke.org</a></p>
            </div>
        </div>
        <ul class="copyright">
            <li>&copy; Ben Freke 2019. All rights reserved.</li>
        </ul>
    </div>
</footer>

</body>
</html>