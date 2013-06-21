Titanium.include('../config.js');

/*!	@class PageLoader
 *  @abstract manages pageloader window
 */
var PageLoader = function(){
	
	this.path = "../";//@var path to this file
	this.navList;//@var ui table view
	this.webView;//@var ui web view
	this.window;//@var ui window
	this.scrollView;//@var ui scrollview	
	var self = this;//@var this pointer
	
	/*!	@function addLogo
	 * 	@abstract adds logo to window
	 * 	@returns void
	 */		
	this.addLogo = function(){
		var logoview = CONFIG.createLogoView(this.path);
		this.scrollView.add(logoview);
	}	
	
	/*!	@function addHeader
	 * 	@abstract adds header to window
	 * 	@returns void
	 */		
	this.addHeader = function(){
		var view = Titanium.UI.createView({
			left:0,right:0,height:50,width:'auto',backgroundColor:"#000"
		});
		if(CONFIG.isIPhone) view.width = CONFIG.iphoneWH.width;
		
		if(this.window.hImage != "" & this.window.hImage != null){
			view.add(Titanium.UI.createImageView({
				url:this.window.hImage,left:4,height:50,width:50
			}));
			view.add(Titanium.UI.createLabel({
				text:this.window.hText,left:60,width:'auto',textAlign:'left',height:'auto',className:'headerlabel',color:"#FFFFFF"
			}));
		}else{
			view.add(Titanium.UI.createLabel({
				text:this.window.hText,left:20,width:'auto',textAlign:'left',height:'auto',className:'headerlabel',color:"#FFFFFF"
			}));
		}
		
				
		
		this.scrollView.add(view);
	}
	
	/*!	@function fetchPageLoaderWebpage
	 * 	@abstract fetches pageloader xml from web
	 * 	@returns void
	 */		
	this.fetchPageLoaderWebpage = function(){
		
		CONFIG.showActInd(this.window,this.actInd);
		CONFIG.debugPrint('pageloader.fetchspecialwebpage.in');
		var xhr = Titanium.Network.createHTTPClient();
		//xhr.setRequestHeader('User-Agent','Mozilla/5.0');
		//xhr.setRequestHeader("X-Requested-With","");
		
	    xhr.onload = function() {
			
			if(this.responseText==null){
				alert('Sorry, unable to load page. Please check your network connection and try again.');
				self.window.close();
			}
			CONFIG.debugPrint(this.responseText);
			CONFIG.debugPrint('pageloader.xhr.onload.in');
			CONFIG.debugPrint('ti.events.pageloader-webview-load.fire');
			Titanium.App.fireEvent('pageloader-webview-load',{topimage:self.window.topimage,isiphone:CONFIG.isIPhone,html:this.responseText,scalesPageToFit:true,jqueryid:self.window.contentId});
			CONFIG.hideActInd(self.window,self.actInd);
	    };
	    xhr.error = function() {
			CONFIG.debugPrint('pageloader.xhr.error.in');			
			alert('Sorry, unable to load pageloader. Please try again later.')
	        CONFIG.debugPrint('error response, http status code ' + this.status);
			CONFIG.hideActInd(self.window,self.actInd);				
	    };
		CONFIG.debugPrint(this.window.pageloaderurl);
		CONFIG.debugPrint('pageloader.fetchspecialwebpage.xhr.open');
	    xhr.open('GET',this.window.pageloaderurl);
		CONFIG.debugPrint('pageloader.fetchspecialwebpage.xhr.send');
		xhr.send();	
	    		
	}
	
	/*!	@function getPageLoader
	 * 	@abstract creates pageloader web view
	 * 	@returns void
	 */	
	this.getPageLoader = function(){
		CONFIG.debugPrint('pageloader.getpageloader.webview.create');
		this.webView = Titanium.UI.createWebView({
			url:'../webviews/pageloader.html',height:'auto',left:0,right:0
		});
		
		this.webView.addEventListener('load',function(data){
			CONFIG.debugPrint('pageloader.webview.eventlistener.load.in');
			self.fetchPageLoaderWebpage();
			CONFIG.hideActInd(self.window,self.actInd);
		});
		
		if (!CONFIG.isIPhone) {
			this.webView.addEventListener('click', function(e){
				//timout function
				var lU = function(){
					var href = e.source.evalJS('getEventHref();');
					CONFIG.debugPrint('href:'+href);
					if (href != "") 
						Titanium.Platform.openURL(href);
				}
				//delay for a moment to allow event to propagate to web view HTML
				setTimeout(lU, 250);
			});
		}		
		
		CONFIG.debugPrint('pageloader.getpageloader.webview.load');
		this.scrollView.add(this.webView);
	}
	
	/*!	@function addWindowElements
	 * 	@abstract creates layout for window
	 * 	@returns void
	 */			
	this.addWindowElements = function(){
		this.scrollView = Titanium.UI.createScrollView({
    		contentWidth:'auto',contentHeight:'auto',top:0,bottom:0,showVerticalScrollIndicator:true,showHorizontalScrollIndicator:true,layout:'vertical',zIndex:2
		});			
		this.addLogo();
		this.addHeader();
		this.getPageLoader();
		this.window.add(this.scrollView);
	}
	
	/*!	@function addActIndEventListeners
	 * 	@abstract adds event listeners for act ind
	 * 	@returns void
	 */			
	this.addActIndEventListeners = function(){
		Titanium.App.addEventListener('pageloader-show-actind',function(data){
			CONFIG.debugPrint('pageloader.eventlistener.special-show-actind.in');
			CONFIG.debugPrint('pageloader.eventlistener.special-show-actiind.data.message = ' + data.message);
			self.actInd.message = data.message;
			CONFIG.showActInd(this.window,this.actInd);
		});
		Titanium.App.addEventListener('pageloader-hide-actind',function(data){
			CONFIG.debugPrint('pageloader.eventlistener.special-hide-actind.in');			
			CONFIG.hideActInd(self.window,self.actInd);
		});
		Titanium.App.addEventListener('pageloader-loadurl',function(data){
			CONFIG.debugPrint('pageloader.eventlistener.pageloader-loadurl.in');
			CONFIG.debugPrint('pageloader.eventlistener.pageloader-loadurl.data.url = ' + data.url);
			Titanium.Platform.openURL(data.url);
		});		
		Titanium.App.addEventListener('pageloader-webview-adjust-height',function(data){
			CONFIG.debugPrint('pageloader.addeventlisteners.webview-adjust-height.in');
			CONFIG.debugPrint('pageloader.addeventlisteners.webview-adjust-height.height = ' + data.height);			
			self.webView.height = data.height + 500;
		});							
		
	}
	
	/*!	@function _init
	 * 	@abstract constructor
	 * 	@returns void
	 */			
	this._init = function(){
		this.window = Titanium.UI.currentWindow;
		CONFIG.debugPrint('pageloader._init.layout.disabled');
		//this.window.layout = 'vertical';		
		this.actInd = CONFIG.createActInd(this.window);
		CONFIG.showActInd(this.window,this.actInd);
		this.addActIndEventListeners();
		this.addWindowElements();		
		
	}
	
	this._init();//construct
}

var pageLoader = new PageLoader();


