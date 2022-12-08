<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultar.aspx.cs" Inherits="Parcial_III.Consultar" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultar</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/styleregistro.css" />
    <link rel="stylesheet" href="CSS/stylegeneral.css" />
</head>

<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Consultar estudiantes</a>
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
        <section class="table-me">
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-dark table-striped fs-9" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" DataKeyNames="ID">
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="id" />
                    <asp:BoundField HeaderText="CODIGO" DataField="codigo" />
                    <asp:BoundField HeaderText="NOMBRE" DataField="nombre" />
                    <asp:BoundField HeaderText="USUARIO" DataField="usuario" />
                    <asp:BoundField HeaderText="CONTRASEÑA" DataField="contraseña" />
                    <asp:BoundField HeaderText="RANGO" DataField="rango" />
                    <asp:BoundField HeaderText="TELEFONO" DataField="telefono" />
                    <asp:BoundField HeaderText="CORREO" DataField="correo" />
                    <asp:BoundField HeaderText="FACULTAD" DataField="facultad" />
                    <asp:BoundField HeaderText="CARRERA" DataField="carrera" />
                    <asp:ButtonField Text="ELIMINAR" CommandName="ELIMINAR" ButtonType="Button">
                    <ControlStyle CssClass="btn btn-danger button-table-me" />
                    </asp:ButtonField>
                    <asp:ButtonField Text="MODIFICAR" CommandName="MODIFICAR" ButtonType="Button" >
                    <ControlStyle CssClass="btn btn-primary button-table-me" />
                    </asp:ButtonField>
                </Columns>
            </asp:GridView>

        </section>
        <section class="table-me">

            <asp:GridView ID="GridView2" CssClass="table table-dark table-striped fs-9" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="CODIGO" />
                    <asp:BoundField DataField="nombre" HeaderText="NOMBRE" />
                    <asp:BoundField DataField="correo" HeaderText="CORREO" />
                    <asp:BoundField DataField="facultad" HeaderText="FACULTAD" />
                    <asp:BoundField DataField="carrera" HeaderText="CARRERA" />
                </Columns>
            </asp:GridView>

        </section>
    </form>
</body>

</html>
