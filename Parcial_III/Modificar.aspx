<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificar.aspx.cs" Inherits="Parcial_III.Modificar" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar</title>   
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
    <link rel="stylesheet" href="CSS/styleregistro.css" />
    
</head>

<body>
    <form id="form2" runat="server">
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Modificar estudiante</a>
         
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item p-1">
                            <asp:Button Text="Ingresar" runat="server" ID="txtIngresar" Class="btn btn-primary" OnClick="txtIngresar_Click" />
                        </li>
                        <li class="nav-item p-1">
                            <asp:Button Text="Consultar" runat="server" ID="txtConsultar" Class="btn btn-primary" OnClick="txtConsultar_Click" />
                        </li>
                        <li class="nav-item p-1">
                             <asp:Button Text="Cerrar Sesión" runat="server" ID="txtCerrar" Class="btn btn-primary" OnClick="txtCerrar_Click" />
                        </li>
                    </ul>

                </div>

            </div>
        </nav>
        <section class="container">
            <asp:Label Text="text" id="idoculto" runat="server" Visible="true"/>
            <div class="row full-height justify-content-center">
                <div class="col-12 text-center py-1">
                    <div class="section text-center">
                        <div class="card-3d-wrap mx-auto">
                            <div class="card-3d-wrapper">
                                <div class="card-front">
                                    <div class="center-wrap">
                                        <div class="section text-center">
                                            <h4 class="mb-4 pb-3">Modificar estudiante</h4>
                                            <div class="form-group">
                                                <asp:TextBox ID="txtNombre" AutoPostBack="true" class="form-style" runat="server" placeholder="Nombre" />
                                                <i class="input-icon uil uil-user"></i>

                                            </div>
                                            <div class="form-group mt-2">
                                                <asp:TextBox ID="txtCodigo" AutoPostBack="true" runat="server" class="form-style" placeholder="Código" />
                                                <i class="input-icon uil uil-user-square"></i>
                                            </div>
                                            <div class="form-group mt-2">
                                                <asp:TextBox ID="txtCorreo" AutoPostBack="true" runat="server" class="form-style" placeholder="Correo" />
                                                <i class="input-icon uil uil-at"></i>

                                            </div>
                                            <div class="form-group mt-2">
                                                <asp:TextBox ID="txtTelefono" AutoPostBack="true" runat="server" class="form-style" placeholder="Teléfono" />
                                                <i class="input-icon uil uil-phone"></i>
                                            </div>
                                            <div class="form-group mt-2">
                                                <asp:TextBox ID="txtUsuario" AutoPostBack="true" runat="server" class="form-style" placeholder="Usuario" />
                                                <i class="input-icon uil uil-user-plus"></i>
                                            </div>
                                            <div class="form-group mt-2">
                                                <asp:TextBox ID="txtContrasenna" AutoPostBack="true" runat="server" class="form-style" placeholder="Contraseña" />
                                                <i class="input-icon uil uil-key-skeleton-alt"></i>
                                            </div>
                                            <div class="form-group mt-2">
                                                <asp:DropDownList ID="ddRango"  AutoPostBack="true" runat="server" class="form-style" />
                                                <i class="input-icon uil uil-key-skeleton-alt"></i>
                                                <%--<asp:TextBox ID="txtRango" runat="server" class="form-style" placeholder="Rango" />
                                                <i class="input-icon uil uil-key-skeleton-alt"></i>--%>
                                            </div>
                                            <div class="form-group mt-2">
                                                
                                                                <asp:DropDownList ID="ddLista" AutoPostBack="true" runat="server" class="form-style"/>
                                                <i class="input-icon uil uil-book"></i>

                                            </div>
                                            <div class="form-group mt-2">
                                                
                                                                <asp:DropDownList ID="ddCarrera" AutoPostBack="true" runat="server" class="form-style" />
                                                <i class="input-icon uil uil-graduation-cap"></i>
                                            </div>
                                            <br />
                                            <asp:Button Text="Actualizar" runat="server" ID="Button1" CssClass="btn btn-light" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        
    </form>
</body>

</html>