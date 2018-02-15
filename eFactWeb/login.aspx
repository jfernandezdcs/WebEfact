<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="eFactWeb.login" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>eFact</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     
      <!-- CSS -->
    <link href="/libEstilos/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="/libEstilos/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="/libEstilos/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="/libEstilos/css/style.css" rel="stylesheet" />
    <link href="/libEstilos/css/main-style.css" rel="stylesheet" />
    <!-- Page- CSS -->
    <link href="/libEstilos/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
    
    <script type="text/javascript">
        function alerta() {
            alert('Usuario y/o Contraseña Invalidos !');
        }
    </script>
     
</head>
<body class="body-Login-back">

 <div class="container">
       
        <div class="row">
            <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
              <img src="libEstilos/img/logo.png" alt=""/>
                </div>
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">                  
                    <div class="panel-heading">
                        <h3 class="panel-title">Inicio Sesion</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" runat="server">
                            <fieldset>
                                <div class="form-group">
                                    Usuario<asp:TextBox ID="txb_usr" class="form-control" placeholder="Usuario" required="true"  runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    Contraseña<asp:TextBox ID="txb_pass" class="form-control" placeholder="Contraseña" required="true" runat="server"></asp:TextBox>
                                </div>
                           
                                <!-- Change this to a button or input when using this as a form -->
                                <asp:Button ID="btn_inicio" class="btn btn-lg btn-success btn-block" runat="server" Text="Ingresar" />
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

  
    
    
    <script  type="text/javascript" src="/libEstilos/plugins/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="/libEstilos/plugins/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="/libEstilos/plugins/metisMenu/jquery.metisMenu.js"></script>
    
</body>
</html>
