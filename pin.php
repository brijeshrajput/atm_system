<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="style.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Pin</title>

<body style="background-image:url(img/atm_pin.jpg); background-repeat: no-repeat; background-size: 100%;">
    <div class="boxy">
    <div class="container">
        <div class="banner-image">
            <div class="inner-banner-image">
                <b>
                    <h4>Enter Your Pin</h4>
                </b>
            </div>
        </div>
    </div>

    <center>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-lg-offset-4">
                    <form method="post" action="pin1.php">
                        <div class="form_group">
                            <input type="text" id="pin" placeholder="Enter your pin here" class="form-control input-lg"
                                style="overflow:hidden" name="Pin"><br><br>
                        </div>

                        <input type="submit" class="button" value="Submit">&emsp;
                        <input type="submit" class="button" formaction="pin.php" value="Clear">
                    </form>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-lg-offset-4">
                                <br><Br> <a href="admin.php" class="button">Admin</a> <br> &emsp;
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </center>
    </div>
    <script>
        var audio = document.createElement("AUDIO")
        document.body.appendChild(audio);
        audio.src = "mietaudio.mp3";


        document.getElementById('pin').addEventListener("mousemove", function () {
            audio.play()
        })
    </script>
</body>


</html>