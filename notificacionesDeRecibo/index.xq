   xquery version "3.0";
(: Permite usar los prefijos de los namespaces que no son vacios :)
declare namespace cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2";
declare namespace cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2";

(: Indica que se debe retornar el tipo text/html al navegador  ::)
declare option exist:serialize "method=html media-type=text/html omit-xml-declaration=yes indent=yes";

let $ordenes := collection('/db/notificacionesDeRecibo/XMLGenerated/')/*:ReceiptAdvice

return 
<html> 
    <head>

        
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
            <h1>Receipt Advice List<br/> 
            <small>UBL-ReceiptAdvice-2.0</small>
            </h1>
        </div>
    <div class="col-md-6 col-md-offset-3">
    
        <div style="color:white">----------------------------------------------------------------------------------------------------------------</div>
        
        <table border="1" class="table table-striped">
            <tr><th>Number ID</th><th>Provider</th><th>Client</th><th>Delivery Date</th><td></td></tr>
            <tbody style="background-color: white">
            {
            for $i in $ordenes
                return <tr>
                    <td><a href="orden.xq?orden={ $i/cbc:ID/text()}">{ $i/cbc:ID/text() }</a></td>
                    <td>{$i/cac:DespatchSupplierParty//cac:PartyName/cbc:Name/text()}</td>
                    <td>{$i/cac:DeliveryCustomerParty//cac:PartyName/cbc:Name/text()}</td>
                    <td align="center">{$i/cbc:IssueDate/text()}</td>
                    <td><a href="edit.xml?orden={$i/cbc:ID/text()}" >Editar</a> </td>
                </tr>
            }
            </tbody>
        </table>
        
    </div>
    </body>
</html>
     
