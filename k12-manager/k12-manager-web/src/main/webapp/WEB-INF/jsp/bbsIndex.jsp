<%@ page language="java" contentType="text/html;charset=gbk" pageEncoding="gbk"%>
<%@ page import="net.helloer.forum.pojo.*,net.helloer.forum.cache.*,net.helloer.forum.online.OnlineCount,java.util.*,net.helloer.common.util.*"%>
<%
	String forumname = ConfigCacheData.getForumname();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><%=forumname%> - <%=ConfigCacheData.getTitleadd()%></title>
		<meta name="keywords" content="<%=ConfigCacheData.getKeyword()%>" />
		<meta name="descriptiobn" content="<%=ConfigCacheData.getDescription()%>" />
		<meta name="generator" content="Helloer 2.0.0" />
		<meta name="author" content="Helloer Team" />
		<meta name="copyright" content="2008-2009 Helloer Inc." />
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<link rel="stylesheet" type="text/css" href="css/style_common.css" />
		<script src="js/common.js" type="text/javascript"></script>
	</head>
	<body>
		<div class="wrap">
			<%@ include file="inc/head.jsp"%>
			<%@ include file="inc/usernav.jsp"%>
			<div id="foruminfo">
				<div id="userinfo">
					<div id="nav">
						<a href="index.jsp"><%=forumname%></a> &raquo; ��ӭ���٣������� <script type="text/javascript">var date= new Date(); document.write(date.toLocaleString());	</script>
					</div>
				</div>
				<div id="forumstats">
					����:<em><%=ForumStatCacheData.getTodaynum()%></em>, ����:<em><%=ForumStatCacheData.getYesterdaynum()%></em>, ����:<em><%=ForumStatCacheData.getTopicnum()%></em>, ����:<em><%=ForumStatCacheData.getPostnum()%></em>,	��Ա:<em><%=ForumStatCacheData.getUsernum()%></em>,	�»�Ա:<a href="<%=UrlRewrite.getUserUrl(ForumStatCacheData.getUserid()) %>" target="_blank"><%=ForumStatCacheData.getUsername()%></a>&nbsp;<a href="rss.jsp"><img src="images/icon/rss.gif" align="absmiddle"/></a>
				</div>
			</div>
			<%
				if (BulletinCacheData.getBulletinStatus()) {
			%>
			<div id="announcement" onmouseover="annstop = 1" onmouseout="annstop = 0">
				<div id="announcementbody">
					<ul>
						<%
							for (BulletinName bulletin : BulletinCacheData.getBulletinNameList()) {
						%>
						<li>
							<a href="bulletin.jsp?#b<%=bulletin.getBulletinid() %>" target="_blank"><%=bulletin.getBulletinname()%></a><em>(<%=bulletin.getJoindate()%>)</em>
						</li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
			<script type="text/javascript">
				var anndelay = 3000;
				var annst = 0;
				var annstop = 0;
				var annrowcount = 0;
				var anncount = 0;
				var annlis = $('announcementbody').getElementsByTagName("LI");
				var annrows = new Array();
				var annstatus;
				function announcementScroll() {
					if(annstop) {
						annst = setTimeout('announcementScroll()', anndelay);
						return;
					}
					if(!annst) {
						var lasttop = -1;
						for(i = 0;i < annlis.length;i++) {
							if(lasttop != annlis[i].offsetTop) {
								if(lasttop == -1) {
									lasttop = 0;
								}
								annrows[annrowcount] = annlis[i].offsetTop - lasttop;
								annrowcount++;
							}
							lasttop = annlis[i].offsetTop;
						}
						if(annrows.length == 1) {
							$('announcement').onmouseover = $('announcement').onmouseout = null;
						} else {
							annrows[annrowcount] = annrows[1];
							$('announcementbody').innerHTML += '<br style="clear:both" />' + $('announcementbody').innerHTML;
							annst = setTimeout('announcementScroll()', anndelay);
						}
						annrowcount = 1;
						return;
					}
					if(annrowcount >= annrows.length) {
						$('announcementbody').scrollTop = 0;
						annrowcount = 1;
						annst = setTimeout('announcementScroll()', anndelay);
						} else {
						anncount = 0;
						announcementScrollnext(annrows[annrowcount]);
					}
				}
				function announcementScrollnext(time) {
					$('announcementbody').scrollTop++;
					anncount++;
					if(anncount != time) {
						annst = setTimeout('announcementScrollnext(' + time + ')', 10);
					} else {
						annrowcount++;
						annst = setTimeout('announcementScroll()', anndelay);
					}
				}
			</script>
			<script type="text/javascript">announcementScroll();</script>
			<%
				}
			%>
			<%
				for (Board board : ForumCacheData.getBoardList()) {
			%>
			<div class="mainbox forumlist">
				<span class="headactions"> 
				<%
 					if (ForumCacheData.getBoardMasterStatusByBoardId(board.getBoardid())) {
 				%> 
 				��������:
 				<%
 						for (Master master : ForumCacheData.getBoardMasterListByBoardId(board.getBoardid())) {
 				%>
 				<a href="<%=UrlRewrite.getUserUrl(master.getUserid())%>"><%=master.getUsername()%></a>
 				<%
 						}
 					}
 				%> 
 				</span>
				<h3>
					<%=board.getBoardname()%>
				</h3>
				<table cellspacing="0" cellpadding="0">
					<%
						if(board.getTilenum()== 0){
					%>
					<thead>
						<tr>
							<th>
								��̳
							</th>
							<td class="num">
								����/����
							</td>
							<td class="last">
								��󷢱�
							</td>
							<td class="master">
								����
							</td>
						</tr>
					</thead>
					<%
						for (ForumInfo foruminfo : ForumCacheData.getForumListByBoardId(board.getBoardid())) {
							ForumData forumdata = ForumCacheData.getForumDataByFid(foruminfo.getForumid()); 
					%>
					<tbody>
						<tr>
							<th class="<%if(forumdata.getTodaynum()>0){%>new<%}else{%>normal<%} %>">
								<a href="<%=UrlRewrite.getForumUrl(foruminfo.getForumid(),1)%>" class="name" style="color:<%=foruminfo.getColor() %>"><%=foruminfo.getForumname()%></a> <span class="todaynum">(����:<%=forumdata.getTodaynum()%>)</span>
								<%
									if (ForumCacheData.getShowSubForumStatusByForumId(foruminfo.getForumid())) {
								%>
								<p class="moderators">
									����̳:
									<%
										for (ForumName subforumname : ForumCacheData.getSubForumNameListByForumId(foruminfo.getForumid())) {
									%>
									<a href="<%=UrlRewrite.getForumUrl(subforumname.getForumid(),1)%>"><%=subforumname.getForumname()%></a>
									<%
										}
									%>
								</p>
								<%
									}
								%>
								<p><%=foruminfo.getForumread()%></p>
							</th>
							
							<td class="num"> 
								<%=forumdata.getTopicnum() %> /	<%=forumdata.getPostnum()%>
							</td>
							<td class="last">
								<%
									if(forumdata.getTopicnum()!=0){
								%>
								<p>
									<a href="<%=UrlRewrite.getThreadUrl(forumdata.getTopicid(),1)%>"><%=forumdata.getTopicname()%></a>
								</p>
								<p class="moderators">
									By: <a href="<%=UrlRewrite.getUserUrl(forumdata.getUserid())%>" target="_blank"><%=forumdata.getUsername()%></a> - <span class="time"><%=forumdata.getPosttime().toLocaleString()%></span>
								</p>
								<%
									} else {
								%>
								<p>
									����
								</p>
								<%
									}
								%>
							</td>
							<td class="master">
								<%
									if (ForumCacheData.getForumMasterStatusByForumId(foruminfo.getForumid())) {
								%>
								<p>
									<%
										for (Master master : ForumCacheData.getForumMasterListByForumId(foruminfo.getForumid())) {
									%>
										<a href="<%=UrlRewrite.getUserUrl(master.getUserid()) %>"><%=master.getUsername()%></a>
									<%
										}
									%>
								</p>
								<%
									} else {
								%>
								<p>
									����
								</p>
								<%
									}
								%>
							</td>
						</tr>
					</tbody>
					<%
						}
					%>
					<%
						} else { 
						int tilenum = board.getTilenum();
						ArrayList<ForumInfo> forumList = ForumCacheData.getForumListByBoardId(board.getBoardid());
						int width = 100/tilenum;
						int forumnum = forumList.size();
						int leaving = 0;
						if(forumnum>tilenum){
							leaving = tilenum - forumnum % tilenum;
						}else {
							leaving = tilenum - forumnum ;
						}
						int i = 0 , p = 0;
					%>
					<tbody>
						<%
							for (ForumInfo foruminfo : forumList) {
								if(i==tilenum){ i = 0 ;}
								ForumData forumdata = ForumCacheData.getForumDataByFid(foruminfo.getForumid()); 
						%>
							<%
								if(i==0){ 
							%>
								<tr>
							<%
								}
							%>
							<th width="<%=width%>%" class="<%if(forumdata.getTodaynum()>0){%>new<%}else{%>normal<%} %>">
								<a href="<%=UrlRewrite.getForumUrl(foruminfo.getForumid(),1)%>" class="name" ><%=foruminfo.getForumname()%></a> <span class="todaynum">(����:<%=forumdata.getTodaynum()%>)</span>
								<p>����: <%=forumdata.getTopicnum() %>, ����: <%=forumdata.getPostnum() %></p>
								<p class="moderators">��󷢱�: <a href="<%=UrlRewrite.getThreadUrl(forumdata.getTopicid(),1)%>"><%=forumdata.getTopicname()%></a></p>
							</th>
							<%
								if(p++==forumnum-1){
									for(int m=0;m<leaving;m++){
							%>
								<th>&nbsp;</th>
							<%
									}
								}
							%>
							<%
								if(i==tilenum-1){ 
							%>
								</tr>
							<%
								} 
							%>
						<%
							 i++; }
						%>
					</tbody>
					<%
						}
					%>
				</table>
			</div>
			<%
				}
			%>
			<div class="box">
				<h4>
					��������
				</h4>
				<table id="forumlinks" cellpadding="0" cellspacing="0" style="table-layout: fixed;">
					<tr>
						<td>
							<%
								for (Link link : LinkCacheData.getLinkList()) {
									if (!link.getLinklogo().equals("")) {
							%>
										<a href="<%=link.getLinkurl()%>" target="_blank"><img src="images/link/<%=link.getLinklogo() %>" border="0" alt="<%=link.getLinkread()%>" /></a>&nbsp;
							<%
									} else {
							%>
										<a href="<%=link.getLinkurl()%>" title="<%=link.getLinkread()%>" target="_blank"><%=link.getLinkname()%></a>&nbsp;
							<%
									}
								}
							%>
						</td>
					</tr>
				</table>
			</div>
			<div class="box" id="online">
				<h4>
					<strong><a>���߻�Ա</a> </strong> - <em><%=OnlineCount.getPeopleNum() %></em> ������ - <em><%=OnlineCount.getMemberNum() %></em> ��Ա,<em><%=OnlineCount.getVisitorNum()%></em> λ�ο� - ��߼�¼�� <em><%=ForumStatCacheData.getMaxnum()%></em> �� <em><%=ForumStatCacheData.getMaxdate().toLocaleString() %></em>.
				</h4>
				<dl id="onlinelist">
					<dt>
						<%
							for (Cutline cutline : CutlineCacheData.getCutlineList()) {
						%>
						<img src="images/cutline/<%=cutline.getPic()%>" /> <%=cutline.getOnlinename()%>&nbsp; &nbsp; &nbsp; 
						<%
							}
						%>
					</dt>
					<dd>
						<ul class="userlist">
						<%
							for(Online online :OnlineCount.getMemberList()){
						%>
							<li><img src="images/cutline/<%=online.getPic()%>"/> <%=online.getUname() %></li>
						<%
							}
						%>
						</ul>
					</dd>
				</dl>
			</div>
			<div class="legend">
				<label>
					<img src="images/icon/topic_permit.gif" alt="�������İ��" />
					������
				</label>
				<label>
					<img src="images/icon/topic_unpermit.gif" alt="�������İ��" />
					������
				</label>
			</div>
			<%@ include file="inc/foot.jsp"%>
		</div>
	</body>
</html>