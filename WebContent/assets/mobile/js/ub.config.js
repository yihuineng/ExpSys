var $serverip = "http://"+window.location.host+"/";// "http://dev.yihuineng.com:8083/";//http://app.zjjcxy.cn/;

if (navigator.userAgent.indexOf('Android') > -1 || navigator.userAgent.indexOf('Adr') > -1)
	document.write("<script src='/assets/ub/js/webviewjavascriptbridge.js'><\/script>");
else
	document.write("<script src='/assets/ub/js/webviewjavascriptbridgeios.js'><\/script>");
