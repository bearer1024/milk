<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>

<head>
    <title>奶粉资质信息页面</title>
    <meta charset="utf-8">
    <!-- Bootstrap -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="../../assets/styles.css" rel="stylesheet" media="screen">
    <script language="javascript" type="text/javascript" src="../../vendors/flot/excanvas.min.js"></script>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="../../vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <script src="../../vendors/jquery-1.9.1.js"></script>
    <style>
        * {
            padding:0;
            margin:0;
        }
        .wrap {
            width:300px;
            margin:20px auto 0;
        }
        table {
            border-collapse:collapse;
            border-spacing:0;

            width:80%;
        }
        td {
            background-color:#DDF0ED;
            border-bottom:1px solid #d0d0d0;
            color:#404060;
            padding:10px;
            font:14px "微软雅黑";
        }
        tbody tr {
            background-color:#f0f0f0;
        }
        tbody tr:hover {
            cursor:pointer;
            background-color:#fafafa;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function(){
            var page=${currentPage};

            $("#more").click(function(event){
                if(page < ${totalPage}) {
                    page++;
                    window.location.href = "/admin/registCertificate/list-register?currentPageNo=" + page;
                    return true;
                } else {
                    alert("已经是最后一页！！");
                    return true;
                }
            });
            $("#last").click(function(event){
                if(page<=1){
                    alert("已经是第一页了！");
                    return true;
                } else {
                    page--;
                    window.location.href = "/admin/registCertificate/list-register?currentPageNo=" + page;
                    return true;
                }
            });


        });
    </script>
</head>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">管理页面</a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i> Vincent Gabriel <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">Profile</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="login.jsp">Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav">
                    <li class="active">
                        <a href="#">Dashboard</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Settings <b class="caret"></b>

                        </a>
                        <ul class="dropdown-menu" id="menu1">
                            <li>
                                <a href="#">Tools <i class="icon-arrow-right"></i>

                                </a>
                                <ul class="dropdown-menu sub-menu">
                                    <li>
                                        <a href="#">Reports</a>
                                    </li>
                                    <li>
                                        <a href="#">Logs</a>
                                    </li>
                                    <li>
                                        <a href="#">Errors</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">SEO Settings</a>
                            </li>
                            <li>
                                <a href="#">Other Link</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">Other Link</a>
                            </li>
                            <li>
                                <a href="#">Other Link</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Content <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">Blog</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">News</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Custom Pages</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Calendar</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="#">FAQ</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Users <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">User List</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Search</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Permissions</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3" id="sidebar">
            <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                <li class="active">
                    <a href="javascript:void(0)" onclick="location.reload()"><i class="icon-chevron-right"></i>奶粉资质列表</a>
                    <a href="/admin/addMilkRegInfo.jsp"><i class="icon-chevron-right"></i>增加奶粉资质</a>
                </li>
            </ul>
        </div>
        <!--/span-->
        <div class="span9" id="content">
            <!-- morris stacked chart -->
            <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left">奶粉资质信息</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <table>
                                <tbody id="j_tb">
                                <tr>
                                    <td>产品名称</td>
                                    <td>申请编码</td>
                                    <td>奶粉段位</td>
                                    <td>申请人姓名</td>
                                    <td>资质申请时间</td>
                                    <td>操作</td>
                                    <td>操作</td>
                                </tr>
                                <c:forEach items="${list}" var="ss">
                                    <tr>
                                        <td>${ss.product_name}</td>
                                        <td>${ss.application_number}</td>
                                        <td>${ss.powder_level}</td>
                                        <td>${ss.applicant_name}</td>
                                        <td>${ss.publish_certificate_time}</td>
                                        <td><a href="/admin/editMilkRegInfo.jsp?id=${ss.id}&productName=${ss.product_name}&applicationNumber=${ss.application_number}&level=${ss.powder_level}&applicantName=${ss.applicant_name}&publish_certificate_time=${ss.publish_certificate_time}">编辑</a></td>
                                        <td><a href="javascript:if(confirm('确实要删除吗?'))location='/admin/registCertificate/delete-certificate?id=${ss.id}'">删除</a></td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>

                            <a id="last" href="#">上一页</a> <a id="more" href="#">下一页</a>
                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>

            <!--编辑框和文本输入框-->
            <%--<div class="row-fluid">--%>
            <%--<!-- block -->--%>
            <%--<div class="block">--%>
            <%--<div class="navbar navbar-inner block-header">--%>
            <%--<div class="muted pull-left">Form Example</div>--%>
            <%--</div>--%>
            <%--<div class="block-content collapse in">--%>
            <%--<div class="span12">--%>
            <%--<form class="form-horizontal">--%>
            <%--<fieldset>--%>
            <%--<legend>Form Components</legend>--%>
            <%--<div class="control-group">--%>
            <%--<label class="control-label" for="typeahead">Text input </label>--%>
            <%--<div class="controls">--%>
            <%--<input type="text" class="span6" id="typeahead"  data-provide="typeahead" data-items="4" data-source='["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Dakota","North Carolina","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]'>--%>
            <%--<p class="help-block">Start typing to activate auto complete!</p>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="control-group">--%>
            <%--<label class="control-label" for="date01">Date input</label>--%>
            <%--<div class="controls">--%>
            <%--<input type="text" class="input-xlarge datepicker" id="date01" value="02/16/12">--%>
            <%--<p class="help-block">In addition to freeform text, any HTML5 text-based input appears like so.</p>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="control-group">--%>
            <%--<label class="control-label" for="optionsCheckbox">Checkbox</label>--%>
            <%--<div class="controls">--%>
            <%--<label class="uniform">--%>
            <%--<input class="uniform_on" type="checkbox" id="optionsCheckbox" value="option1">--%>
            <%--Option one is this and that&mdash;be sure to include why it's great--%>
            <%--</label>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="control-group">--%>
            <%--<label class="control-label" for="select01">Select list</label>--%>
            <%--<div class="controls">--%>
            <%--<select id="select01" class="chzn-select">--%>
            <%--<option>something</option>--%>
            <%--<option>2</option>--%>
            <%--<option>3</option>--%>
            <%--<option>4</option>--%>
            <%--<option>5</option>--%>
            <%--</select>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="control-group">--%>
            <%--<label class="control-label" for="multiSelect">Multicon-select</label>--%>
            <%--<div class="controls">--%>
            <%--<select multiple="multiple" id="multiSelect" class="chzn-select span4">--%>
            <%--<option>Alabama</option><option>Alaska</option><option>Arizona</option><option>Arkansas</option><option>California</option><option>Colorado</option><option>Connecticut</option><option>Delaware</option><option>District Of Columbia</option><option>Florida</option><option>Georgia</option><option>Hawaii</option><option>Idaho</option><option>Illinois</option><option>Indiana</option><option>Iowa</option><option>Kansas</option><option>Kentucky</option><option>Louisiana</option><option>Maine</option><option>Maryland</option><option>Massachusetts</option><option>Michigan</option><option>Minnesota</option><option>Mississippi</option><option>Missouri</option><option>Montana</option><option>Nebraska</option><option>Nevada</option><option>New Hampshire</option><option>New Jersey</option><option>New Mexico</option><option>New York</option><option>North Carolina</option><option>North Dakota</option><option>Ohio</option><option>Oklahoma</option><option>Oregon</option><option>Pennsylvania</option><option>Rhode Island</option><option>South Carolina</option><option>South Dakota</option><option>Tennessee</option><option>Texas</option><option>Utah</option><option>Vermont</option><option>Virginia</option><option>Washington</option><option>West Virginia</option><option>Wisconsin</option><option>Wyoming</option>--%>
            <%--</select>--%>
            <%--<p class="help-block">Start typing to activate auto complete!</p>--%>
            <%--</div>--%>

            <%--</div>--%>
            <%--<div class="control-group">--%>
            <%--<label class="control-label" for="fileInput">File input</label>--%>
            <%--<div class="controls">--%>
            <%--<input class="input-file uniform_on" id="fileInput" type="file">--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="control-group">--%>
            <%--<label class="control-label" for="textarea2">Textarea WYSIWYG</label>--%>
            <%--<div class="controls">--%>
            <%--<textarea class="input-xlarge textarea" placeholder="Enter text ..." style="width: 810px; height: 200px"></textarea>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="form-actions">--%>
            <%--<button type="submit" class="btn btn-primary">Save changes</button>--%>
            <%--<button type="reset" class="btn">Cancel</button>--%>
            <%--</div>--%>
            <%--</fieldset>--%>
            <%--</form>--%>

            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<!-- /block -->--%>
            <%--</div>--%>

        </div>
    </div>
    <hr>
    <footer>
        <p></p>
    </footer>
