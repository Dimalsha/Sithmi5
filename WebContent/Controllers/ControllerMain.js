//==Controller===============================================
//--User--------------------------------------------
//--Login-----
$(document).on("click", "#btnLogin",function())
{
	var result = isValidFormLogin(); //use client-model
	if(result=="true")
	{	$("#formLogin").submit();	}
	else
	{
		$("#divStsMsgLogin").html(result);	}
	});
	
	
	//==CLIENT-MODEL=================================
	//--User------------------------
	function isValidFormLogin()
	{
		if($.trim($("#txtUserName").val())=="")
			{ return "Enter Username";	}
		
		if($.trim($("#txtPassword").val())=="")
			{	return "Enter Password";	}
		
		return "true";
	}
	
	//==Item==========================================
	//==Item------------------------------
	function isValidFormItem()
	{
		if($.trim($("#txtItemName").val())=="") {
			return "Enter Item Name";
			
			/////////////////////////////////
			//////////////////////////////////
			
			return "true/false";
		}
	}
	
//--Items-------------------------------------------------
//--Save/Update----------------------------------
	$(document.on("click","#btnSave", function()
	{
		var result = isValidFromItem(); //use client-model
		if(result=="true")
		{	$("#fromItems").submit();	}
		else
		{	$("#divStsMsgItem").html(result);	}
	});
	
	
/////////--Edit---------------------
	$(document).on("click", "btnEdit", function()
	{
		$("#hidMode").val("update");
		$("#hidID").val($(this).attr("param"));
		$("#txtItemName").val($(this).closest("tr").find('td:eq(1)').text());
		$("#txtItemDesc").val($(this).closest("tr").find('td:eq(2)').text());
	});
	
///////---Remove------------
	$(document).on("click", "#btnRemove", function()
	{
		$("#hidMode").val("remove");
		$("#hidID").val($(this).attr("param"));
		var res = confirm("Are you sure?");
			if (res == true)	{
				$("#formItems").submit();
			}
	});