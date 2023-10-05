<<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shoppingCart.aspx.cs" Inherits="Web_Lab_03.shoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Giỏ hàng</title>
 <%--<script type="text/html">--%>
 <%--<script language="Javascript">
     function calculate() {
         var dg = parseFloat(window.document.getElementById("dg").value);
         var sl = parseFloat(window.document.getElementById("sl").value);
         window.document.getElementById("tt").value = dg * sl;
     }
 </script>--%>
 <script language="Javascript" src="JavaScript.js"></script>
    <%--//vd5--%>
    <script language="javascript">
        function Respond() {
            var check = document.getElementsByName("checkbox");
            if (check[0].checked == true) {
                document.getElementById('huflit').innerHTML = 'Tôi là sinh viên khoa CNTT, trườngHuflit';
            }
            if (check[1].checked == true) {
                document.getElementById('huflit').innerHTML = 'Tôi không phải sinh viên khoa CNTT, trường Huflit';
            }
        };
         
    </script>
<%--    //vd6--%>
    <script language="javascript">
        function ResultView() {
            // Khai báo tham số
            var checkbox = document.getElementsByName('nutchon');
            var result = "";
            // Lặp qua từng checkbox để lấy giá trị
            for (var i = 0; i < checkbox.length; i++) {
                if (checkbox[i].checked === true) {
                    result += ' [' + checkbox[i].value + ']';
                }
            }
            // In ra kết quả
            alert("Sở thích là: " + result);
        };
    </script>
    <%--//vd7--%>
    <script language="javascript">
        // obj là tham số truyền vào và cũng chính là thẻ select
        function genderChanged(obj) {
            var message = document.getElementById('show_message');
            var value = obj.value;
            if (value === '') {
                message.innerHTML = "Bạn chưa chọn giới tính";
            }
            else if (value === 'nam') {
                message.innerHTML = "Bạn đã chọn giới tính nam";
            }
            else if (value === 'nu') {
                message.innerHTML = "Bạn đã chọn giới tính nữ";
            }
        };
    </script>
 <%--   //vd8--%>
    <script>
        // Lấy giá trị của một input : bỏ khoảng trắng 2 đầu
        function getValue(id) {
            return document.getElementById(id).value.trim();
        }
        // Hiển thị lỗi
        function showError(key, mess) {
            document.getElementById(key + '_error').innerHTML = mess;
        }
        // kiểm tra lỗi
        function validate() {
            var flag = true;
            // 1 username
            var username = getValue('username');
            if (username == '' || username.length < 5 || !/^[a-zA-Z0-9]+$/.test(username)) {
                flag = false;
                showError('username', 'Vui lòng kiểm tra lại Username');
            }
            // 2. password
            var password = getValue('password');
            var repassword = getValue('repassword');
            if (password == '' || password.length < 8) {
                flag = false;
                showError('password', 'Vui lòng kiểm tra lại Password');
            }
            // 3. repassword
            var repassword = getValue('repassword');
            if (password != repassword) {
                flag = false;
                showError('repassword', 'Vui lòng kiểm tra nhập lại Password');
            }
            return flag;
        } </script>
</head>
<body>
  <%--  //vd1234--%>
    <form id="form1"  runat="server" method="post">
        Đơn giá  <input type="number" id="dg" min="100" max="500" step="100" value="200" />
        Số lượng <input type="number" id="sl" min="1" max="9" step="1" value="1"
            <%--onkeyup="tt.value = parseFloat(dg.value)*parseFloat(sl.value)"--%>
            <%--onchange="tt.value = parseFloat(dg.value)*parseFloat(sl.value)"--%>
            <%--  onkeyup="calculate();"--%>
            onchange="calculate2();" />
        Thành tiền  <%--<input type="number" id="tt" readonly />--%>
        <span id="tt" style="background-color:red; color:yellow;"></span>    
    </form>
  <%--  //vd5--%>
        <form id="form2" >
        <h4>Bạn có phải là sinh viên cntt, trường Huflit không?</h4>
          <input type="radio" name="checkbox" id="chon" value="" />Phải<br/>
          <input type="radio" name="checkbox" id="chon" value="" />Không phải<br/>
          <input type="submit" value="Câu trả lời" onclick="Respond();" /><br/>
           <span id="huflit"></span>
        </form>
    <%--//vd6--%>
     <form >
    <h2>Hãy chọn các sở thích của bạn</h2>
      <input type="checkbox" name="nutchon" value="Đi chơi" /> <label>Đi chơi</label> <br />
      <input type="checkbox" name="nutchon" value="Đi du lịch" /> <label>Đi du lịch</label> <br />
      <input type="checkbox" name="nutchon" value="Đi ăn" /> <label>Đi ăn</label> <br />
      <input type="checkbox" name="nutchon" value="Đi siêu thị" /> <label>Đi siêu thị</label> <br/>
      <input type="checkbox" name="nutchon" value="học lập trình" /> <label>học lập trình</label><br />
      <input type="checkbox" name="nutchon" value="Ở nhà nghỉ ngơi" /> <label>Ở nhà nghỉ ngơi</label> <br /> <br />
      <input type="button" id="btn" value="Xem kết quả" onclick="ResultView();"/>
     </form>
   <%-- //vd7--%>
     <form >
    <h2>Chọn giới tính</h2>
       <p>In ra thông báo khi giới tính được thay đổi </p>
         <select id="gender" onchange="genderChanged(this)">
           <option value=""> -- Chọn -- </option>
           <option value="nam">Nam</option>
           <option value="nu"> Nữ </option>
        </select>
          <p style="color: red" id="show_message"></p>    </form>
 <%--   //vd8--%>
      <form>
       <table border="1" cellpadding="10">
         <tr><th colspan="2" style="text-align: center;"><h4>Đăng ký</h4></th></tr>
      <tr>
        <td>Tên đăng nhập: </td>
      <td>
        <input type="text" id="username" name="username" value="" />
         <span id="username_error"></span>
      </td>
     </tr>
       <tr>
         <td>Mật khẩu: </td>
          <td>
            <input type="text" id="password" name="password" value="" />
            <span id="password_error"></span>
         </td>
      </tr>
        <tr>
          <td>Nhập lại mật khẩu: </td>
            <td>
                <input type="text" id="repassword" name="repassword" value="" />
                <span id="repassword_error"></span>
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
