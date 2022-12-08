<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Parcial_III.login" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
    <link rel="stylesheet" href="CSS/stylelogin.css" />
</head>
<body>
    <div class="section">
        <div class="container">
            <div class="row full-height justify-content-center">
                <div class="col-12 text-center align-self-center py-5">
                    <div class="section pb-2 pt-2 pt-sm-2 text-center">
                        <h6 class="mb-0 pb-2"><span>Iniciar Sesión</span></h6>
                        <form id="form1" runat="server">
                            <div class="card-3d-wrap mx-auto">
                                <div class="card-3d-wrapper">
                                    <div class="card-front">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Iniciar Sesión</h4>
                                                <div class="form-group">
                                                    <asp:TextBox ID="txtUsuario" class="form-style" runat="server" placeholder="Usuario"></asp:TextBox>
                                                    <i class="input-icon uil uil-user"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" class="form-style" placeholder="Contraseña"></asp:TextBox>
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <br />
                                                <asp:Button Text="Ingresar" runat="server" ID="txtIngresar" Class="btn btn-light" OnClick="txtIngresar_Click" />
                                                <br /><br />
                                                <asp:Label ID="lbError" runat="server"></asp:Label>
                                                <p class="mb-0 mt-4 text-center"><a href="#" class="link">¿Olvidaste tu contraseña?</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
