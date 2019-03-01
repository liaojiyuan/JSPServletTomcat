<script type="text/javascript">
  /**
   *根据menuId高亮顶部菜单
   * @param menuId
   */
  function hightLightTopMenu(menuId) {
      $("#topMenu>ul>li").removeClass("over");//所有菜单高亮关闭
      $("#" + menuId).addClass("over");// 高亮
  }
</script>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="top"><img src=" " width="243" height="52"  border="0"/></div>
<div id="topMenu" class="menu">
  <ul>
    <li id="topMenu_home"><a href="website?action=index">首页</a></li>
    <li id="topMenu_teacher"><a href="website?action=index">教师</a></li>
    <li id="topMenu_parent"><a href="website?action=index">家长</a></li>
    <li id="topMenu_student" ><a href="website?action=index">学生</a></li>
    <li id="topMenu_help"><a href="website?action=index" target="_blank">帮助</a></li>
  </ul>
  <span class="question"><a href="website?action=index"  >
    <img src="images/portal/ico01.gif" width="16" height="16" border="0"/>问题反馈</a></span>
</div>