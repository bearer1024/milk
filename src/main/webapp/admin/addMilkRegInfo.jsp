<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.sql.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
    
    <head>
        <title>增加奶粉资质信息页面</title>
        <!-- Bootstrap -->
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="../assets/styles.css" rel="stylesheet" media="screen">
        <script language="javascript" type="text/javascript" src="../vendors/flot/excanvas.min.js"></script>
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <script src="../vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    
    <body>
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
                            <a href="addMilkRegInfo.jsp"><i class="icon-chevron-right"></i>增加奶粉资质管理页面</a>
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
                                <div class="muted pull-left">表单提交</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                     <form class="form-horizontal" action="registCertificate/add" method="post">
                                      <fieldset>
                                        <legend>输入奶粉资质信息</legend>
                                        <div class="control-group">
                                          <label class="control-label">受理编号</label>
                                          <div class="controls">
                                            <input class="input-xlarge focused" name="applicationNumber" type="text" value="奶粉受理编号">
                                          </div>
                                        </div>
                                          <div class="control-group">
                                              <label class="control-label">产品名称</label>
                                              <div class="controls">
                                                  <input class="input-xlarge focused" name="productName" type="text" value="产品名称">
                                              </div>
                                          </div>

                                          <div class="control-group">
                                              <label class="control-label">奶粉段位</label>
                                              <div class="controls">
                                                  <input class="input-xlarge focused" name="powderLevel" type="text" value="奶粉段位">
                                              </div>
                                          </div>
                                          <div class="control-group">
                                              <label class="control-label">申请人姓名</label>
                                              <div class="controls">
                                                  <input class="input-xlarge focused" name="applicantName" type="text" value="申请人姓名">
                                              </div>
                                          </div>
                                          <div class="control-group">
                                              <label class="control-label">公布证书待领信息的时间</label>
                                              <div class="controls">
                                                  <input class="input-xlarge focused" name="publishCertificateTime" type="text" value="公布证书待领信息的时间">
                                              </div>
                                          </div>

                                        <%--<div class="control-group success">--%>
                                          <%--<label class="control-label" for="selectError">Select with success</label>--%>
                                          <%--<div class="controls">--%>
                                            <%--<select id="selectError">--%>
                                              <%--<option>1</option>--%>
                                              <%--<option>2</option>--%>
                                              <%--<option>3</option>--%>
                                              <%--<option>4</option>--%>
                                              <%--<option>5</option>--%>
                                            <%--</select>--%>
                                            <%--<span class="help-inline">Woohoo!</span>--%>
                                          <%--</div>--%>
                                        <%--</div>--%>

                                        <div class="form-actions">
                                          <button type="submit" class="btn btn-primary">提交</button>
                                          <button type="reset" class="btn">取消</button>
                                        </div>
                                      </fieldset>
                                    </form>

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
                <p>奶粉数据</p>
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