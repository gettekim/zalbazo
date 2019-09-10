<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<head>

<link href="/webjars/css/jquery.multiselect.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src="/webjars/js/jquery.multiselect.js"></script>
<style>

.ms-options-wrap{
 width : 300px;
}


</style>
</head>
<body>


<div class="container">
	<select id="label" name="country" multiple class="form-control" >
	<option value="미용">미용</option>
	<option value="주차">주차</option>
	<option value="특별">특별</option>
	<option value="24시">24시</option>
	
	


</select>
<br/>



<script>
$('select[multiple]').multiselect({
// text to use in dummy input
placeholder   : 'select',    

// how many columns should be use to show options
columns       : 3,  

// include option search box   
search        : false,    

// search filter options
searchOptions : {
  default      : 'Search', // search input placeholder text
  showOptGroups: false     // show option group titles if no options remaining
},     

// add select all option
selectAll     : false, 

// select entire optgroup   
selectGroup   : false,  

// minimum height of option overlay
minHeight     : 100,   

// maximum height of option overlay
maxHeight     : null,  

// display the checkbox to the user
showCheckbox  : true,  

// options for jquery.actual
jqActualOpts  : {},    

// maximum width of option overlay (or selector)
maxWidth      : null, 

// minimum number of items that can be selected
minSelect     : false, 

// maximum number of items that can be selected
maxSelect     : false, 

});
</script>


</body>
</html>