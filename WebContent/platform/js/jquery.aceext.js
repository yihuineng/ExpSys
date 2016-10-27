jQuery.fn.extend({
	serializeJSON: function(){
		var json = {};
		var fields = this.serializeArray();
		$.each(fields, function(i, field){
			json[field.name] = field.value;
		});
		return json;
	},
	
	getCheckedValues: function(){
		var chkSelectValues = "";
		this.each(function(i, obj){
			if ($(obj).is(':checked')) {
				if (i>0) chkSelectValues += ",";
				chkSelectValues += obj.value;
			}
		});
		return chkSelectValues;
	}
});

jQuery.extend({
	formatDate : function(date, pattern){    
	    var result = pattern;
	    var year = date.getFullYear().toString();
	    result = result.replace(/(yyyy)/g, year);
		
	    var month = (date.getMonth() + 1).toString();
	    if (month.length === 1) 
	        month = "0" + month;
	    result = result.replace(/(MM)/g, month);
	    result = result.replace(/(M)/g, date.getMonth());
	    
	    var day = date.getDate().toString();
	    if (day.length === 1) 
	        day = "0" + day;
	    result = result.replace(/(dd)/g, day);
	    result = result.replace(/(d)/g, date.getDate());
	    
	    var hour = date.getHours().toString();
	    if (hour.length === 1) 
	        hour = "0" + hour;
	    result = result.replace(/(HH)/g, hour);
	    result = result.replace(/(H)/g, date.getHours());
	    
	    var minute = date.getMinutes().toString();
	    if (minute.length === 1) 
	        minute = "0" + minute;
	    result = result.replace(/(mm)/g, minute);
	    result = result.replace(/(m)/g, date.getMinutes());
	    
	    var second = date.getSeconds().toString();
	    if (second.length === 1) 
	        second = "0" + second;
	    result = result.replace(/(ss)/g, second);
	    result = result.replace(/(s)/g, date.getSeconds());
		
		var millisecond = date.getMilliseconds().toString();
	    if (millisecond.length === 1) 
	        millisecond = "00" + millisecond;
		if (millisecond.length === 2) 
	        millisecond = "0" + millisecond;
	    result = result.replace(/(SSS)/g, millisecond);
	    result = result.replace(/(S)/g, date.getMilliseconds());
	    return result;
	},
	
	parseDate : function(dateStr, pattern){
		var result = new Date(0);
	    var source = dateStr;
	    var startIndex = -1;
		
	    startIndex = pattern.indexOf("yyyy");
	    if (startIndex >= 0) {
	        var year = source.substring(startIndex, startIndex + 4);
			result.setFullYear(year);
			if(result.getFullYear() != year){
				throw new Error("SimpleDateFormat parse " + options.source + " error!");
			}
			pattern.replace(/(yyyy)/g, year);
	    }
		startIndex = pattern.indexOf("MM");
	    if (startIndex >= 0) {
	        var month = source.substring(startIndex, startIndex + 2) - 1;
			pattern.replace(/(MM)/g, month);
			result.setMonth(month);
			if(result.getMonth() != month){
				throw new Error("SimpleDateFormat parse " + options.source + " error!");
			}
	    }
		startIndex = pattern.indexOf("dd");
	    if (startIndex >= 0) {
	        var day = source.substring(startIndex, startIndex + 2);
			pattern.replace(/(dd)/g, day);
			result.setDate(day);
			if(result.getDate() != day){
				throw new Error("SimpleDateFormat parse " + options.source + " error!");
			}
	    }
		startIndex = pattern.indexOf("HH");
	    if (startIndex >= 0) {
	        var hour = source.substring(startIndex, startIndex + 2);
			pattern.replace(/(HH)/g, hour);
			result.setHours(hour);
			if(result.getHours() != hour){
				throw new Error("SimpleDateFormat parse " + options.source + " error!");
			}
	    }
		
		startIndex = pattern.indexOf("mm");
	    if (startIndex >= 0) {
	        var minute = source.substring(startIndex, startIndex + 2);
			pattern.replace(/(mm)/g, minute);
			result.setMinutes(minute);
			if(result.getMinutes() != minute){
				throw new Error("SimpleDateFormat parse " + options.source + " error!");
			}
	    }
		
		startIndex = pattern.indexOf("ss");
	    if (startIndex >= 0) {
	        var second = source.substring(startIndex, startIndex + 2);
			pattern.replace(/(ss)/g, second);
			result.setSeconds(second);
			if(result.getSeconds() != second){
				throw new Error("SimpleDateFormat parse " + options.source + " error!");
			}
	    }
		
		startIndex = pattern.indexOf("SSS");
	    if (startIndex >= 0) {
	        var millisecond = source.substring(startIndex, startIndex + 3);
			pattern.replace(/(SSS)/g, millisecond);
			result.setMilliseconds(millisecond);
			if(result.getMilliseconds() != millisecond){
				throw new Error("SimpleDateFormat parse " + options.source + " error!");
			}
	    }
		return result;
	}
});

