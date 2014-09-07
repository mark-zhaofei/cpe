<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1"  />
<meta http-equiv="Pragma" content="no-cache">
<title>.::Welcome to <% getCfgGeneral(1, "SystemName"); %>::.</title>
<link href="images/inside_main_frame.css" rel="stylesheet" type="text/css" />
<link href="images/dtree.css" rel="stylesheet" type="text/css" />
<link href="images/table.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/lang/b28n.js"></script>
<script>
Butterlate.setTextDomain("main");
var prev_menu_id=2;
var prev_submenu_index=1;
var upload_message="Ready";
var zyfw_fw_file="";
var zyfw_fw_version="";
var zyfw_release_date="";
var zyfw_release_note="";
var zyfw_size="";
function reload_upload_firmware_page()
{
InfoFrame.location.href = '/local/advance/upload_firmware_gordon.asp';
}
function reload_configuration_backup_page()
{
InfoFrame.location.href = '/local/advance/settings_gordon.asp';
}
</script>
	<script type="text/javascript" src="images/dtree.js"></script>

    <script type="text/JavaScript">
function initTranslation()
{
	var e = document.getElementById("id_Home");
	e.innerHTML = _("Home");
	e = document.getElementById("id_Logout");
	e.innerHTML = _("Logout");
	e = document.getElementById("id_About");
	e.innerHTML = _("About");
//	e = document.getElementById("id_EasyMode");
//	e.innerHTML = _("EasyMode");
	e = document.getElementById("id_WelcomeAdmin");
	e.innerHTML = _("WelcomeAdmin");
	e = document.getElementById("id_openall");
	e.innerHTML = _("openall");
	e = document.getElementById("id_closeall");
	e.innerHTML = _("closeall");

			e = document.getElementById("g2-2No");
	e.innerHTML = _("g2-2 No");
	e = document.getElementById("g2-2Yes");
	e.innerHTML = _("g2-2 Yes");
		e = document.getElementById("ask_logout");
	e.innerHTML = _("dash logout mes");
		e = document.getElementById("log_out");
	e.innerHTML = _("dash logout title");
		e = document.getElementById("message_header");
	e.innerHTML = _("message_header");

	e = document.getElementById("dashAboutCheck1");
	e.innerHTML = _("dash about check1");
	e = document.getElementById("dashAboutCheck2");
	e.innerHTML = _("dash about check2");
	e = document.getElementById("dashAboutClose");
	e.innerHTML = _("dash about close");
}

<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->

    </script>
<style>
.on {display:on}
.off {display:none}
</style>
</head>
<body onresize="onResizeWindow()"; scroll="no" onLoad="initTranslation()">
<div id="wrapper">
  <div id="top"><div class="top_position"><div class="logo"></div>
  <div class="modelname">CPE&nbsp;<% getCfgGeneral(1, "ProductName"); %></div>
  <div class="quick_link">
    <ul>
	<!--
      <li class="easy" title="Easy Mode"><a href="../networkmap.asp" id=id_EasyMode></a></li>
	-->
      <li class="about" onclick="MM_showHideLayers('popup','','show','popup4_table','','show')"><a href="#" title="About" id=id_About></a></li>
        <li class="home" style="display:none"><a href="../index_login.asp" title="Home" target="_parent" id=id_Home></a></li>
      <li onclick="MM_showHideLayers('popup3_table','','show','popup','','show')"><a href="#" title="Logout" id=id_Logout></a></li>
      <li class="line"></li>
      <li><font id=id_WelcomeAdmin></font></li>
    </ul>
  </div>
  </div></div>
  <div id="blueline"></div>
</div>
<div id="contentframe">
<div class="contentframe"><ul>
<li><div class="submenu"><ul> 


<script>
var lang = "<% get_language(); %>";

