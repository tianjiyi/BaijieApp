for(var i = 0; i < 9; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

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

	MoveWidgetBy('u0', GetNum('' + (GetGlobalVariableValue('DragX') * 5) + ''), GetNum('0'),'none',500);

	MoveWidgetBy('u4',widgetDragInfo.xDelta,0,'none',500);

}

}
gv_vAlignTable['u6'] = 'center';
u7.style.cursor = 'pointer';
$axure.eventManager.click('u7', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('登陆-首页.html');

}
});
gv_vAlignTable['u8'] = 'top';gv_vAlignTable['u2'] = 'center';gv_vAlignTable['u3'] = 'top';