<?php
session_start();
error_reporting(0);
?>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <?php echo "ATM Management System"; ?>
    </title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet" type="text/css">
    <link href="anim.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
    <style>

    </style>
    
</head>

<body style="background-color:black">
    <!-- <audio controls autoplay hidden>
  <source src="mietaudio.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio> -->
    <div class="header">
        <div class="inner-header">
            <div class="logo">
                <p>
                    Welcome to MIET Bank ATM
                </p>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="banner-images" style="background-image:url(img/atm1.jpg)">
            <div class="inner-banner-image">
                <div class="banner-content">
                    <h1><b>Please Insert Your Card</b></h1>
                    <br><br><br>
                    <button class="btn btn-dark btn-lg pulse mybtn"><a href="pin.php" class="">Continue</a></button>
                </div>
            </div>
        </div>
    </div>
    <footer class="foot">
        <div class="container">
            <p align="center">
                Copyright © 2022 MIET Bank. All Rights Reserved | Contact Us: +91 70174 42328
            </p>
        </div>
    </footer>
</body>

</html>