if(lang=="zhcn")
{
	//??
	document.write("<li class='i_dashboard' title='&#x72B6;&#x6001;'><a href='dashboard.asp' title='&#x72B6;&#x6001;'></a></li>");
	//???
	document.write("<li class='i_monitor'><a href='main_monitor_frame.asp' title='&#x76D1;&#x89C6;&#x5668;'></a></li>");

	//??
	document.write("<li class='i_config'><a href='main_config_frame.asp' title='&#x914D;&#x7F6E;'></a></li>");
	//??
	document.write("<li class='i_maintenance' title='&#x7EF4;&#x62A4;'></li>");

}else if(lang=="zhtw")
{
	//??
	document.write("<li class='i_dashboard' title='&#x72B6;&#x6001;'><a href='dashboard.asp' title='&#x72C0;&#x614B;'></a></li>");
	//???
	document.write("<li class='i_monitor'><a href='main_monitor_frame.asp' title='&#x76E3;&#x8996;&#x5668;'></a></li>");

	//??
	document.write("<li class='i_config'><a href='main_config_frame.asp' title='&#x914D;&#x7F6E;'></a></li>");
	//??
	document.write("<li class='i_maintenance' title='&#x7DAD;&#x8B77;'></li>");

}else
{
	document.write("<li class='i_dashboard' title='Dashboard'><a href='dashboard.asp' title='Dashboard'></a></li>");
	document.write("<li class='i_monitor'><a href='main_monitor_frame.asp' title='Monitor'></a></li>");

	document.write("<li class='i_config'><a href='main_config_frame.asp' title='Configuration'></a></li>");
	document.write("<li class='i_maintenance' title='Maintenance'></li>");
}

</script>



</ul>  <br class="clearfloat" /></div></li>
<li><div class="menu"> <br class="clearfloat" />
  <ul>
<li class="menuline" id=menuline_height><div><ul>
  <li class="space4"><script>document.write(_("MAINTENANCE"))</script></li>
  <li class="space"><p><a href="javascript: d.openAll();" class="fastbutton" id=id_openall></a><a>&nbsp; | &nbsp;</a><a href="javascript: d.closeAll();" id=id_closeall></a></p></li><li>
    <div class="dtree">
      <script type="text/javascript">
		<!--

		d = new dTree('d');

		d.add(0,-1,'');
		d.add(1,0,_('Maintenance'),'');
		d.add(2,1,_('General'),'/local/advance/maintenance.asp', _('Maintenance')+' > '+_('General'), 'InfoFrame');
		d.add(3,1,_('Password'),'/local/advance/password.asp', _('Maintenance')+' > '+_('Password')+' > '+_('Password Setup'), 'InfoFrame');
		d.add(4,1,_('Time'),'management_gordon.asp', _('Maintenance')+' > '+_('Time')+' > '+_('Time Setting'), 'InfoFrame');
//		d.add(5,1,_('Remote Management'),'remote_web.asp', _('Maintenance')+' > '+_('Remote Management')+' > '+_('WWW'), 'InfoFrame');
		d.add(6,1,_('Firmware Upgrade'),'/local/advance/upload_firmware_gordon.asp', _('Maintenance')+' > '+_('Firmware Upgrade'), 'InfoFrame');
		d.add(7,1,_('Backup Restore'),'/local/advance/settings_gordon.asp', _('Maintenance')+' > '+_('Backup Restore'), 'InfoFrame');
		d.add(8,1,_('Restart'),'/local/advance/reset_restart_gordon.asp', _('Maintenance')+' > '+_('Restart'), 'InfoFrame');
		d.add(9,1,_('Factory Default'),'/local/advance/factory_default.asp', _('Maintenance')+' > '+_('Factory Default'), 'InfoFrame');
//		d.add(10,1,_('Sys OP Mode'),'/local/advance/OperationMode.asp', _('Maintenance')+' > '+_('Sys OP Mode'), 'InfoFrame');		
//		d.add(10,1,_('Sys OP Mode'),'/local/advance/OperationModeCPE.asp', _('Maintenance')+' > '+_('Network Mode'), 'InfoFrame');
		document.write(d);
		d.s(2);

		//-->
	</script>
