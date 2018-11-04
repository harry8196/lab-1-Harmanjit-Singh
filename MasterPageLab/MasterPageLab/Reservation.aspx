<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="MasterPageLab.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Reservation</title>

     <style>
        .in{
          padding-left:15px ;
           }
        .arive{
            padding-bottom:15px;
              }
    </style>
</asp:Content>
<asp:Content ID="aaa" runat="server" ContentPlaceHolderID="mainContentPlaceHolder">
  
         <div class="in">
             <h1>Reservation Request</h1>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-center text-danger" Font-Size="Small" DisplayMode="List"/>
                <h3>Request data</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Arrival Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtArrivalDate" runat="server" TextMode="Date"
                             CssClass="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtArrivalDate" 
                        Display="Dynamic" ErrorMessage="Arrival Date is Required. " CssClass="text-danger" Font-Size="Small">*</asp:RequiredFieldValidator>

                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Departure Date Must be Greater than Arrival Date.  " ControlToValidate="txtArrivalDate"
                            ControlToCompare="txtDepartureDate" Operator="LessThan">*</asp:CompareValidator>
                        </div>
                </div>
                <div class="form-group arive">
                    <label class="col-sm-3 control-label">Departure Date</label>
                    <div class="col-sm-4">
                         <asp:TextBox ID="txtDepartureDate" runat="server" TextMode="Date"
                             CssClass="form-control"></asp:TextBox>    
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDepartureDate" 
                        Display="Dynamic" ErrorMessage="Departure Date is Required. " CssClass="text-danger" Font-Size="Small">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Number of people</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlnumofpeople" runat="server" CssClass="form-control" >
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5 or More</asp:ListItem>
                        </asp:DropDownList>
                        <!-- drop-down -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Bed Type</label>
                    <div class="col-sm-9 bedtype">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="radioButtonList" Width="350px"  >
                            <asp:ListItem > King Size</asp:ListItem>
                            <asp:ListItem> Two Queens Size</asp:ListItem>
                            <asp:ListItem> One Queen Size</asp:ListItem>
                        </asp:RadioButtonList>
                        <!-- radio buttons -->
                    </div>
                </div>

                <h3>Special requests</h3>
                <div class="form-group">
                    <div class="col-sm-7">
                        <asp:TextBox ID="txtSpecialRequest" TextMode="MultiLine" runat="server" CssClass="form-control" Height="100" Width="410"></asp:TextBox>
                     
                    </div>
                </div>

                <h3>Contact information</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirstName" 
                        Display="Dynamic" ErrorMessage="First Name is Required. " CssClass="text-danger" Font-Size="Small">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <!-- text box -->
                        <asp:TextBox ID="txtLastname" runat="server"
                            CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLastName" 
                        Display="Dynamic" ErrorMessage="Last Name is Required. " CssClass="text-danger" Font-Size="Small">*</asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                         <asp:TextBox ID="txtEmail" runat="server"
                            CssClass="form-control"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" 
                        Display="Dynamic" ErrorMessage="Email Addess is Required. " CssClass="text-danger" Font-Size="Small">*</asp:RequiredFieldValidator>

                        <!-- text box -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Telephone number</label>
                    <div class="col-sm-4">
                         <asp:TextBox ID="txtNumber" runat="server"
                            CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNumber" 
                        Display="Dynamic" ErrorMessage="Telephone number is Required. " CssClass="text-danger" Font-Size="Small">*</asp:RequiredFieldValidator>

                        <!-- text box -->
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Preferred method</label>
                    <div class="col-sm-4">
                        <!-- drop down -->
                        <asp:DropDownList ID="ddlPreferred" runat="server" DataValueField="Numbers" 
                            CssClass="form-control">
                            <asp:ListItem Value="Email">Email</asp:ListItem>
                            <asp:ListItem Value="Telephone">Telephone</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <%-- Submit and Clear buttons --%>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" 
                             CssClass="btn btn-primary"  />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click"
                             CssClass="btn btn-primary"  />
                    </div>
                </div> 
            
                <%-- message label --%>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>
             </div>
 
</asp:Content>

<asp:Content ID="footer" runat="server" ContentPlaceHolderID="footerContentPlaceHolder">
 
     <p class="text-left modal-footer">&copy; <asp:Label ID="lblYear" runat="server"></asp:Label> 
                 Royal Inns and Suites . Reservation</p>
</asp:Content>