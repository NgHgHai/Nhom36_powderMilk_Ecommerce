<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hoanghai
  Date: 2023-01-09
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="col-lg-3 col-md-3 col-sm-3">
    <div class="block_menu_profile space_bottom_20">
        <div class="block_info_profile width_common">
            <div class="avata_profile">
                <img src="${user.getAvatar()}" class="loading"
                     data-was-processed="true">
            </div>
            <div class="name_profile txt_color_1"><strong>${user.getFirstname()}</strong></div>
            <a href="" class="txt_666">Edit Account</a>
        </div>
        <div class="menu_profile width_common">
            <a href="ManagementUser?action=show" class="item_menu_profile <c:if test="${action==1}">active</c:if> "> Account Management</a>
            <a href="ManagementUser?action=changeInfoAcc" class="item_menu_profile <c:if test="${action==2}">active</c:if> ">Account Infomation</a>
            <a href="ManagementUser?action=order" class="item_menu_profile <c:if test="${action==3}">active</c:if> ">My Order</a>
            <a href="ManagementUser?action=changePass" class="item_menu_profile <c:if test="${action==4}">active</c:if> ">Change Password</a>

        </div>
    </div>
</div>
