for(var i = 0; i < 18; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});
u13.tabIndex = 0;

u13.style.cursor = 'pointer';
$axure.eventManager.click('u13', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('重置密码.html');

}
});
gv_vAlignTable['u12'] = 'center';gv_vAlignTable['u4'] = 'center';gv_vAlignTable['u10'] = 'center';u17.tabIndex = 0;

u17.style.cursor = 'pointer';
$axure.eventManager.click('u17', function(e) {

if (true) {

	self.location.href="javascript:history.back()";

}
});
u5.tabIndex = 0;

u5.style.cursor = 'pointer';
$axure.eventManager.click('u5', function(e) {

if (true) {

	SetPanelVisibility('u2','hidden','none',500);

	SetPanelVisibility('u8','hidden','none',500);

}
});
gv_vAlignTable['u1'] = 'center';gv_vAlignTable['u15'] = 'center';gv_vAlignTable['u16'] = 'top';u6.tabIndex = 0;

u6.style.cursor = 'pointer';
$axure.eventManager.click('u6', function(e) {

if (true) {

	SetPanelVisibility('u2','','none',500);

}
});
gv_vAlignTable['u7'] = 'top';