</div></li></ul> 
  </div></li> 
<!--   
  <li class="floor">  <div class="r4"></div>
      <div class="r3"></div>
      <div class="r2"></div>
      <div class="r1"></div>
	  </li>
-->	  
	  </ul> <br class="clearfloat" /></div>
</li></ul> <br class="clearfloat" /></div>
<div class="contenleft">
  <div class="path">
    <ul>
      <li class="i_path"><a class="w_path" id="pathTitle"></a></li>
    </ul>
    <br class="clearfloat" />
  </div>
<span id=message_show class='off'>  
  <div class="barcontent" id=message_position>
    <ul>
      <li class="i_message">
      <table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td nowrap>&nbsp;&nbsp;&nbsp;
      <a class="message_title" style="color:#30466d;" id="message_header">Message</a>:
      </td></tr></table>
      </li>
			<li class="message_word" id=message_len>
			<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td nowrap>
			<a style="color:#3d8900;" id=message_str>Ready</a>
			</td></tr></table>
			</li>
    </ul>
    <br class="clearfloat" />
  </div>
</span>  
  <div class="contentmain">
    <div id="tabs">
      <ul>
<!-- General -->    
<span id = "menu_2_1_hightline" class = "off" >
        <li class="hightline"><a title="General"><span><script>document.write(_("General"))</script></span></a></li>
</span>    
<span id = "menu_2_1" class = "off" >
        <li><a target="InfoFrame" href="/local/advance/maintenance.asp" title="General" onclick="onChangeHeadMenu(2, 1, _('Maintenance')+' > '+_('General'))"><span><script>document.write(_("General"))</script></span></a></li>
</span>    
<!-- Password -->    
<span id = "menu_3_1_hightline" class = "off" >
        <li class="hightline"><a title="Password Setup"><span><script>document.write(_("Password Setup"))</script></span></a></li>
</span>    
<span id = "menu_3_1" class = "off" >
        <li><a target="InfoFrame" href="/local/advance/password.asp" title="Password Setup" onclick="onChangeHeadMenu(3, 1, _('Maintenance')+' > '+_('Password')+' > '+_('Password Setup'))"><span><script>document.write(_("Password Setup"))</script></span></a></li>
</span>    
<!-- Time -->    
<span id = "menu_4_1_hightline" class = "off" >
        <li class="hightline"><a title="Time Setting"><span><script>document.write(_("Time Setting"))</script></span></a></li>
</span>    
<span id = "menu_4_1" class = "off" >
        <li><a target="InfoFrame" href="/adm/syslog.asp" title="Time Setting" onclick="onChangeHeadMenu(4, 1, _('Maintenance')+' > '+_('Time')+' > '+_('Time Setting'))"><span><script>document.write(_("Time Setting"))</script></span></a></li>
</span>    
<!-- Remote Management -->    
<span id = "menu_5_1_hightline" class = "off" >
        <li class="hightline"><a title="WWW"><span><script>document.write(_("WWW"))</script></span></a></li>
</span>    
<span id = "menu_5_1" class = "off" >
        <li><a target="InfoFrame" href="remote_web.asp" title="WWW" onclick="onChangeHeadMenu(5, 1, _('Maintenance')+' > '+_('Remote Management')+' > '+_('WWW'))"><span><script>document.write(_("WWW"))</script></span></a></li>
</span>    
<!--<span id = "menu_5_2_hightline" class = "off" >
        <li class="hightline"><a title="Telnet"><span><script>document.write(_("Telnet"))</script></span></a></li>
</span>    
<span id = "menu_5_2" class = "off" >
        <li><a target="InfoFrame" href="telnet.html" title="Telnet" onclick="onChangeHeadMenu(5, 2, _('Maintenance')+' > '+_('Remote Management')+' > '+_('Telnet'))"><span><script>document.write(_("Telnet"))</script></span></a></li>