$.wangda = {};

$.wangda.getUID = function (prefix) {
    do prefix += ~~(Math.random() * 1000000)
    while (document.getElementById(prefix))
    return prefix
};

$.wangda.parseOptions = function(target, properties){
	var t = $(target);
	var options = {};
	
	var s = $.trim(t.attr('data-options'));
	if (s){
		if (s.substring(0, 1) != '{'){
			s = '{' + s + '}';
		}
		options = (new Function('return ' + s))();
	}
	$.map(['width','height','left','top','minWidth','maxWidth','minHeight','maxHeight'], function(p){
		var pv = $.trim(target.style[p] || '');
		if (pv){
			if (pv.indexOf('%') == -1){
				pv = parseInt(pv) || undefined;
			}
			options[p] = pv;
		}
	});
	
	if (properties){
		var opts = {};
		for(var i=0; i<properties.length; i++){
			var pp = properties[i];
			if (typeof pp == 'string'){
				opts[pp] = t.attr(pp);
			} else {
				for(var name in pp){
					var type = pp[name];
					if (type == 'boolean'){
						opts[name] = t.attr(name) ? (t.attr(name) == 'true') : undefined;
					} else if (type == 'number'){
						opts[name] = t.attr(name)=='0' ? 0 : parseFloat(t.attr(name)) || undefined;
					}
				}
			}
		}
		$.extend(options, opts);
	}
	
	return options;
};


// 操作确认提示
$.wangda.confirm = function(message, okHandler){
	var event = $.event.fix(event || window.event || arguments.callee.caller.arguments[0]);
	var domEle = event.target;
	
	var uid = $.wangda.getUID("confirm");
	$(domEle).popover({
	    html : true,
	    placement : 'auto bottom',
	    trigger : 'manual',
	    title : '操作确认',
	    container: 'body',
	    viewport : { selector: 'body', padding: 20 },
	    content : '\
		    <div id="'+uid+'" class="wangda-popover-confirm">\
		    	<div class="row">\
					<div class="col-xs-12">\
	   					'+message+'\
	   				</div>\
	   			</div>\
	   			<div class="row">\
					<div class="col-xs-12 align-right">\
						<button type="button" class="ok btn btn-primary btn-xs">确认</button>\
					    <button type="button" class="cancel btn btn-default btn-xs">取消</button>\
	   				</div>\
	   			</div>\
	   		</div>'
	}).popover('show');

	$("#"+uid+" .ok").on("click", function(){
		$("[aria-describedby='"+$(this).closest(".popover")[0].id+"']").popover('destroy');
		okHandler();
	});
	$("#"+uid+" .cancel").on("click", function(){
		$("[aria-describedby='"+$(this).closest(".popover")[0].id+"']").popover('destroy');
	});
}

// 操作成功消息提示
$.wangda.gritterSuccess = function(message) {
	$.gritter.add({
		title: '操作成功消息',
		text: message,
		class_name: 'gritter-success gritter-light'
	});
}
// 操作失败消息提示
$.wangda.gritterError = function(message) {
	$.gritter.add({
		title: '操作失败消息',
		text: message,
		class_name: 'gritter-error gritter-light'
	});
}

