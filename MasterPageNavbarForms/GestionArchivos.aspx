<%@ Page Title="Gestión de archivos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionArchivos.aspx.cs" Inherits="MasterPageNavbarForms.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>
    </h2>
    </main>
    <asp:FileUpload ID="subirArchivo" runat="server" />
    <asp:Button ID="btnSubirArchivo" runat="server" Text="Subir" CssClass="btn btn-primary" OnClick="btnSubirArchivo_Click" />
    <asp:GridView ID="gvArchivos" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Archivo" HeaderText="Archivo" />
            <asp:HyperLinkField HeaderText="Descargar" 
                    DataNavigateUrlFields="Descargar"
                    DataNavigateUrlFormatString="Descargar.aspx?id={0}"
                    Text="Haga click aqui" NavigateUrl="Descargar"/>
        </Columns>
    </asp:GridView>
</asp:Content>
