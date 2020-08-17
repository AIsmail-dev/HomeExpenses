<%@ Page Title="اضافة مدفوع" Language="C#" MasterPageFile="~/MainMasterPage.master" Async="true" AutoEventWireup="true" CodeFile="AddExpense.aspx.cs" Inherits="HomeExpenses.Web.AddExpense" %>
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
        .background-edit-Item {
      
            background: url('../css/img/edit-item.jpg');
            
            background-position: center center;
            background-size:cover;
            background-attachment:fixed;
        }
        .background-edit-Item__wapper{
            background-color:rgb(0, 0, 0,0.9);
            padding:88px 0;
        }
        option {
            color:#000;
        }
        
    </style>
<div class="background-edit-Item">
    <div class="background-edit-Item__wapper">
    <h1 class="text-center pb-5" style="color: white;
    font-weight: 800;">اضافة مدفوع</h1>
    <div class="container">
    <div class="row no-gutters mx-auto justify-content-center">
        <div class="col-md-10">
            <div class="row">
            <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">الصنف</label>
                <select id="slcItemId" name="slcItemId" runat="server" class="form-control" onchange="changeItem()">
                </select>
            </div>
                </div>

            <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">اسم المدفوع</label>
                <input id="txtName" name="txtName" runat="server" class="form-control" onfocus="selectName()" />
            </div>
                </div>

            <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">سعر المدفوع</label>
                <input id="txtPrice" name="txtPrice" runat="server" class="form-control" onfocus="selectPrice()" />
            </div>
                </div>
            <div class="col-md-6">
            <div class="form-group">
                <label class="control-label">شهر المدفوع</label>
                <select id="slcRelatedMonth" name="slcRelatedMonth" runat="server" class="form-control">
                    <option value="1-7-2020">7 / 2020</option>
                    <option value="1-8-2020">8 / 2020</option>
                    <option value="1-9-2020">9 / 2020</option>
                    <option value="1-10-2020">10 / 2020</option>
                    <option value="1-11-2020">11 / 2020</option>
                    <option value="1-12-2020">12 / 2020</option>
                    <option value="1-1-2021">1 / 2021</option>
                    <option value="1-2-2021">2 / 2021</option>
                    <option value="1-3-2021">3 / 2021</option>
                    <option value="1-4-2021">4 / 2021</option>
                    <option value="1-5-2021">5 / 2021</option>
                    <option value="1-6-2021">6 / 2021</option>
                    <option value="1-7-2021">7 / 2021</option>
                    <option value="1-8-2021">8 / 2021</option>
                    <option value="1-9-2021">9 / 2021</option>
                    <option value="1-10-2021">10 / 2021</option>
                    <option value="1-11-2021">11 / 2021</option>
                    <option value="1-12-2021">12 / 2021</option>
                </select>
            </div>
                </div>
                <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">التفاصيل</label>
                <textarea id="txtDescription" name="txtDescription" style="border-radius:unset" runat="server" class="form-control" />
            </div>
                    </div>
                <div class="col-md-6 ">
            <div class="form-group d-flex align-items-center">
                <label class="control-label">تم السداد</label>
                <input id="chkPayed" runat="server" type="checkbox" class="form-control" />
            </div>
                    </div>

                <div class="col-md-6 ">
            <div class="form-group d-flex align-items-center">
                <asp:Button id="btnSave" runat="server" Text="حفظ " OnClick="BtnSave_Click" class="btn btn-success pr-4 pl-4"/>
                <a href="AllExpenses.aspx" class="btn btn-info mr-3 pr-4 pl-4">العودة</a>
            </div>
                    </div>
        </div>
    </div>
    </div>
        </div>
    </div>
    </div>
    <script>
        function changeItem() {
            var e = document.getElementById('<%: slcItemId.ClientID %>');
            document.getElementById('<%: txtName.ClientID %>').value = e.selectedOptions[0].attributes["name"].value;
            document.getElementById('<%: txtPrice.ClientID %>').value = e.selectedOptions[0].attributes["price"].value;
        }
        <%if (string.IsNullOrEmpty(Request.QueryString["ExpenseId"]))
        {%>
        changeItem();
        <% } %>
        document.getElementById('<%: slcItemId.ClientID %>').focus();
        function selectPrice() {
            document.getElementById('<%: txtPrice.ClientID %>').select();
        }
        function selectName() {
            document.getElementById('<%: txtName.ClientID %>').select();
        }
    </script>
</asp:Content>
