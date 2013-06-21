Titanium.include('../config.js');

var PicasaIndexRss = function(){
	
	this.path = "../";//@var path to this window
	this.window;//@var ui window
	this.gallerys = [];
	this.scrollView;//@var ui scrollview
	this.actInd;//@var ui activity indicator
	var self = this;//@var this pointer

	this.fetchPhotoXML = function(){
		var xhr = Titanium.Network.createHTTPClient();
	    xhr.onload = function() {
			self.addWindowElements(this.responseXML);				
	    };
	    xhr.error = function() {
			CONFIG.hideActInd(self.window,self.actInd);
			alert('Sorry, unable to load photos. Please try again later.')
			self.window.close();
	    };
		CONFIG.debugPrint(self.window.xmlurl);
	    xhr.open('GET',self.window.xmlurl);
		CONFIG.debugPrint('photos.fetchphotoxml.xhr.send');
	    xhr.send();			
	}
	
	this.loadGalleryArray = function(doc){
		var elements = doc.getElementsByTagName("item");	
		//picasa//feed rss url = guid (entry to feed), add &kind=photo//title = title//thumbnail = media:thumbnail
		for(var i=0;i<elements.length;i++){
			var gallery = new Object();
			gallery.rssurl = unescape(elements.item(i).getElementsByTagName("guid").item(0).firstChild.nodeValue.replace("entry","feed")) + "&kind=photo";
			gallery.title = elements.item(i).getElementsByTagName('title').item(0).firstChild.nodeValue;
			gallery.thumbnailurl = elements.item(i).getElementsByTagName("media:thumbnail").item(0).getAttribute('url');
			this.gallerys.push(gallery);
		}
	}
	
	this.loadGalleryRows = function(){
		var rows = [];
		for(var i=0;i<this.gallerys.length;i++){
			//createWebPageMenuItemPhotos = function(container, thumbnail, title, xmlurl)
			rows.push(CONFIG.createWebPageMenuItemPhotos(this, this.gallerys[i].thumbnailurl, this.gallerys[i].title, this.gallerys[i].rssurl));
		}
		CONFIG.addNavList(this, rows);
	}

	this.addWindowElements = function(xml){
		this.loadGalleryArray(xml.documentElement);
		this.loadGalleryRows();
		CONFIG.hideActInd(self.window,self.actInd);
	}
	
	this._init = function(){
		this.window = Titanium.UI.currentWindow;		
		this.actInd = CONFIG.createActInd(this.window);
		CONFIG.showActInd(this.window,this.actInd);
		this.fetchPhotoXML();			
		
	}
	
	this._init();//construct
}

var picasaIndexRss = new PicasaIndexRss();


