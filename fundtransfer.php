<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><?php echo "Transaction page"; ?> </title>
        <link  rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <link href="style.css" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
    <body style="background-image:url(img/atm1.jpg)">
    <link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="header">
        <div class="inner-header">
            <div class="logo">
                <p><center>
                    MIET Bank ATM</center> 
                </p>
            </div>
        </div>
    </div>
<center>
       <div class="container">
            <div class="row">
                <div class="col-xs-4 col-lg-offset-4"><center>
                        <form method="post" action="fund.php">
                            <br><Br><br><br><br><br><input type="text" placeholder="Enter the account number"  class="form-control input-lg" name="account"><br><br>
                            <input type="text" placeholder="Enter the amount"  class="form-control input-lg" name="amount"><br><br>
                 <input type="submit"  class="button" value="Submit">&emsp;
                      
                 <a  href="index.php" class="button">Exit</a> <br><br><br> &emsp;
                        </form>
                        
                 </div>
                </div>
       </div>
           