</span>    
<span id = "menu_5_3_hightline" class = "off" >
        <li class="hightline"><a title="DNS"><span><script>document.write(_("DNS"))</script></span></a></li>
</span>    
<span id = "menu_5_3" class = "off" >
        <li><a target="InfoFrame" href="dns.html" title="DNS" onclick="onChangeHeadMenu(5, 3, _('Maintenance')+' > '+_('Remote Management')+' > '+_('DNS'))"><span><script>document.write(_("DNS"))</script></span></a></li>
</span> -->   
<!-- Firmware Upgrade -->    
<span id = "menu_6_1_hightline" class = "off" >
        <li class="hightline"><a title="Firmware Upgrade"><span><script>document.write(_("Firmware Upgrade"))</script></span></a></li>
</span>    
<span id = "menu_6_1" class = "off" >
        <li><a target="InfoFrame" href="/local/advance/upload_firmware_gordon.asp" title="Firmware Upgrade" onclick="onChangeHeadMenu(6, 1, _('Maintenance')+' > '+_('Firmware Upgrade'))"><span><script>document.write(_("Firmware Upgrade"))</script></span></a></li>
</span>    
<!-- Backup/Restore -->    
<span id = "menu_7_1_hightline" class = "off" >
        <li class="hightline"><a title="Backup/Restore"><span><script>document.write(_("Backup Restore"))</script></span></a></li>
</span>    
<span id = "menu_7_1" class = "off" >
        <li><a target="InfoFrame" href="/local/advance/settings_gordon.asp" title="Backup/Restore" onclick="onChangeHeadMenu(7, 1, _('Maintenance')+' > '+_('Backup Restore'))"><span><script>document.write(_("Backup Restore"))</script></span></a></li>
</span>    
<!-- Restart -->    
<span id = "menu_8_1_hightline" class = "off" >
        <li class="hightline"><a title="Restart"><span><script>document.write(_("Restart"))</script></span></a></li>
</span>    
<span id = "menu_8_1" class = "off" >
        <li><a target="InfoFrame" href="/local/advance/reset_restart.asp" title="Restart" onclick="onChangeHeadMenu(8, 1, _('Maintenance')+' > '+_('Restart'))"><span><script>document.write(_("Restart"))</script></span></a></li>
</span>    
<!-- Reset -->    
<span id = "menu_9_1_hightline" class = "off" >
        <li class="hightline"><a title="Factory Default"><span><script>document.write(_("Factory Default"))</script></span></a></li>
</span>    
<span id = "menu_9_1" class = "off" >
        <li><a target="InfoFrame" href="/local/advance/factory_default.asp" title="Factory Default" onclick="onChangeHeadMenu(9, 1, _('Maintenance')+' > '+_('Factory Default'))"><span><script>document.write(_("Factory Default"))</script></span></a></li>
</span>    
<!-- Sys OP Mode -->    
<span id = "menu_10_1_hightline" class = "off" >
        <li class="hightline"><a title="Sys OP Mode"><span><script>document.write(_("Sys OP Mode"))</script></span></a></li>
</span>    
<span id = "menu_10_1" class = "off" >
        <li><a target="InfoFrame" href="/local/advance/OperationMode.asp" title="Sys OP Mode" onclick="onChangeHeadMenu(10, 1, _('Maintenance')+' > '+_('Sys OP Mode'))"><span><script>document.write(_("Sys OP Mode"))</script></span></a></li>
</span>       
      </ul>
      <br class="clearfloat" />
    </div>
    <div id="table">
      <ul>
        <li class="table_top"></li>
        <li class="table_content"><br />
            <div class="data">
              <ul>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td>
<iframe id='myFrame' name='InfoFrame' src="/local/advance/maintenance.asp" align="LEFT" width="100%" height="100%" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" onload='adjustMyFrameHeight();'>              
</iframe>
</td></tr></table>
        </ul>
        </div>
        </li>
      </ul>
      <br class="clearfloat" />
    </div>
