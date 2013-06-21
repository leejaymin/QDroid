Titanium.include('../config.js');

/*!	@class Photos
 *  @abstract manages photos window
 */
var Photos = function(){
	
	this.path = "../";//@var path to this window
	this.window;//@var ui window
	this.photoURLs = [];//@var string array
	this.photoViews = [];//@var ui view array
	this.scrollView;//@var ui scrollview
	this.actInd;//@var ui activity indicator
	var self = this;//@var this pointer

	/*!	@function fetchPhotoXML
	 * 	@abstract fetches photo xml from web
	 * 	@returns void
	 */	
	this.fetchPhotoXML = function(){
		CONFIG.debugPrint('photos.fetchphotoxml.in');
		var xhr = Titanium.Network.createHTTPClient();
	    xhr.onload = function() {
			CONFIG.debugPrint('photos.fetchphotoxml.xhr.onload.responsexml = '+this.responseXML);
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
	
	/*!	@function loadPhotosArray
	 * 	@abstract loads photo array from xml doc
	 * 	@param xml doc
	 * 	@returns void
	 */		
	this.loadPhotosArray = function(doc){
		CONFIG.debugPrint('photos.loadphotosarray.xml.parse');
		CONFIG.debugPrint(doc);
		//var elements = doc.getElementsByTagName("content");
		var elements = doc.getElementsByTagName("media:content");
		CONFIG.debugPrint(elements.length);
		
		
		CONFIG.debugPrint(elements);
		for(var i=0;i<elements.length;i++){
			CONFIG.debugPrint('photos.loadphotosarray.xml.url.value = ' + elements.item(i).getAttribute('url'));
			this.photoURLs.push(elements.item(i).getAttribute('url'));
		}
	}

	/*!	@function createPhotoViews
	 * 	@abstract loads photo view array from photos url array
	 * 	@returns void
	 */			
	this.createPhotoViews = function(){
		CONFIG.debugPrint('photos.createphotoviews.in');
		for(var i=0;i<this.photoURLs.length;i++){
			var image = Titanium.UI.createImageView({url:this.photoURLs[i]});
			CONFIG.debugPrint('photos.createphotoviews.image.url.push | image.url = ' + this.photoURLs[i]);
			this.photoViews.push(image);
		}
	}

	/*!	@function createScrollableView
	 * 	@abstract creates scrollable view
	 * 	@returns void
	 */				
	this.createScrollableView = function(){
		CONFIG.debugPrint('photos.createScrollableView.in');
		this.scrollView = Titanium.UI.createScrollableView({
			views:this.photoViews, showPagingControl:true,backgroundColor:'#000000'
		});
	}
	
	/*!	@function addWindowElements
	 * 	@abstract creates layout for window
	 * 	@returns void
	 */				
	this.addWindowElements = function(xml){
		CONFIG.debugPrint('photos.addwindowelements.in');
		this.loadPhotosArray(xml.documentElement);
		this.createPhotoViews();
		this.createScrollableView();
		CONFIG.debugPrint('photos.addwindowelements.window.add.scrollview');
		this.window.add(this.scrollView);
		CONFIG.hideActInd(self.window,self.actInd);
	}
	
	/*!	@function _init
	 * 	@abstract constructor
	 * 	@returns void
	 */		
	this._init = function(){
		this.window = Titanium.UI.currentWindow;		
		this.actInd = CONFIG.createActInd(this.window);
		CONFIG.showActInd(this.window,this.actInd);
		this.fetchPhotoXML();			
		
	}
	
	this._init();//construct
}

var photos = new Photos();


