<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MasterPageNavbarForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">2DO DESEMPEÑO</h1>
            <a runat="server" href="~/Registro">Formulario de registro</a>
            <a runat="server" href="~/GestionArchivos">Gestión de archivos</a>
        </section>
    </main>

</asp:Content>