</div>
<!--/.fluid-container-->
<link href="vendors/datepicker.css" rel="stylesheet" media="screen">
<link href="vendors/uniform.default.css" rel="stylesheet" media="screen">
<link href="vendors/chosen.min.css" rel="stylesheet" media="screen">

<link href="vendors/wysiwyg/bootstrap-wysihtml5.css" rel="stylesheet" media="screen">

<script src="vendors/jquery-1.9.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="vendors/jquery.uniform.min.js"></script>
<script src="vendors/chosen.jquery.min.js"></script>
<script src="vendors/bootstrap-datepicker.js"></script>

<script src="vendors/wysiwyg/wysihtml5-0.3.0.js"></script>
<script src="vendors/wysiwyg/bootstrap-wysihtml5.js"></script>

<script src="vendors/wizard/jquery.bootstrap.wizard.min.js"></script>

<script type="text/javascript" src="vendors/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="assets/form-validation.js"></script>

<script src="assets/scripts.js"></script>
<script>

    jQuery(document).ready(function() {
        FormValidation.init();
    });


    $(function() {
        $(".datepicker").datepicker();
        $(".uniform_on").uniform();
        $(".chzn-select").chosen();
        $('.textarea').wysihtml5();

        $('#rootwizard').bootstrapWizard({onTabShow: function(tab, navigation, index) {
                var $total = navigation.find('li').length;
                var $current = index+1;
                var $percent = ($current/$total) * 100;
                $('#rootwizard').find('.bar').css({width:$percent+'%'});
                // If it's the last tab then hide the last button and show the finish instead
                if($current >= $total) {
                    $('#rootwizard').find('.pager .next').hide();
                    $('#rootwizard').find('.pager .finish').show();
                    $('#rootwizard').find('.pager .finish').removeClass('disabled');
                } else {
                    $('#rootwizard').find('.pager .next').show();
                    $('#rootwizard').find('.pager .finish').hide();
                }
            }});
        $('#rootwizard .finish').click(function() {
            alert('Finished!, Starting over!');
            $('#rootwizard').find("a[href*='tab1']").trigger('click');
        });
    });
</script>
</body>

</html>