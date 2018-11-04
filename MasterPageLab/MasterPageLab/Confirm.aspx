<%@ Page Title="Second Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="MasterPageLab.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .in{
          padding-left:15px ;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
      <div class="in">
              <h1>Request Confirmation</h1>
              <h3>Please confirm your reservation request</h3>

                   <div class="form-group ">
                       <asp:Label CssClass="col-sm-3 " runat="server" Text="">Full Name</asp:Label>
                    <div class="col-sm-4">
                         <asp:label Id="lblfullname" runat="server"></asp:label>
                    </div>
                   </div>

                 <div class="form-group">
                     <asp:Label CssClass="col-sm-3  " runat="server" Text="">Phone Number</asp:Label>
                    <div class="col-sm-4">
                         <asp:label Id="lblnumber" runat="server"></asp:label>
                    </div>
                   </div>

                 <div class="form-group">
                     <asp:Label CssClass="col-sm-3 " runat="server" Text="">Email Address</asp:Label>
                    <div class="col-sm-4">
                         <asp:label Id="lblemail" runat="server"></asp:label>
                    </div>
                   </div>
              
                <div class="form-group">
                    <asp:Label CssClass="col-sm-3 " runat="server" Text="">Preffered Methord</asp:Label>
                    <div class="col-sm-4">
                         <asp:label Id="lblpayment" runat="server"></asp:label>
                    </div>
                   </div>

                 <h3>Request Date</h3>
                 <div class="form-group">
                     <asp:Label CssClass="col-sm-3" runat="server" Text="">Arrival Date</asp:Label>
                    <div class="col-sm-4">
                         <asp:label Id="lblarrivaldate"  runat="server"></asp:label>                       
                    </div>
                   </div>

                 <div class="form-group">
                     <asp:Label CssClass="col-sm-3 " runat="server" Text="">Departure Date</asp:Label>
                    <div class="col-sm-4">
                         <asp:label Id="lbldeparturedate" runat="server"></asp:label>
                    </div>
                   </div>
                 
                 <div class="form-group">
                     <asp:Label CssClass="col-sm-3 " runat="server" Text="">No. of People</asp:Label>
                    <div class="col-sm-4">
                         <asp:label Id="lblpeople"  runat="server"></asp:label>
                    </div>
                   </div>

                 <div class="form-group">
                     <asp:Label CssClass="col-sm-3 " runat="server" Text="">Bed Type</asp:Label>
                    <div class="col-sm-4">
                         <asp:label Id="lblbedtype" runat="server"></asp:label>
                    </div>
                   </div>

                   <div class="form-group">
                       <asp:Label CssClass="col-sm-3 " runat="server" Text="">Special Note</asp:Label>
                    <div class="col-sm-4">
                         <asp:label Id="lblspecialmote"  runat="server"></asp:label>
                    </div>
                   </div>
                  
                  
                
     
                 <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblmessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>

            
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Confirm Request" OnClick="btnSubmit_Click"
                             CssClass="btn btn-success"  />
                        <asp:Button ID="btnClear" runat="server" Text="Modify Request" PostBackUrl="~/Reservation.aspx"
                             CssClass="btn btn-primary"  />
                    </div>
                </div> 

            <%-- message label --%>
                <div class="form-group text-center">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="Label1" runat="server" CssClass="text-info"></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>

          </div>
</asp:Content>

<asp:Content ID="footer" runat="server" ContentPlaceHolderID="footerContentPlaceHolder">
      <p class="text-left modal-footer">&copy; <asp:Label ID="lblYear" runat="server"></asp:Label> 
                 Royal Inns and Suites . Reservation</p>
           
</asp:Content>