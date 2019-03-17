<%--
  Created by IntelliJ IDEA.
  User: Len
  Date: 2018/7/4
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页中部</title>
    <link type="text/css" href="homePageCenter.css" rel="stylesheet" />
    <script src="jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="homePageCenter.js" type="text/javascript"></script>
</head>

<body>
<div class="midContent">
    <div class="midHead">
        <div class="midHeadLeft">
            <div class="subjectIntroduce">
                <div class="titleIntroduce">
                    <a href="#"><img src="images/title_icon.png" width="5" height="19" /></a>
                    <a href="#"><span class="allTitleChinese">课程介绍</span></a>
                    <span class="allTitleEnglish">Introduce</span>
                </div>
                <div class="midHeadHr"></div>
                <div class="contentIntroduce">
                    <div class="contentIntroduceLeft">
                        <a href="#"><img src="images/book.jpg" width="169" height="164"/></a>
                    </div>
                    <div class="contentIntroduceRight">数据结构将有关系，关系密切，有着某种贡献关系的数据组织到一起。
                        当数据以适当的方式组织到一起的时候，是可以形成一定的组织规律的。
                        数据的合理的组织，是提升效率的一种方式。 所以不要怕花费时间来组织你的数据。
                        面向对象也是一种组织数据的方式，只不过这些更倾向于将客观世界的东西映射到对象中。
                        当你仔细观察自然的时候，你会发现自然中大部分事物（数据，细胞等等）是组织到一起的，很少有孤立的。有组织性是大自然普遍存在的一个规律，是大自然进化的产物。让事物变得更加有效率。</div>
                </div>
            </div>
        </div>

        <div class="midHeadRight">

            <div class="subjectPrincipal">
                <div class="titlePrincipal">
                    <a href="#"><img src="images/title_icon.png" width="5" height="19" /></a>
                    <a href="#"> <span class="allTitleChinese">课程负责人</span></a>
                    <span class="allTitleEnglish">Principal</span>
                </div>


                <div class="contentPrincipal">
                    <div class="contentPrincipalLeft">
                        <a href="#"><img src="images/member.jpg" width="131" height="164"/></a>
                    </div>
                    <div class="contentPrincipalRight">*******************。</div>

                </div>
            </div>
        </div>

    </div>



    <div class="midMid">
        <div class="midMidLeft">
            <div class="subjectTrends">
                <div class="subjectTrendsLeft"></div>
                <div class="subjectTrendsMid">
                    <div class="titleTrendsMid">
                        <a href="#"><img src="images/title_icon.png" width="5" height="19" /></a>
                        <a href="#"><span class="allTitleChinese">课程动态</span></a>
                        <span class="allTitleEnglish">Introduce</span>
                        <span class="moreImg"><a href="#"><img src="images/more.png" width="31" height="7"/></a></span>
                    </div>
                    <div class="midMidHr"></div>
                    <div class="contentTrendsMid">
                        <ul>
                            <li>
                                <img src="images/list_icon.png" width="4" height="6"/>
                                <a href="#">**********************************</a>
                                <span class="time">2018.6.1</span>
                            </li>
                            <li>
                                <img src="images/list_icon.png" width="4" height="6"/>
                                <a href="#">**********************************</a>
                                <span class="time">2018.6.1</span>
                            </li>
                            <li>
                                <img src="images/list_icon.png" width="4" height="6"/>
                                <a href="#">**********************************</a>
                                <span class="time">2018.6.1</span>
                            </li>
                            <li>
                                <img src="images/list_icon.png" width="4" height="6"/>
                                <a href="#">**********************************</a>
                                <span class="time">2018.6.1</span>
                            </li><li>
                            <img src="images/list_icon.png" width="4" height="6"/>
                            <a href="#">**********************************</a>
                            <span class="time">2018.6.1</span>
                        </li><li>
                            <img src="images/list_icon.png" width="4" height="6"/>
                            <a href="#">**********************************</a>
                            <span class="time">2018.6.1</span>
                        </li>



                        </ul>

                    </div>



                </div>
                <div class="subjectTrendsRight"></div>
            </div>
        </div>


        <div class="midMidRight">
            <div class="studySource">
                <div class="studySourceLeft"></div>
                <div class="studySourceMid">
                    <div class="titleStudySourceMid">
                        <a href="#"><img src="images/title_icon.png" width="5" height="19" /></a>
                        <a href="#"><span class="allTitleChinese">教学资源</span></a>
                        <span class="allTitleEnglish">Resource</span>
                    </div>
                    <div class="midMidHr"></div>
                    <div class="contentStudySourceMid">
                        <a href="#"><img src="images/earphone.png" height="101" width="156"/></a>
                        <a href="#"><img src="images/CD.jpg" height="101" width="145"/></a>

                    </div>
                </div>
                <div class="studySourceRight"></div>
            </div>
        </div>




    </div>
    <div class="midFoot">
        <div class="midFootMain">
            <div class="midFootTitle">
                <a href="#"><img src="images/title_icon.png" width="5" height="19" /></a>
                <a href="#"><span class="allTitleChinese">课程组成员</span></a>
                <span class="allTitleEnglish">Resource</span>
            </div>
            <div class="midFootContent">
                <div class="midFootContentLeft" id="left_scroll">
                    <a href="javascript:void(0)"><img src="images/team_bt_left.png" height="67" width="12"/></a>
                </div>
                <div class="midFootContentMid">
                    <div class="midContentImg" id="carousel_inner">
                        <ul id="carousel_ul">
                            <li class="trendsImg"><a href="javascript:void(0)"><img src="images/member.jpg"/></a></li>
                            <li class="trendsImg"><a href="javascript:void(0)"><img src="images/book.jpg"/></a></li>
                            <li class="trendsImg"><a href="javascript:void(0)"><img src="images/member.jpg"/></a></li>
                            <li class="trendsImg"><a href="javascript:void(0)"><img src="images/book.jpg"/></a></li>
                            <li class="trendsImg"><a href="javascript:void(0)"><img src="images/member.jpg"/></a></li>
                            <li class="trendsImg"><a href="javascript:void(0)"><img src="images/book.jpg"/></a></li>
                            <li class="trendsImg"><a href="javascript:void(0)"><img src="images/member.jpg"/></a></li>
                            <li class="trendsImg"><a href="javascript:void(0)"><img src="images/book.jpg"/></a></li>
                            <li class="trendsImg"><a href="javascript:void(0)"><img src="images/member.jpg"/></a></li>
                        </ul>
                    </div>
                </div>
                <div class="midFootContentRight" id="right_scroll">
                    <a href="javascript:void(0)"><img src="images/team_bt_right.png" height="67" width="12"/></a>
                </div>
            </div>
        </div>

    </div>
    <div class="friendShipConnection">
        <div class="friendShipTitle">
            <img src="images/youqinglianjie.png" width="24" height="19"/>
            <span class="friendShipWords">友情链接：</span>
            <span>
                    <ul>
                        <li><a href="#">数据结构学习网站</a></li>

                    </ul>
                </span>
        </div>

    </div>

</div>

</body>
</html>
