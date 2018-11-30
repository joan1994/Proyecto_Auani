
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Barcode</title>
    <link rel="stylesheet"  href="css/bootstrap.min.css" />
    <style>
    .row{
        margin:0px;
    }
    h2{
        margin-top:60px; 
    }
        
    </style>
   
</head>
<body>
    <div  class="row">
     @foreach($produits as $p)  
        <div class="col-md-4">
            <div>
            <!---->

            {!!DNS1D::getBarcodeHTML($p->barcode, "C128")!!}

           {{$p->barcode}}
            </div>
            <h2>{{$p->nom}}
            </h2>
            
        </div>
    @endforeach  
    </div>
</body>
</html>