jQuery.fn.extend({
	// 表单默认Ajax提交
	defaultAjaxSubmit: function(successHandler){
	    if (!this.valid()) {
	    	return false;
	    }
	    
	    this.ajaxSubmit(function(response) {
			if (response.status <= 0) {
				$.wangda.gritterError(response.message);
			} else {
				$.wangda.gritterSuccess(response.message);
				successHandler(response);
			}
		});
	},
	
	showDefaultRemoteModal : function(url){
		url += (url.indexOf("?")<0 ? "?" : "&") + "_=" + new Date().getTime();
		this.one("shown.bs.modal", function(){
			$(this).find(".modal-body").load(url, function(){
				$(this).find(".wangda-validateform").validate();
			});
	    }).one("hidden.bs.modal", function(){
	    	$(this).find(".modal-body").html("");
	    }).modal('show');
	}
});

/**
 * jqGrid封装
 */
$.wangda.jqGrid = {};
$.wangda.jqGrid.defaults = {
		datatype : "json",
		height : "auto",
		shrinkToFit : true,
		autowidth : false,
		forceFit : true,
		gridview : true, // 设为true可提升效率，但不能再使用treeGrid, subGrid, 或afterInsertRow事件

		rowNum : 15,
		rowList : [ 10, 15, 30 ],
		altRows : true,
		
		lastpage:true,
		multiselect : true,
		multiboxonly : true
};
$.wangda.jqGrid.colModel = {};
$.wangda.jqGrid.colModel.defaults = {
		sortable : false
};

$(function() {
	$(".wangda-datagrid").each(function(i, grid){
		var options = $.wangda.parseOptions(grid, ['altclass','altRows','autoencode','autowidth','caption','cellLayout','footerrow','forceFit','gridstate','gridview','height','hoverrows','page','pager','pginput','shrinkToFit','url','width']);
		
		var colNames = [], colModel = [];
		$(grid).find("tr:first th").each(function(i, domEle){
			var colModelOptions = $.wangda.parseOptions(domEle, ['align','classes','datefmt','defval','fixed','hidedlg','hidden','index','key','label','name','resizable','sortable','title','width']);
			var colModelOpts = $.extend({}, $.wangda.jqGrid.colModel.defaults, colModelOptions);
			colModel.push(colModelOpts);
			colNames.push(domEle.innerHTML);
		});
		options['colNames'] = colNames;
		options['colModel'] = colModel;
		
		var opts = $.extend({}, $.wangda.jqGrid.defaults, options);
		
		$(grid).jqGrid(opts);
	});
	
	// resize to fit page size
	$(window).on('resize.jqGrid', function () {
		$(".wangda-datagrid").each(function(i, grid){
			$(grid).jqGrid('setGridWidth', $(grid).closest('.ui-jqgrid').parent().width());
		});
    });
	
	// resize on sidebar collapse/expand
	$(document).on('settings.ace.jqGrid' , function(ev, event_name, collapsed) {
		if( event_name === 'sidebar_collapsed' || event_name === 'main_container_fixed' ) {
			// setTimeout is for webkit only to give time for DOM changes and then redraw!!!
			setTimeout(function() {
				$(window).triggerHandler('resize.jqGrid');
			}, 0);
		}
    });
	
	// trigger window resize to make the grid get the correct size
	$(window).triggerHandler('resize.jqGrid');
	
	
	/** 初始化form验证功能 **/
	jQuery.validator.setDefaults({
		errorElement: 'label',
		errorClass: 'help-inline',
		focusInvalid: true,
		highlight: function (e) {
			$(e).closest('.form-group').removeClass('has-info').addClass('has-error');
		},
		success: function (e) {
			$(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
			$(e).remove();
		},
		errorPlacement: function (error, element) {
			if(element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
				var controls = element.closest('div[class*="col-"]');
				if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
				else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
			}
			else if(element.is('.select2')) {
				error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
			}
			else if(element.is('.chosen-select')) {
				error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
			}
			else error.insertBefore(element);
		}
	});
	$(".wangda-validateform").validate();
});