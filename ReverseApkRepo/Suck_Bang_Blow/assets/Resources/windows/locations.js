Titanium.include('../config.js');

var Locations = function(){
	
	this.path = "../";
	this.navList;
	this.actInd;
	this.window;
	var self = this;
	
	this.addWindowElements = function(){
		var rows = [];
		//container,title,image,pageurl,contentid
		
		var lat = 33.572483;
		var lng = -79.025628;
		var address = "3393 Hwy 17 Business, Murrells Inlet, SC 29576";
		var mapsURL = 'geo:'+lat+','+lng+'?q='+address;
		rows.push(CONFIG.createWebPageMenuItemEx(this, 'SBB ORIGINAL', mapsURL));

		var lat = 33.5635;
		var lng = -79.03009;
		var address = "11980 Hwy 17 Bypass South, Murrells Inlet, SC 29576";
		var mapsURL = 'geo:'+lat+','+lng+'?q='+address;
		rows.push(CONFIG.createWebPageMenuItemEx(this, 'SBB FOUR CORNERS', mapsURL));
				
		rows.push(CONFIG.createWebPageMenuItemEx(this,'CONTACT US','tel:8436517960'));

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

var locations = new Locations();


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

