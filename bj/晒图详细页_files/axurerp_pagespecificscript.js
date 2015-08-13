for(var i = 0; i < 27; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

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
gv_vAlignTable['u17'] = 'center';u8.tabIndex = 0;

u8.style.cursor = 'pointer';
$axure.eventManager.click('u8', function(e) {

if (true) {

	self.location.href="javascript:history.back()";

}
});
gv_vAlignTable['u14'] = 'center';gv_vAlignTable['u15'] = 'top';gv_vAlignTable['u4'] = 'center';gv_vAlignTable['u10'] = 'top';gv_vAlignTable['u12'] = 'center';gv_vAlignTable['u26'] = 'top';u9.tabIndex = 0;

u9.style.cursor = 'pointer';
$axure.eventManager.click('u9', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('分享页面.html');

}
});
gv_vAlignTable['u7'] = 'center';gv_vAlignTable['u23'] = 'top';gv_vAlignTable['u25'] = 'center';gv_vAlignTable['u2'] = 'center';gv_vAlignTable['u19'] = 'center';gv_vAlignTable['u20'] = 'top';u5.tabIndex = 0;

u5.style.cursor = 'pointer';
$axure.eventManager.click('u5', function(e) {

if (true) {

    self.location.href="resources/reload.html#" + encodeURI($axure.globalVariableProvider.getLinkUrl($axure.pageData.url));

}
});
gv_vAlignTable['u22'] = 'center';