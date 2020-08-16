<%@ Page Title="صفحة الدخول" Language="C#" MasterPageFile="~/MainMasterPage.master" Async="true" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="HomeExpenses.Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        /** .backgound-wrapper {
            background:url('../css/img/background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }
       .backgound-shap {
            background: url('../css/img/Untitled-2.png');
            background-size: cover;
            background-repeat: no-repeat;
            width: 100%;
            height:100%;
        }*/
        .inputWithIcon {
            position: relative;
        }

            .inputWithIcon i {
                position: absolute;
                left: 0;
                top: 2px;
                padding: 9px 8px;
                color: #aaa;
                transition: 0.3s;
            }
            input[type=text] {
                color:#07085b;
            }
            @media (min-width: 280px) and (max-width: 767.98px) { 
                .form-login {
                    order: 1;
                    padding-bottom:50px !important;
                }
                .form-login h1 {
                    padding: 30px 0px !important;
                }
                .backgound-wrapper {
                    margin: 20px 0 20px !important;
                }
                .backgound-shap {
                    padding-top:30px;
                }

            }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="backgound-wrapper" style="margin: 80px 0 30px">
    
    <div class="row justify-content-center align-content-center no-gutters">

        <div class="col-md-8" style="background:#fff; border-radius:9px; margin:25px 0; box-shadow: 0 10px 30px rgba(0,0,0,.1);"> 

            <div class="row no-gutters">
        
            
            <div class="col-md-6 form-login" style="padding-bottom: 60px;">
            <span id="errorMessage" runat="server" class="text-danger"></span>
                            <h1 class="text-center" style="padding:80px 0px; font-size:30px; color:#09075B">تسجيل الدخول</h1>
                <div class="form-wrapper" style="padding: 0 30px">
            <div class="form-group inputWithIcon">
                <i class="fas fa-user" style="color:#07085b"></i>
                <input id="txtEmail" runat="server" class="form-control"  style="border-radius:25px"/>
            </div>
            <div class="form-group inputWithIcon">
                <i class="fas fa-unlock-alt" style="color:#07085b"></i>
                <input id="txtPassword" type="password" runat="server" class="form-control" style="border-radius:25px" />
            </div>
            <div class="form-group">
                <asp:Button id="btnSave" CssClass="btn btn-primary" style="width:100%; border-radius:25px; background:#55769f" runat="server" Text="الدخول" OnClick="BtnSave_Click" />
            </div>            
        </div>
                </div>
                <div class="col-md-6 backgound-shap">
          <img src="../css/img/login1.jpg" class="img-fluid" style="height:100%; width:100% "/>
        </div>
                </div>
    </div>
</div>
</section>
</asp:Content>
