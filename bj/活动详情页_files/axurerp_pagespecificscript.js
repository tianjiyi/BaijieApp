for(var i = 0; i < 11; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

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
gv_vAlignTable['u4'] = 'center';u5.tabIndex = 0;

u5.style.cursor = 'pointer';
$axure.eventManager.click('u5', function(e) {

if (true) {

	self.location.href="javascript:history.back()";

}
});
u6.tabIndex = 0;

u6.style.cursor = 'pointer';
$axure.eventManager.click('u6', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('分享页面.html');

}
});
gv_vAlignTable['u7'] = 'top';gv_vAlignTable['u9'] = 'center';gv_vAlignTable['u10'] = 'top';gv_vAlignTable['u2'] = 'center';