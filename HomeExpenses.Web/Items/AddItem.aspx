<%@ Page Title="اضافة صنف" Language="C#" MasterPageFile="~/MainMasterPage.master" Async="true" AutoEventWireup="true" CodeFile="AddItem.aspx.cs" Inherits="HomeExpenses.Web.AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        #ContentPlaceHolder1_slcItemId,#ContentPlaceHolder1_slcRelatedMonth {
            padding:3px;
        }
        .form-control:focus {
    color: #495057;
    background-color: transparent;
    border-color: #80bdff;
    outline: 0;
    box-shadow: 0 0 0 0.2rem rgba(0,123,255,.25);
    color:#fff;
}
        label {
            color:#fff;
        }
        .form-control {
            border-radius:unset;
            background-color: transparent;
            color:#fff;
            border: none;
            border-right :1px solid #fff !important;
            border-bottom:1px solid #fff !important;
        }
        .backgrouns-addItem {
      
            background: url('../css/img/add-item.jpg');
            
            background-position: center center;
            background-size:cover;
            background-attachment:fixed;
        }
        .backgrouns-addItem__wapper{
            background-color:rgb(0, 0, 0,0.9);
            padding:108px 0;
        }
        option {
            color:#000;
        }
        
    </style>
    <div class="backgrouns-addItem">
        <div class="backgrouns-addItem__wapper">
            <div class="container">
    <h1 class="text-center pb-5" style="color: white;
    font-weight: 800;">اضافة صنف</h1>
    <div class="row no-gutters">
        <div class="col-md-10 mx-auto">
            <div class="row">
                <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">اسم الصنف</label>
                <input id="txtName" runat="server" class="form-control" />
            </div>
                    </div>
                <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">سعر الصنف</label>
                <input id="txtPrice" runat="server" class="form-control" />
            </div>
                    </div>
                <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">نوع الصنف</label>
                <select id="slcItemType" runat="server" class="form-control">
                    <option value="1">شهرية</option>
                    <option value="2">سنوية</option>
                    <option value="3">يتكرر يعد شهور</option>
                </select>
            </div>
                    </div>
                <div class="col-md-12">
               <div class="row">
              

                    <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">مدة الشهور</label>
                <input id="txtMonthsPeriod" runat="server" class="form-control" />
            </div>
                        </div>
                     <div class="col-md-6">
            <div class="form-group d-flex align-items-center">
                <label class="control-label">صنف افتراضى</label>
                <input id="chkDefaultIncluded" runat="server" type="checkbox" class="form-control" />
            </div>
                    </div>
                   </div>
                    </div>
                        <div class="col-md-6">
            <div class="form-group">
                <asp:Button id="btnSave" runat="server" Text="حفظ" OnClick="BtnSave_Click" class="btn btn-success pr-4 pl-4"/>
                <a href="AllItems.aspx" class="btn btn-info mr-3 pr-4 pl-4">العودة</a>
            </div>  
                            </div>
        </div>
    </div>
    </div>
        </div>
        </div>
    </div>
</asp:Content>
