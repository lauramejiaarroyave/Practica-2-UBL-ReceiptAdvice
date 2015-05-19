xquery version "3.0";

declare option exist:serialize "method=html media-type=text/html omit-xml-declaration=yes indent=yes";


declare function local:show-element( $e ){
   <div style="margin-left:4ex">
       <strong><font color="#0099cc">{ 
                    (: Muestra el nombre del elemento y su texto :) 
                    $e/local-name() 
           
       }: </font></strong> { $e/text()}
       { 
           (: Mostrar los hijos del elemento :) 
           for $child in $e/* 
                return local:show-element( $child )
       }
       </div> 
};


(:  Obtener el parametro Orden para saber que orden piden :)
let $id := request:get-parameter( 'orden', '658398' ) 
(:  Buscar el documento respectivo :) 
let $orden := /*:ReceiptAdvice[ *:ID = $id ]

(:  Mostrar la orden bonita :) 
return 
<html>
    <head><title>Receipt Advice</title>
        
     <!-- BOOTSTRAP -->
         <link rel="stylesheet" type="application/javascript" href="bootstrap/css/bootstrap.css"/>
         <link rel="stylesheet" type="application/javascript" href="bootstrap/js/bootstrap.js"/>
 
    </head>
    <body  style="background-color:#eaf2f1">
        
        <div class="navbar navbar-default navbar-fixed-top" style="background-color:#0099cc">
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li ><a href="#">|</a></li>
                <li ><a style="color:white" href="index.xq">Home</a></li>
                <li ><a href="#">|</a></li>
                <li ><a style="color:white" href="new.xml">Make a New!</a></li>
                <li ><a href="#">|</a></li>
              </ul>
            </div>
        </div>
        
        
    <br/> 
    <br/>
    <div align="center" class="page-header">
            <h1>Receipt Advice # {$orden/*:ID}<br/>
            <small>Detail</small>
            </h1>
        </div>

    <div class="col-md-6 col-md-offset-3">   
        <div style="color:white">----------------------------------------------------------------------------------------------------------------</div>
        { local:show-element( $orden ) }
    </div>
    </body>
</html>