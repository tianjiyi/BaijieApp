for(var i = 0; i < 10; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});
gv_vAlignTable['u4'] = 'top';u5.tabIndex = 0;

u5.style.cursor = 'pointer';
$axure.eventManager.click('u5', function(e) {

if (true) {

	SetPanelVisibility('u6','','none',500);

}
});
gv_vAlignTable['u8'] = 'center';u9.tabIndex = 0;

u9.style.cursor = 'pointer';
$axure.eventManager.click('u9', function(e) {

if (true) {

	SetPanelVisibility('u6','hidden','none',500);

}
});
gv_vAlignTable['u1'] = 'center';u2.tabIndex = 0;

u2.style.cursor = 'pointer';
$axure.eventManager.click('u2', function(e) {

if (true) {

	self.location.href="javascript:history.back()";

}
});
u3.tabIndex = 0;

u3.style.cursor = 'pointer';
$axure.eventManager.click('u3', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('愿望清单.html');

}
});
