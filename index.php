<?php 
    session_start();
    require_once( './model/dbConn.php');
    require_once( './model/usuario.php');
    require_once( './model/categoria.php');
    //echo("aqui");
    //echo"<pre>";
    //print_r($_SESSION["usuario"]);
    //echo"</pre>";
    if(isset($_SESSION["usuario"])){
        $usuario = $_SESSION["usuario"];
        $nomeUsuario = (unserialize($usuario)->getNomeUsuario());
        $tema = unserialize($usuario)->getTema();
    }else{
        $tema = "#FFFFFF";

    }

?>
<html>
<head>    
        <meta charset="utf-8" >        
        <meta name="viewport"    content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="product"     content="Forum MetroUi">

        

        <link href="./_metroUI/css/metro-bootstrap.css"		        rel="stylesheet">
        <link href="./_metroUI/css/metro-bootstrap-responsive.css"  rel="stylesheet">
        <link href="./_metroUI/css/docs.css"			            rel="stylesheet">
        <link href="./_metroUI/css/iconFont.css"      	   	        rel="stylesheet">
        <link href="./_metroUI/js/prettify/prettify.css"	        rel="stylesheet">
        <link href="./_metroUI/css/tablesort_metro.css" 	        rel="stylesheet">

        

        
</head>

<body class="metro" bgcolor="<?php echo($tema);?>">
<header class="bg-dark" data-load="./view/_IncludeHeader.php"></header>
<div class="container"><section id="dados"></section></div>
    <div id="Dialog" class="Dialog"></div>
</body>
    <script language="javascript">
    function abreDialog(prPagina, prTitulo,prIcon,prHeigth='600px'){
        //alert(prPagina);
        //$("#usuario").on('click', function(){            
            $.Dialog({
                shadow: true,
                overlay: true,
                flat: true, 
                padding: 10,                
                icon: '<span class="'+prIcon+'"></span>',
                title: prTitulo,
                height : prHeigth,
                content: ' <div id="conteudo" class="span7" style="overflow-y: scroll"></div>',                
                onShow: function(_dialog){
                   console.log(_dialog);
                    
                }
            });
            $('#conteudo').load('./view/'+prPagina);
            $.Metro.initInputs();
        //});
    }

    function loadSection(prPagina,prSecao=""){
        $('#dados').load('./view/'+prPagina+'.php');

    }    
    </script>


<!-- Load JavaScript Libraries -->
<script src="./_metroUI/js/jquery/jquery.min.js"></script>
    <script src="./_metroUI/js/jquery/jquery.widget.min.js"></script>
    <script src="./_metroUI/js/jquery/jquery.mousewheel.js"></script>
    <script src="./_metroUI/js/jquery/jquery.easing.1.3.min.js"></script>
    <script src="./_metroUI/js/holder/holder.js"></script>
    <script src="./_metroUI/js/prettify/prettify.js"></script>
    <script src="./_metroUI/js/start-screen.js"></script>
    <script type="text/javascript" src="./_metroUI/rtf/jquery.richtext.js"></script>
    
	 
    <!-- Local JavaScript -->
    <script src="./_metroUI/js/load-metro.js"></script>
    <!-- Local JavaScript -->
    <script src="./_metroUI/js/docs.js"></script>
    <script src="./_metroUI/js/github.info.js"></script>
    
    <!-- Tablet Sort -->
    <script src="./_metroUI/js/tablesort_metro.js"></script>
<script language='javascript'>

    loadSection("categoria","");
</script>
<!--script src="./_metroUI/js/hitua.js"></script-->

</html>



    

    