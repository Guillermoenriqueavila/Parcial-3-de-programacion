<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menú.aspx.cs" Inherits="Parcial_III.Menú" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/styleregistro.css" />
    <link rel="stylesheet" href="CSS/stylegeneral.css" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
</head>

<body>
    <form id="form2" runat="server">
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Menú</a>
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
            <div class="userlog">
                <i class="uil uil-user"></i>
                <asp:Label Text="text" ID="userlog" runat="server" />
            </div>
            
            <div class="rangolog">
                <i class="uil uil-key-skeleton-alt"></i>
                <asp:Label Text="text" ID="rangolog" runat="server" />
            </div>
        </section>
    </form>
</body>
</html>
