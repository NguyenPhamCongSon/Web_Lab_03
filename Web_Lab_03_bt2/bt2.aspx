<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bt2.aspx.cs" Inherits="Web_Lab_03_bt2.bt2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Bàitập2</title>
       <script language="javascript">
    function getValue(id)
{
    return document.getElementById(id).value.trim();
}
function showError(key, mess)
{
    document.getElementById(key + '_error').innerHTML = mess;
}
function Bàitập2()
{
    var username = getValue('username');
    if (username == '' || !/^[a-zA-Z0-9]+$/.test(username)) {
        flag = false;
        showError('username', 'Họ tên không rỗng ');
    }
    var str = getValue('str');
    if (str == ''  || !/^[a-zA-Z0-9]+$/.test(str)) {
        flag = false;
        showError('str', 'Không để trống địa chỉ');
    }
    var number = getValue('number');
    if (number == '' || number.length >= 10 ||!/^[a-zA-Z0-9]+$/.test(number)) {
        flag = false;
        showError('number', 'Không để trống số điện thoại');
    }
    var city = getValue('city');
    if (city == '' || !/^[a-zA-Z0-9]+$/.test(city)) {
        flag = false;
        showError('city', 'Không để trống thành phố');
    }
    var dis = getValue('dis');
    if (dis == '' || !/^[a-zA-Z0-9]+$/.test(dis)) {
        flag = false;
        showError('dis', 'Không để trống quận huyện');
    }
    var ward = getValue('ward');
    if (ward == '' || !/^[a-zA-Z0-9]+$/.test(ward)) {
        flag = false;
        showError('ward', 'Không để trống phường xã');
    }
    return flag;
           }
           function off() {            
                   alert("Bạn đã chọn văn phòng")
           }
           function ho() {
               alert("Bạn đã chọn nhà riêng")
           }
           
       </script>
   
</head>
<body>
    <form id="form1" runat="server">
         <h4>Thông tin giao hàng</h4>
        <table id="1">
            <tr>
                <td>Tên</td>
                <td>Địa chỉ nhận hàng</td>
            </tr>
            <tr>
               <td><input type="text" id="username" name="username" value="" /></td>              
               <td><input type="text" id="str" name="str" value="" /></td>
            </tr>              
            <tr>
                <td id="username_error"></td>
                <td id="str_error"></td>
            </tr>
              <tr> 
                 <td>Số điện thoại</td>   
                 <td>Tỉnh/ thành phố</td>   
              </tr>
             <tr>
                <td><input type="text" id="number" name="number" value="" /> </td>       
                <td><input type="text" id="city" name="city" value="" />  </td>            
           </tr>
            <tr>
                  <td id="number_error"></td>
                <td id="city_error"></td>
            </tr>
            <tr>
                <td></td>                    
                <td>Quận/ huyện</td>      
            </tr>
            <tr>
                <td></td>
                <td><input type="text" id="dis" name="dis" value="" />  </td>                 
           </tr>  
            <tr>
                <td></td>
                 <td id="dis_error"></td>
            </tr>
              <tr>
               <td></td>                    
                 <td>Phường/xã</td>      
              </tr>
              <tr>
                  <td></td>
             <td><input type="text" id="ward" name="ward" value="" />  </td>                     
             </tr>
            <tr>
              <td></td>
                  <td id="ward_error"></td>
            </tr>
                 <tr>
                    <td></td>                    
                       <td>Lựa chọn tên cho địa chỉ thường dùng</td>   
                 </tr>
            
                 <tr>
                     <td></td>
                   <td>
                       
                      <input type="button" value="Văn phòng"style="background-color:mediumseagreen;color:white;" onclick="off();"/>
                      <input type="button" value="Nhà riêng"style="background-color:deepskyblue;color:white;" onclick="ho();"/> 
                   </td>                 
                </tr>
                 <tr><td></td>
                   <td><input type="submit" onclick="return Bàitập2();" id="btn" name="btn" value="Lưu" style="background-color:red;color:white;" /> </td>
                </tr>
      </table>
 </form>
</body>
</html>
