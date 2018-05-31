function footer() {
document.getElementsByClassName('eventDescription').write('<div class="us-footer"><a href="tel:88002343504">8 800 2343504</a></div>');
if(navigator.userAgent.indexOf('Android') > -1){
	for(var i = 0; i < document.getElementsByClassName('us-p360').length; i++ ) document.getElementsByClassName('us-p360')[i].style.display='none';
	for(var i = 0; i < document.getElementsByClassName('us-vidh').length; i++ ) document.getElementsByClassName('us-vidh')[i].style.display='none';
	for(var i = 0; i < document.getElementsByClassName('us-vid').length; i++ ) document.getElementsByClassName('us-vid')[i].style.display='none';
	//document.getElementsByClassName('us-p360')[0].style.display='none';
}
}

function Panorama(psrc) {
var pnr = document.createElement('div');
pnr.id="panorama";
pnr.innerHTML="<iframe width='100%' height='115%' src='" + psrc + "' 'frameborder='0' allowfullscreen sandbox='allow-same-origin allow-scripts'></iframe><div  style='position:fixed;top:10px;right:10px;width:30px;height:30px;border:0;border-radius:50%;background-color:#fff;background-image:url(http://unisol-apps.com/apps/mriya/foto/ico/mr-close.png);background-size:30px 30px; text-align:center;box-shadow:0 2px 4px rgba(0,0,0,.26);'><a style='font-size:18px;font-weight:100;color:red;text-decoration:none;cursor:pointer;line-height:33px;padding:20px 30px;margin-left:-20px;' onclick='PClose()'></a></div>";
document.body.appendChild(pnr);
}

function PClose() {
var pnr = document.getElementById('panorama');
document.body.removeChild(pnr);
}

window.onload = function(){
	if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) && navigator.platform !== "Win32"){
    	function reorient(e) {
	    	var portrait = (window.orientation % 180 == 0);
	   		// document.getElementsByTagName('body')[0].style.webkitTransform = (!portrait) ? "rotate(-90deg)" : "";
	    	(!portrait) ? alert('Переверните экран!') : "";
	  	}
		window.onorientationchange = reorient;
		window.setInterval(reorient, 0);
	}
}

