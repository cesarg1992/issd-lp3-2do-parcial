<%@ Page Title="Registro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="MasterPageNavbarForms.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="title"><%: Title %>.</h2>
    <asp:Label ID="lblUserName" runat="server" Text="Usuario"></asp:Label>
    
    <br />
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="usuarioValidator" CssClass="text-danger" runat="server" ControlToValidate="txtUserName" ErrorMessage="Ingrese su nombre de usuario"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
    <br />
    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
    <br />
    <asp:RegularExpressionValidator ControlToValidate="txtCorreo" ID="correoRegularValidator" runat="server" ErrorMessage="Formato incorrecto" CssClass="text-danger" ValidationExpression="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}"></asp:RegularExpressionValidator>
    <br />
    <asp:RequiredFieldValidator ID="correoValidator" CssClass="text-danger" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Ingrese su correo"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>
    <br />
    <asp:TextBox ID="txtPass" TextMode="Password" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="passValidator" CssClass="text-danger" runat="server" ControlToValidate="txtPass" ErrorMessage="Ingrese contraseña"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblConfirmar" runat="server" Text="Repetir contraseña"></asp:Label>
    <br />
    <asp:TextBox ID="txtConfirmar" TextMode="Password" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="confirmarValidator" CssClass="text-danger" runat="server" ControlToValidate="txtConfirmar" ErrorMessage="Confirme contraseña"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="confirmarCompareValidator" runat="server" ErrorMessage="Las contraseñas no coinciden" ControlToValidate="txtConfirmar" ControlToCompare="txtPass" CssClass="text-danger"></asp:CompareValidator>
    <br />
    <asp:Label ID="lblEdad" runat="server" Text="Edad"></asp:Label>
    <br />
    <asp:TextBox ID="txtEdad" runat="server" TextMode="Number"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="edadValidator" CssClass="text-danger" runat="server" ControlToValidate="txtEdad" ErrorMessage="Ingrese edad"></asp:RequiredFieldValidator>
    <br />
    <asp:RangeValidator ID="edadRangeValidator" runat="server" ErrorMessage="Tiene que ser mayor a 15 años" ControlToValidate="txtEdad" CssClass="text-danger" MaximumValue="99" MinimumValue="15"></asp:RangeValidator>
    <br />
    <asp:Button CssClass="btn btn-primary" ID="btnRegistrar" runat="server" Text="Guardar" OnClick="btnRegistrar_Click" />
</asp:Content>
