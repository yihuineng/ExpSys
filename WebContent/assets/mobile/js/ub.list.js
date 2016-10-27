//显示或隐藏搜索框，给手机端调用
function showOrHideSearch() {
	var obj = document.querySelector('.mui-slider-group');
	var classVal = obj.getAttribute('class');
	if (classVal == "mui-slider-group ub-search-group") {
		obj.setAttribute('class', 'mui-slider-group');
		document.querySelector('.mui-search').setAttribute('class', 'mui-search ub-hide');
		document.getElementById('ub-search').value = ""; 
		$keyword="";
		document.getElementById('searchBtn').setAttribute('class', 'ub-hide');
	} else {
		obj.setAttribute('class', 'mui-slider-group ub-search-group');
		document.querySelector('.mui-search').setAttribute('class', 'mui-input-row mui-search');
		document.getElementById('searchBtn').setAttribute('class', '');
	}
}

//播放录音 BUG:audio.duration在safari中显示infinity
function startPlay(fileName) {
	var url = $audioPath + fileName;// 固定路径
	if ($audio.id == fileName) { // 重新点击
		if ($audio.paused) {
			$audio.load();
			$audio.play();
			$pi = setInterval(function() {
				$pt.innerText = " 播放中...";
				if ($audio.paused){
					$pt.innerText = " 点击播放";
					clearInterval($pi);
				}
			}, 1000);
		} else { // 还在播
			$audio.pause();
			clearInterval($pi);
			$pt.innerText = " 点击播放";
		}
		return;
	}
	if ($audio != "" && !$audio.paused) { // 有前一个在播，停掉
		$audio.pause();
		clearInterval($pi);
		$pt.innerText = " 点击播放";
	}
	// 全部处理好了，新的播放
	$audio = new Audio(url);
	$audio.id = fileName;
	$pt = document.getElementById(fileName + "_hint");
	$audio.load();
	$audio.play();
	$pi = setInterval(function() {
		$pt.innerText = " 播放中...";
		if ($audio.paused){
			$pt.innerText = " 点击播放";
			clearInterval($pi);
		}
	}, 1000);
}

// 重新加载页面，包含type: all myPub myTask 
function reLoadPage(searchType) {
	$keyword = document.getElementById('ub-search').value;
	var url = location.href.split('?')[0] + "?searchType=" + searchType + "&keyword=" + $keyword;
	location.href = url;
}

//明细 跳转到明细页面
function taskView(taskid) {
	var url = $serverip + "oa/ub/ubdetail?taskid=" + taskid;
	WebViewJavascriptBridge.callHandler('pushUrl', {
		"url" : url
	});
}

// 交办 跳转到交办页面
function taskToOther(taskid) {
	var url = $serverip + "oa/ub/ubadd?fid=" + taskid;
	WebViewJavascriptBridge.callHandler('pushUrl', {
		"url" : url
	});
}
// 转日志
function taskToLog(taskid) {
	mui.getJSON($serverip + "api/ubTask/doUbToWorkLogAdd", {
		id : taskid
	}, function(mdata) {
		mui.alert(mdata.result.message);
	});
}
// 提醒修改 -1 0 3600 21600 43200 86400 259200 604800
function setRemindTime(taskid, time, formatTime) {
	mui.getJSON($serverip + "api/ubTask/setRemindTimeById", {
		id : taskid,
		time : time,
		formatTime : formatTime
	}, function(mdata) {
		mui.alert(mdata.result.message);
		var obj = document.getElementById(taskid + '_alertSet');
		var obj2 = document.getElementById(taskid + '_aheadFormat');
		if (mdata.result.status == 1 && time == "-1") {
			// 隐藏提醒设置
			obj.setAttribute('class', 'ub-info-other ub-hide');
		} else {
			obj.setAttribute('class', 'ub-info-other');
			obj2.innerText = formatTime;
		}
	});
}
// 取消
function taskCancel(taskid) {
	mui.getJSON($serverip + "api/ubTask/taskCancel", {
		id : taskid
	}, function(mdata) {
		mui.alert(mdata.result.message);
		if (mdata.result.status == 1) {
			//重载页面
			reLoadPage($searchType);
		}
	});
}
// 重新执行或者恢复
function taskReDo(taskid) {
	mui.getJSON($serverip + "api/ubTask/taskReDo", {
		id : taskid
	}, function(mdata) {
		mui.alert(mdata.result.message);
		if (mdata.result.status == 1) {
			//重载页面
			reLoadPage($searchType);
		}
	});
}
// 删除任务
function taskDelete(taskid) {
	mui.getJSON($serverip + "api/ubTask/taskDelete", {
		id : taskid
	}, function(mdata) {
		mui.alert(mdata.result.message);
		if (mdata.result.status == 1) {
			document.getElementById(taskid).setAttribute('class', 'ub-hide');// 界面隐藏task
		}
	});
}

// 给一个li加监听
function addEventToUbLi(li,$) {
	// 绑定通用事件
	var taskid = li.getAttribute("id");
	// 绑定录音点击
	$.each(li.querySelectorAll('.ub-info-voice button'), function() {
		this.addEventListener('tap', function() {
			var fileName = this.getAttribute("id").split('_')[0];
			startPlay(fileName);
		});
	});
	// 绑定明细 交办 转日志 提醒 取消
	$.each(li.querySelectorAll('.mui-card-footer .mui-card-link'), function() {
		this.addEventListener('tap', function() {
			var id = this.getAttribute("name").split('_')[0];
			var type = this.getAttribute("name").split('_')[1];
			switch (type) {
			case 'reply': // 隐藏或显示回复控件
				taskView(id);
				// 已阅处理 TODO
				break;
			case 'toOther': // 交办
				taskToOther(id);
				break;
			case 'toLog': // 转日志
				taskToLog(id);
				break;
			case 'remind': // 添加提醒
				$activeTaskID = id;
				break;
			case 'cancel': // 取消
				taskCancel(id);
				break;
			case 'redo': // 重新执行或者从取消恢复，发布人权限
				taskReDo(id);
				break;
			case 'delete': // 删除任务
				taskDelete(id);
				break;
			default:
				break;
			}
		});
	});
}