<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="icon" type="image/png" href="static/images/favicon.png"/>
<link rel="stylesheet" type="text/css" media="screen" href="static/css/redmond/jquery-ui-1.8.19.custom.css"/>
	
<link rel="stylesheet" type="text/css" media="screen" href="static/css/ui.jqgrid.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="static/css/ui.multiselect.css"/>
<link rel="stylesheet" type="text/css" href="static/css/template.css"/>
<script type="text/javascript">
$(document).ready(function() {
    $('input[class^="class-"]').focus(function() {
        if($(this).val() == $(this).data('default_val') || !$(this).data('default_val')) {
            $(this).data('default_val', $(this).val());
            $(this).val('');
        }
    });

    $('input[class^="class-"]').blur(function() {
        if ($(this).val() == '') $(this).val($(this).data('default_val'));
    });
});

</script>
</head>
<body>
<form method="post" action="">

   <input type="text" class="class-1" value="Enter Choice #1">
   <input type="text" class="class-2" value="Enter Choice #2">
    <p>
        When you click the below button, all the input elements in the div are disabled, if they are enabled and vice versa.
    </p>
    <p>
    Click to change: <input id="toggleElement" type="checkbox" name="toggle" onchange="toggleStatus()" />
    </p>
    <div id="elementsToOperateOn">
        This is our example div block. <br />
        Sample Text Box: <input type="text" name="name" /> <br />
        Sample Checkbox : <input type="checkbox" name="participate" /> <br/>
        Sample Radio : <input type="radio" name="bookEarly" /> <br />
        Sample Select: <select name="sampleSelect">
                            <option>Option 1</option>
                            <option>Option 2</option>
                        </select>
    </div>
</form>
<p>
This is our sample page. The article can be found at <a href="http://techchorus.net/disable-and-enable-input-elements-div-block-using-jquery">Tech Chorus</a>
</p>
<form name ="try" >
<input id=fn type="text" value="YOUR NAME" disabled>
<input type="text" value="YOUR NAME"  disabled>
<input type="text" value="YOUR NAME"  disabled>
<input type="text" value="YOUR NAME"  disabled>
<input type="text" value="YOUR NAME"  disabled>
<input type="text" value="YOUR NAME"  disabled>
<input type="text" value="YOUR NAME" >

</form>
<form>
<input type="text" value="YOUR NAME" >
<input type="text" value="YOUR NAME" >
</form>
</body>
</html>