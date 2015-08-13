for(var i = 0; i < 30; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

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
gv_vAlignTable['u27'] = 'top';gv_vAlignTable['u16'] = 'center';gv_vAlignTable['u28'] = 'top';gv_vAlignTable['u29'] = 'top';u8.tabIndex = 0;

u8.style.cursor = 'pointer';
$axure.eventManager.click('u8', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('分享页面.html');

}
});
gv_vAlignTable['u6'] = 'center';gv_vAlignTable['u13'] = 'center';u14.tabIndex = 0;

u14.style.cursor = 'pointer';
$axure.eventManager.click('u14', function(e) {

if (true) {

	SetPanelVisibility('u11','','none',500);

}
});
u10.tabIndex = 0;

u10.style.cursor = 'pointer';
$axure.eventManager.click('u10', function(e) {

if (true) {

    self.location.href="resources/reload.html#" + encodeURI($axure.globalVariableProvider.getLinkUrl($axure.pageData.url));

}
});
gv_vAlignTable['u26'] = 'top';u9.tabIndex = 0;

u9.style.cursor = 'pointer';
$axure.eventManager.click('u9', function(e) {

if (true) {

	SetPanelVisibility('u4','','none',500);

}
});
u7.tabIndex = 0;

u7.style.cursor = 'pointer';
$axure.eventManager.click('u7', function(e) {

if (true) {

	SetPanelVisibility('u4','hidden','none',500);

}
});
u3.tabIndex = 0;

u3.style.cursor = 'pointer';
$axure.eventManager.click('u3', function(e) {

if (true) {

	self.location.href="javascript:history.back()";

}
});
gv_vAlignTable['u23'] = 'center';gv_vAlignTable['u25'] = 'center';gv_vAlignTable['u2'] = 'center';gv_vAlignTable['u18'] = 'center';gv_vAlignTable['u19'] = 'top';gv_vAlignTable['u21'] = 'center';