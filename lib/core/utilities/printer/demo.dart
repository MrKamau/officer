import 'models/occur_model/occur_model.dart';

class Demo {
  static String getShortReceiptContent(OccurModel event, String qrCode) {
    return """
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Mini Abstract</title>
</head>

<style>
    p {
        margin: 0px;
        padding: 0px;
    }
    
    body {
        background: rgb(249, 247, 247);
        width: 576px;
        font-size: 1.8em
    }
    
    .receipt {
        max-width: 576px;
        margin: auto;
        background: white;
    }
    
    .container {
        padding: 5px 15px;
        margin-left: 20px;
    }
    
    hr {
        border-top: 2px dashed black;
    }
    
    .text-center {
        text-align: center;
    }
    
    .text-left {
        text-align: left;
    }
    
    .text-right {
        text-align: left;
    }
    
    .text-justify {
        text-align: justify;
    }
    
    .right {
        float: right;
    }
    
    .left {
        float: left;
        
    }

    .leftImage {
        float: left;
        height: 33.3%;
        width: 33.3%;
        
    }   

 
    .total {
        font-size: 2.5em;
        margin: 5px;
    }
    
    a {
        color: #1976d2;
    }
    
    span {
        color: black;
    }
    
    .full-width {
        width: 100%;
    }
    
    .inline-block {
        display: inline-block;
    }
  .img1 {

    height: 210px;
    width: 210px;

    float: left;

}
.logo {
    display: flex;
    flex-direction: column;
    align-items: center;
    float:left;
}
.pg-style{
  font-size: 25px;
}
</style>

<body>
    <div class="receipt">
    <br>
      <div class="row">
      <div class="col-12">
        <div class="container">
            <!-- header part -->
            <div class="logo">
              <img src="file:///android_asset/flutter_assets/assets/images/policelogo.png">
            </div>
          </div>
         </div>
        </div>
        <div class="row">
        <div class="col-12">
        <div class="container">
            <br>
            <p class="pg-style">Date: ${event.date} ${event.time}</p>
            <br>
            <p class="pg-style">Occurence Number: ${event.obNo}</p>
            <br>
            <p class="pg-style"> Reporter Name: ${event.reporter}</p>
            <br>
            <p class="pg-style">Police Station: ${event.policeStation}</p>
            <br>
            <p class="pg-style">Occurence Location: ${event.location}</p>
            <br>
            <p class="pg-style">Category: ${event.category}</p>
            <hr>
            <p class="pg-style">Police Officer: ${event.policeOfficer}</p>

            <br>
              <div class="left">
                   <img class= "img1"  src="data:image/png;base64, $qrCode "  />
             </div>
          </div>
        </div>
      </div>
    </div>
        <br>
    </div>
</body>

</html>   
  """;
  }
}