<br /><br /><br /><br />
  </div>
</div>
</div>
<div id="popup3_table">
  <table width="60%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" height="37" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="19" height="37"><img src="images/popup_top_left.gif" width="19" height="45" /></td>
        <td background="images/popup_top_center.gif" class="table_title" id=log_out>Log Out</td>
        <td width="15" background="images/popup_top_center.gif"><a href="#" class="iclose" onclick="MM_showHideLayers('popup3_table','','hide','popup','','hide')"></a></td>
        <td width="19" height="45"><img src="images/popup_top_right.gif" width="19" height="45" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="19" background="images/popup_main_left.gif">&nbsp;</td>
        <td bgcolor="#FFFFFF"><span class="popupcontent"> 
          <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="27%"><center>
                <img src="images/i_info.jpg" width="50" height="49" />
              </center>
              </td>
              <td width="73%" id=ask_logout>Are you sure you want to log out?</td>
            </tr>
          </table>
         
        </span></td>
        <td width="19" background="images/popup_main_right.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" height="37" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="19" height="48"><img src="images/popup_down_left.gif" width="19" height="48" /></td>
        <td background="images/popup_down_center.gif"><div class="button3">
          <ul>   
    <li><a href="#" title="No"><span id="g2-2No" onclick="MM_showHideLayers('popup3_table','','hide','popup','','hide')">No</span></a></li>
	<li><a href="/logout.html" title="Yes"><span id="g2-2Yes">Yes</span></a></li>
	</ul>
        </div></td>
        <td width="19" height="37"><img src="images/popup_down_right.gif" width="19" height="48" /></td>
      </tr>
    </table></td>
  </tr>
</table></div>
<div id="popup4_table">
  <table width="60%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><table width="100%" height="37" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="19" height="37"><img src="images/popup_top_left.gif" width="19" height="45" /></td>
          <td background="images/popup_top_center.gif" class="table_title">About</td>
          <td width="15" background="images/popup_top_center.gif"><a href="#" class="iclose" onclick="MM_showHideLayers('popup','','hide','popup4_table','','hide')"></a></td>
          <td width="19" height="45"><img src="images/popup_top_right.gif" width="19" height="45" /></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="19" background="images/popup_main_left.gif">&nbsp;</td>
          <td bgcolor="#FFFFFF"><span class="popupcontent">
            <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="27%"><center>
                  <img src="images/i_info.jpg" width="50" height="49" />
                </center></td>
                <td width="73%"><span class="blod"><% getCfgGeneral(1, "ProductName"); %></span> <br />
                  (C) Copyright@2014 Howen Technologies Co.,Ltd.<br />
                  <br />
                  <font id="dashAboutCheck1"></font> <a href="http://www.howentech.com" target="_blank">www.howentech.com</a> <font id="dashAboutCheck2"></font></td>
              </tr>
              <tr>
                <td height="20" colspan="2"><center>
                </center></td>
              </tr>
            </table>
          </span></td>
          <td width="19" background="images/popup_main_right.gif">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td><table width="100%" height="37" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="19" height="48"><img src="images/popup_down_left.gif" width="19" height="48" /></td>
          <td background="images/popup_down_center.gif"><div class="button3">
            <ul>
              <li><a href="#" title="Close"><span onclick="MM_showHideLayers('popup','','hide','popup4_table','','hide')"><font id="dashAboutClose"></font></span></a></li>
            </ul>
          </div></td>
          <td width="19" height="37"><img src="images/popup_down_right.gif" width="19" height="48" /></td>
        </tr>
      </table></td>
    </tr>
  </table>
</div>
<div id="popup"></div>
</body>
<script>
var current_menu_id=2;
var current_submenu_index=1;
onChangeHeadMenu(current_menu_id, current_submenu_index, _('Maintenance')+' > '+_('General'));

function onResizeWindow()
{
adjustMyFrameHeight();
}
</script>	
</html>
