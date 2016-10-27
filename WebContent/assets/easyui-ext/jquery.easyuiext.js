// 覆盖easyui控件默认值
$.fn.textbox.defaults.width = '100%';
$.fn.textbox.defaults.height = 26;
$.fn.textbox.defaults.tipPosition = 'top';
$.fn.combo.defaults.width = '100%';
$.fn.combo.defaults.height = 26;
$.fn.combobox.defaults.width = '100%';
$.fn.combobox.defaults.height = 26;
$.fn.combotree.defaults.width = '100%';
$.fn.combotree.defaults.height = 26;
$.fn.datetimespinner.defaults.width = '100%';
$.fn.datetimespinner.defaults.height = 26;
$.fn.datetimespinner.defaults.tipPosition = 'top';
$.fn.datagrid.defaults.border = 0;
$.fn.datagrid.defaults.pagination = true;
$.fn.datagrid.defaults.pageSize = 25;
$.fn.datagrid.defaults.pageList = [10,25,50,100];
$.fn.datagrid.defaults.rownumbers = true;
$.fn.datagrid.defaults.fit = true;
$.fn.datagrid.defaults.fitColumns = true;
$.fn.datagrid.defaults.singleSelect = true;
$.fn.treegrid.defaults.border = 0;
$.fn.treegrid.defaults.rownumbers = true;
$.fn.treegrid.defaults.fit = true;
$.fn.treegrid.defaults.fitColumns = true;
$.fn.treegrid.defaults.singleSelect = true;


$N = function (n){
	return $("[name='"+n+"']");
};



/*/ 使layout折叠后显示标题
$.extend($.fn.layout.paneldefaults, {
	onCollapse : function() {
		// 获取layout容器
		var layout = $(this).parents("div.layout");
		// 获取当前region的配置属性
		var opts = $(this).panel("options");
		// 获取key
		var expandKey = "expand" + opts.region.substring(0, 1).toUpperCase() + opts.region.substring(1);
		// 从layout的缓存对象中取得对应的收缩对象
		var expandPanel = layout.data("layout").panels[expandKey];
		// 针对横向和竖向的不同处理方式
		if (opts.region == "west" || opts.region == "east") {
			// 竖向的文字打竖,其实就是切割文字加br
			var split = [];
			for (var i = 0; i < opts.title.length; i++) {
				split.push(opts.title.substring(i, i + 1));
			}
			expandPanel.panel("body").addClass("panel-title").css("text-align", "center").html(split.join("<br>"));
		} else {
			expandPanel.panel("setTitle", opts.title);
		}
	}
});
//*/



$.extend($.fn.tabs.methods, {
    getTabById: function(jq,id) {
        var tabs = $.data(jq[0], 'tabs').tabs;
        for(var i=0; i<tabs.length; i++){
            var tab = tabs[i];
            if (tab.panel('options').id == id){
                return tab;
            }
        }
        return null;
    },
    selectById:function(jq,id) {
        return jq.each(function() {
            var state = $.data(this, 'tabs');
            var opts = state.options;
            var tabs = state.tabs;
            var selectHis = state.selectHis;
            if (tabs.length == 0) {return;}
            var panel = $(this).tabs('getTabById',id); // get the panel to be activated 
            if (!panel){return}
            var selected = $(this).tabs('getSelected');
            if (selected){
                if (panel[0] == selected[0]){return}
                $(this).tabs('unselect',$(this).tabs('getTabIndex',selected));
                if (!selected.panel('options').closed){return}
            }
            panel.panel('open');
            var title = panel.panel('options').title;        // the panel title 
            selectHis.push(title);        // push select history 
            var tab = panel.panel('options').tab;        // get the tab object 
            tab.addClass('tabs-selected');
            // scroll the tab to center position if required. 
            var wrap = $(this).find('>div.tabs-header>div.tabs-wrap');
            var left = tab.position().left;
            var right = left + tab.outerWidth();
            if (left < 0 || right > wrap.width()){
                var deltaX = left - (wrap.width()-tab.width()) / 2;
                $(this).tabs('scrollBy', deltaX);
            } else {
                $(this).tabs('scrollBy', 0);
            }
            $(this).tabs('resize');
            opts.onSelect.call(this, title, $(this).tabs('getTabIndex',panel));
        });
    },
    existsById:function(jq,id){
        return $(jq[0]).tabs('getTabById',id) != null;
    }
});

/**
 * 可以穿透frame的对话框
 * @param opts
 * @returns
 */
dialog = function (opts) {
    var query = top.$, fnClose = opts.onClose;
    opts = query.extend({
    	id: 'dlg-'+(new Date()).getTime(),
        title: '对话框',
        width: 400,
        height: 400,
        closed: false,
        cache: false,
        modal: true,
        html: '',
        url: '',
        viewModel: query.noop
    }, opts);
 
    opts.onClose = function () {
        if (query.isFunction(fnClose)) fnClose();
        query(this).dialog('destroy');
    };
 
    if (query.isFunction(opts.html)) {
        opts.html = utils.functionComment(opts.html);
    } else if (/^\#.*\-template$/.test(opts.html)) {
        opts.html = $(opts.html).html();
    } else if (opts.url) {  
        opts.html = '<div style="width:100%;height:100%;overflow:hidden;"><iframe id="dlgwin-' + opts.id + '" name="' + opts.id + '" src="' + opts.url + '" allowTransparency="true" scrolling="auto" width="100%" height="100%" frameBorder="0"></iframe><div>';  
    }
 
    var win = query('<div id="' + opts.id + '"/>').appendTo('body').html(opts.html);
    
    win.dialog(opts);
    query.parser.onComplete = function () {
        if ("undefined" === typeof ko)
            opts.viewModel(win);
        else
            ko.applyBindings(new opts.viewModel(win), win[0]);
 
        query.parser.onComplete = query.noop;
    };
    query.parser.parse(win);
    
    top.$d = win;
    top.$dw = top.$('#dlgwin-' + opts.id)[0].contentWindow;
    
    return win;
};

dialogDefaultHandler = function(okHandler, cancelHandler) {
	return [{text:'确定', iconCls:'icon-ok', handler:okHandler}, {text:'取消', iconCls:'icon-cancel', handler: cancelHandler}];
}

/**
 * 以新标签页方式在主框架中打开
 * @param title
 * @param url
 * @param ciconCls
 */
function openNewTab(title, url, ciconCls) {
	var id = "tab_" + (new Date().getTime());
	top.addTab(id, title, url, ciconCls);
}

/**
 * 用于在tab页面中，获取当前tab的索引号
 * @returns {Number}
 */
function getCurrentTabIndex() {
	var tabIndex = -1;
	top.$('#centerTabs iframe').each(function(i, o){
		if (o.contentDocument.url == document.url) {
			tabIndex = i;
		}
	});
	return tabIndex;
}

function jumpTab(id, title, url, ciconCls) {
	top.addTab(id, title, url, ciconCls);
	top.$('#centerTabs').tabs('close', getCurrentTabIndex());
}

/**
 * 创建新标签方式打开链接
 * @param linkText
 * @param title
 * @param url
 * @param ciconCls
 * @returns {String}
 */
function createOpenNewTabLink(linkText, title, url, ciconCls) {
	return "<a href=\"javascript:openNewTab('"+title+"', '"+url+"');\">"+linkText+"</a>";
}

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