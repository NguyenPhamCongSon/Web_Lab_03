<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="bt1.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Validate</title>
<script language="javascript">
    function getValue(id) {
        return document.getElementById(id).value.trim();
    }
    function showError(key, mess) {
        document.getElementById(key + '_error').innerHTML = mess;
    }
    function validate() {
        var flag = true;
        var masv = getValue('masv');
        if (masv == '' || masv.length != 10 || !/^[a-zA-Z0-9]+$/.test(masv)) {
            flag = false;
            showError('masv', 'masv gồm 10 ký tự');
        }
        var username = getValue('username');
        if (username == '' || username.length > 30 || !/^[a-zA-Z0-9]+$/.test(username)) {
            flag = false;
            showError('username', 'họ tên không rỗng và phải < 30 ký tự');
        }
        var age = getValue('age');
        if (age == '' || age < 18 || !/^[a-zA-Z0-9]+$/.test(age)) {
            flag = false;
            showError('age', 'tuổi phải 18 trở lên');
        }

        return flag;
    }
    function genderChanged(obj) {
        var message = document.getElementById('show_message');
        var value = obj.value;
        if (value === 'hệ thống') {
            message.innerHTML = "“Phân tích & Thiết kế”";
        }
        else if (value === 'phần mềm') {
            message.innerHTML = "“Lập trình”";
        }
        else if (value === 'mạng máy tính') {
            message.innerHTML = "“Quản lý mạng”";
        }
    }

</script>
</head>
<body>
    <form id="form1"  runat="server" >
       <h5>PHIẾU THAM GIA CÂU LẠC BỘ TIN HỌC LUBU</h5>
        <table border="1" >
       <tr>
          <td>Mã sinh viên:</td>
            <td>
              <input type="text" id="masv" name="masv" value="" />
              <span id="masv_error"></span>
            </td>
       </tr>
       <tr>
          <td>Họ và tên:</td>
            <td>
              <input type="text" id="username" name="username" value="" />
              <span id="username_error"></span>
            </td>
       </tr>
       <tr>
          <td>Tuổi:</td>
          <td>
           <input type="text" id="age" name="age" value="" />
            <span id="age_error"></span>
         </td>
      </tr>
      <tr>
        <td>Ngoại ngữ:</td>
        <td>
            <input type="checkbox" id="language" name="language"/><label>Anh</label> 
            <input type="checkbox" id="language" name="language"/><label>Pháp</label>
            <input type="checkbox" id="language" name="language"/><label>Nhật</label>
          <span id="language_error"></span>
       </td>
      </tr>
         <tr>
           <td>Chuyên ngành:</td>
             <td>
              <select id="gender" onchange="genderChanged(this)">
                   <option value="hệ thống">Hệ thống</option>
                   <option value="phần mềm">Phần mềm</option>
                   <option value="mạng máy tính">Mạng máy tính</option>
              </select>
                 
            </td>
         </tr>
       <tr>
           <td>Sở trường:</td>
             <td>
              <p style="color:black" id="show_message"></p>
            </td>
       </tr>
     <tr>
       <td></td>
             <td>
                <input type="submit" onclick="return validate();" id="btn" name="btn" value="Đăng ký" />
             </td>
     </tr>
    </table>
  </form>
</body>
</html>
