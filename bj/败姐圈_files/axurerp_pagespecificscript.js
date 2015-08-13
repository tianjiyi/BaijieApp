for(var i = 0; i < 43; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});

if (bIE) document.getElementById('u0').attachEvent("onmousedown", function(e) { StartDragWidget(e, 'u0'); });
else {
    document.getElementById('u0').addEventListener("mousedown", function(e) { StartDragWidget(e, 'u0'); }, true);
    document.getElementById('u0').addEventListener("touchstart", function(e) { StartDragWidget(e, 'u0'); }, true);
}

widgetIdToDragFunction['u0'] = function() {
var e = windowEvent;

if (true) {

	MoveWidgetBy('u0',0,widgetDragInfo.yDelta,'none',500);

}

}

if (bIE) document.getElementById('u5').attachEvent("onmousedown", function(e) { StartDragWidget(e, 'u5'); });
else {
    document.getElementById('u5').addEventListener("mousedown", function(e) { StartDragWidget(e, 'u5'); }, true);
    document.getElementById('u5').addEventListener("touchstart", function(e) { StartDragWidget(e, 'u5'); }, true);
}

widgetIdToDragFunction['u5'] = function() {
var e = windowEvent;

if (true) {

	MoveWidgetBy('u5',widgetDragInfo.xDelta,0,'none',500);

}

}
u16.tabIndex = 0;

u16.style.cursor = 'pointer';
$axure.eventManager.click('u16', function(e) {

if (true) {

	SetPanelVisibility('u37','','none',500);

}
});
gv_vAlignTable['u42'] = 'center';gv_vAlignTable['u29'] = 'center';u8.tabIndex = 0;

u8.style.cursor = 'pointer';
$axure.eventManager.click('u8', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('晒图详细页.html');

}
});
u30.tabIndex = 0;

u30.style.cursor = 'pointer';
$axure.eventManager.click('u30', function(e) {

if (true) {

	SetPanelVisibility('u27','hidden','none',500);

}
});
u32.tabIndex = 0;

u32.style.cursor = 'pointer';
$axure.eventManager.click('u32', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('首页.html');

}
});
u35.tabIndex = 0;

u35.style.cursor = 'pointer';
$axure.eventManager.click('u35', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('个人信息.html');

}
});
gv_vAlignTable['u13'] = 'center';u14.tabIndex = 0;

u14.style.cursor = 'pointer';
$axure.eventManager.click('u14', function(e) {

if (true) {

	SetPanelVisibility('u11','hidden','none',500);

}
});
u15.tabIndex = 0;

u15.style.cursor = 'pointer';
$axure.eventManager.click('u15', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('晒图详细页.html');

}
});
gv_vAlignTable['u4'] = 'center';u10.tabIndex = 0;

u10.style.cursor = 'pointer';
$axure.eventManager.click('u10', function(e) {

if (true) {

	SetPanelVisibility('u11','','none',500);

}
});
gv_vAlignTable['u39'] = 'center';u26.tabIndex = 0;

u26.style.cursor = 'pointer';
$axure.eventManager.click('u26', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('晒图-关注数量判定.html');

}
});
u9.tabIndex = 0;

u9.style.cursor = 'pointer';
$axure.eventManager.click('u9', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('其他用户详情.html');

}
});
u40.tabIndex = 0;

u40.style.cursor = 'pointer';
$axure.eventManager.click('u40', function(e) {

if (true) {

	SetPanelVisibility('u37','hidden','none',500);

}
});
gv_vAlignTable['u7'] = 'center';u23.tabIndex = 0;

u23.style.cursor = 'pointer';
$axure.eventManager.click('u23', function(e) {

if (true) {

	SetPanelVisibility('u37','','none',500);

}
});
gv_vAlignTable['u25'] = 'center';gv_vAlignTable['u2'] = 'center';gv_vAlignTable['u18'] = 'center';u19.tabIndex = 0;

u19.style.cursor = 'pointer';
$axure.eventManager.click('u19', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('其他用户详情.html');

}
});
gv_vAlignTable['u36'] = 'top';u22.tabIndex = 0;

u22.style.cursor = 'pointer';
$axure.eventManager.click('u22', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('晒图详细页.html');

}
});
gv_vAlignTable['u21'] = 'center';u33.tabIndex = 0;

u33.style.cursor = 'pointer';
$axure.eventManager.click('u33', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('拍照.html');

}
});
u31.tabIndex = 0;

u31.style.cursor = 'pointer';
$axure.eventManager.click('u31', function(e) {

if (true) {

    self.location.href="resources/reload.html#" + encodeURI($axure.globalVariableProvider.getLinkUrl($axure.pageData.url));

}
});
u34.tabIndex = 0;

u34.style.cursor = 'pointer';
$axure.eventManager.click('u34', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('消息.html');

}
});
