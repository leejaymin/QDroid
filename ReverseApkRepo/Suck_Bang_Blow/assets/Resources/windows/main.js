Titanium.include('../config.js');

var Main = function(){
	
	this.path = "../";
	this.navList;
	this.actInd;
	this.window;
	var self = this;
	
	this.addWindowElements = function(){
		var rows = [];
		//container,title,image,pageurl,contentid
		rows.push(CONFIG.createWebPageMenuItem(this,'ABOUT',null,'http://suckbangblow.com/index.php/p/1/about','div.post > div.content'));
		rows.push(CONFIG.createWebPageMenuItem(this,'SOFTTAIL GRILL',null,'http://suckbangblow.com/index.php/p/2/softtail_grill_at_suck_bang_blow','div.post > div.content'));
		rows.push(CONFIG.createWebPageMenuItem(this,'EVENTS',null,'http://suckbangblow.com/index.php/p/3/sbb_calendar_of_events','div.post > div.content'));
		rows.push(CONFIG.createWebPageMenuItemPhotoIndex(this,'PHOTOS','http://picasaweb.google.com/data/feed/base/user/112888472416212098688?alt=rss&kind=album&hl=en_US&access=public'));
		rows.push(CONFIG.createWebPageMenuItem(this,'WEBCAMS',null,'http://suckbangblow.com/index.php/p/5/webcams','div.post > div.content'));
		rows.push(CONFIG.createWindowMenuItem(this,'LOCATIONS','locations.js'));
		rows.push(CONFIG.createWebPageMenuItemEx(this,'CONTACT US','tel:8436517960'));
		rows.push(CONFIG.createWebPageMenuItemEx(this,'SHOP','http://suckbangblow.com/cart/'));

		CONFIG.addNavList(this, rows);
	}
	
	this._init = function(){
		this.window = Titanium.UI.currentWindow;
		this.window.layout = 'vertical';
		this.actInd = Titanium.UI.createActivityIndicator({height:50,width:10,message:'Loading...'});
		this.actInd.show();
		this.addWindowElements();
		this.actInd.hide();					
	}
	
	this._init();
}

var main = new Main();


if (Titanium.Platform.name == 'android') {
	var activity = Ti.Android.currentActivity;
	activity.onCreateOptionsMenu = function(e){
		var menu = e.menu;
		var menuItem = menu.add({
			title: "Exit"
		});
		menuItem.addEventListener("click", function(e){
			Titanium.mainwindow.close();
		});
	};
}

