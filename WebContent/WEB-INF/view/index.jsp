<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" th:href="@{/static/i/favicon.png}">
    <link rel="apple-touch-icon-precomposed" th:href="@{/static/i/app-icon72x72@2x.png}">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <script th:src="@{/static/js/echarts.min.js}"></script>
    <link rel="stylesheet" th:href="@{/static/css/amazeui.min.css}" />
    <link rel="stylesheet" th:href="@{/static/css/amazeui.datatables.min.css}" />
    <link rel="stylesheet" th:href="@{/static/css/app.css}" >
    <script th:src="@{/static/js/jquery.min.js}"></script>
	<script th:src="@{/static/custom/core.js}"></script>
</head>

<body data-type="index">
    <script th:src="@{/static/js/theme.js}"></script>
    <div class="am-g tpl-g">
        <!-- 头部 -->
        <header>
            <!-- logo -->
            <div class="am-fl tpl-header-logo">
                <a href="javascript:;"><img th:src="@{/static/img/logo.png}" alt=""></a>
            </div>
            <!-- 右侧内容 -->
            <div class="tpl-header-fluid">
                <!-- 侧边切换 -->
                <div class="am-fl tpl-header-switch-button am-icon-list">
                    <span>

                </span>
                </div>
                <!-- 搜索 -->
                <div class="am-fl tpl-header-search">
                    
                </div>
                <!-- 其它功能-->
                <div class="am-fr tpl-header-navbar">
                    <ul>
                        <!-- 欢迎语 -->
                        <li class="am-text-sm tpl-header-navbar-welcome">
                            <a href="javascript:;">欢迎你, <span th:text="${loginUser.name}"></span> </a>
                        </li>

                        

                        <!-- 退出 -->
                        <li class="am-text-sm">
                            <a href="javascript:;">
                                <span class="am-icon-sign-out"></span> 退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </header>
        <!-- 风格切换 -->
        <div class="tpl-skiner">
            <div class="tpl-skiner-toggle am-icon-cog">
            </div>
            <div class="tpl-skiner-content">
                <div class="tpl-skiner-content-title">
                    选择主题
                </div>
                <div class="tpl-skiner-content-bar">
                    <span class="skiner-color skiner-white" data-color="theme-white"></span>
                    <span class="skiner-color skiner-black" data-color="theme-black"></span>
                </div>
            </div>
        </div>
        <!-- 侧边导航栏 -->
        <div class="left-sidebar">
            <!-- 用户信息 -->
            <div class="tpl-sidebar-user-panel">
                <div class="tpl-user-panel-slide-toggleable">
                    <div class="tpl-user-panel-profile-picture">
                        <img src="static/img/user04.png" alt="">
                    </div>
                    <span class="user-panel-logged-in-text" th:text="${loginUser.name}">
              <i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
              
          </span>
                    <a href="javascript:;" class="tpl-user-panel-action-link"> <span class="am-icon-pencil"></span> 账号设置</a>
                </div>
            </div>

            <!-- 菜单 -->
            <ul class="sidebar-nav">
               
                <li class="sidebar-nav-link">
                    <a href="javascript:;" class="sidebar-nav-sub-title">
                        <i class="am-icon-table sidebar-nav-link-logo"></i>健身咨询
                        <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                    </a>
                    <ul class="sidebar-nav sidebar-nav-sub">
                        <li class="sidebar-nav-link">
                            <a th:href="@{/topicImg}">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 焦点图片
                            </a>
                        </li>

                        <li class="sidebar-nav-link">
                            <a href="table-list-img.html">
                                <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 体育新闻
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-nav-link">
                    <a href="sign-up.html">
                        <i class="am-icon-clone sidebar-nav-link-logo"></i> 注册
                        <span class="am-badge am-badge-secondary sidebar-nav-link-logo-ico am-round am-fr am-margin-right-sm">6</span>
                    </a>
                </li>
               

            </ul>
        </div>


        <!-- 内容区域 -->
        <div class="tpl-content-wrapper">

           

            <div class="row-content am-cf">
                
                

                

                    <div class="am-u-sm-12 am-u-md-12  widget-margin-bottom-lg">

                        <div class="widget am-cf widget-body-lg">

                            <div class="widget-body  am-fr">
                                <div class="am-scrollable-horizontal " id="content">
                                    <table  class="am-table am-table-compact am-text-nowrap tpl-table-black " id="example-r">
                                        <thead>
                                            <tr>
                                                <th>文章标题</th>
                                                <th>作者</th>
                                                <th>时间</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="gradeX">
                                                <td>新加坡大数据初创公司 Latize 获 150 万美元风险融资</td>
                                                <td>张鹏飞</td>
                                                <td>2016-09-26</td>
                                                <td>
                                                    <div class="tpl-table-black-operation">
                                                    	<a th:href="@{/css/editormd.min.css}" ><i class="am-icon-pencil"></i> 编辑</a>
                                                      
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                            


                                            <!-- more data -->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    <script th:src="@{/static/js/amazeui.min.js}"></script>
    <script th:src="@{/static/js/amazeui.datatables.min.js}"></script>
    <script th:src="@{/static/js/dataTables.responsive.min.js}"></script>
    <script th:src="@{/static/js/app.js}"></script>

</body>

</html>
