<%@ Page Title="Persona" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Persona.aspx.vb" Inherits="Persona.Persona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Tipo Documento" CssClass="control-label"></asp:Label>
        <asp:DropDownList ID="ddlTipoDocumento" runat="server" CssClass="form-control">
            <asp:ListItem Text="Selecciones un tipo de documento" Value="" />
            <asp:ListItem Text="Cedula Fisica" Value="1" />
            <asp:ListItem Text="Cedula Juridica" Value="2" />
            <asp:ListItem Text="Pasaporte" Value="3" />
        </asp:DropDownList>
    </div>
    <%--Validacion de tipo documento--%>
    <asp:RequiredFieldValidator ID="rtvtipodocumento" runat="server" ErrorMessage="Es necesario seleccionar un tipo de documento" ControlToValidate="ddlTipoDocumento" Display="Dynamic"></asp:RequiredFieldValidator>

    <div class="form-group">
        <asp:Label ID="lblNumdoc" runat="server" Text="Documento" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtDocumento" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:RequiredFieldValidator ID="rfvDocumento" runat="server" ErrorMessage="Es necesario indicar el numero de documento" ControlToValidate="txtDocumento" Display="Dynamic"></asp:RequiredFieldValidator>

    <div class="form-group">
        <asp:Label ID="lblNombre" runat="server" Text="Nombre" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" placeholder="Alexander" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Es necesario indicar el nombre" ControlToValidate="txtNombre" Display="Dynamic"></asp:RequiredFieldValidator>


    <div class="form-group">
        <asp:Label ID="lblApellidos" runat="server" Text="Apellidos" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtApellidos" runat="server" placeholder="Suarez Rodriguez" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:RequiredFieldValidator ID="rfvApellidos" runat="server" ErrorMessage="Es necesario indicar los apellidos" ControlToValidate="txtApellidos" Display="Dynamic"></asp:RequiredFieldValidator>


    <div class="form-group">
        <asp:Label ID="lblfechnac" runat="server" Text="FechaNacimiento" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtFechaNacimiento" runat="server" plcaholder="29/12/96" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </div>
    <%--Validacion de fecha de nacimiento--%>
    <asp:RequiredFieldValidator ID="rfvFechanac" runat="server" ErrorMessage="Es necesario indicar la fecha de nacimiento" ControlToValidate="txtFechaNacimiento" Display="Dynamic"></asp:RequiredFieldValidator>

    <div class="form-group">
        <asp:Label ID="lblCorreo" runat="server" Text="Correo" CssClass="control-label"></asp:Label>
        <asp:TextBox ID="txtCorreo" runat="server" placeholder="ejemplo@correo.com" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:RequiredFieldValidator ID="rfvcorreo" runat="server" ErrorMessage="Es necesario indicar el correo electronico" ControlToValidate="txtCorreo" Display="Dynamic"></asp:RequiredFieldValidator>


    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary my-2" OnClick="btnGuardar_Click" />

    <asp:Label ID="lblResultado" runat="server" Text="" CssClass="control-label"></asp:Label>

    <asp:GridView ID="gvPersonas" runat="server" AutoGenerateColumns="False" DataKeyNames="IDPersona" DataSourceID="SqlDataSource2" OnRowDeleting="gvPersonas_RowDeleting">
        <Columns>
            <asp:BoundField DataField="IDPersona" HeaderText="IDPersona" InsertVisible="False" ReadOnly="True" SortExpression="IDPersona" />
            <asp:BoundField DataField="TipoDocumento" HeaderText="TipoDocumento" SortExpression="TipoDocumento" />
            <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
            <asp:BoundField DataField="FechaNac" HeaderText="FechaNac" SortExpression="FechaNac" />
            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:II-46ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:II-46ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Personas]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:II-46ConnectionString %>" ProviderName="<%$ ConnectionStrings:II-46ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Personas]"></asp:SqlDataSource>

</asp:Content>
