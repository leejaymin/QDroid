/*!	@class Config
 *  @abstract stores main config settings and factories
 */
var Config = function(){
	this.version = "1.0";
	this.logoURL = "images/logo.png";
	this.logoBGURL = "images/logobg.png";
	this.logoPNG = "images/toplogo.png";
	this.logoSmallWH = {height: 100,width:320};
	this.rowSeperatorPNGURL = 'images/seperator.png';
	this.mainBGImageURL = '../images/bgimage1.jpg';
	this.mainBGImageURLR = 'images/bgimage1.jpg';
	this.separatorColor = '#000000';
	this.navGroupBGColor = '#000000';
	this.navGroupHeight = 65;
	this.isIPhone = false;
	this.iphoneWH = {width:Titanium.Platform.displayCaps.platformWidth,height:Titanium.Platform.displayCaps.platformHeight};
	this.rowHeight = 50;
	this.debug = true;
	this.rootwindow;
	var self = this;
			
	this.addLogo = function(container){
		var logoview = CONFIG.createLogoView(container.path);
		container.window.add(logoview);
	}	
	
	
	this.addNavList = function(container, rows){
		
		var logo = CONFIG.createLogoView(container.path);
		var directions = CONFIG.createTableDirectionHeader();
		
		var header = Titanium.UI.createView({layout:'vertical'});
		header.add(logo);
		header.add(directions);
		header.height = (CONFIG.isIPhone ? logo.height + directions.height : 'auto');		

		container.navList = Titanium.UI.createTableView({
			data:rows,separatorColor:CONFIG.separatorColor,className:'listtable', headerView:header
		});		

		if(CONFIG.isIPhone){
			container.navList.width = CONFIG.iphoneWH.width;
			container.navList.height = (rows.length * CONFIG.rowHeight) + header.height;
			
			if( (container.navList.height + CONFIG.navGroupHeight) >= CONFIG.iphoneWH.height){
				container.navList.height = CONFIG.iphoneWH.height - CONFIG.navGroupHeight;
			}
		}

		container.navList.addEventListener('click',function(e){
			e.row.onclick({});
		});				
		container.window.add(container.navList);	
	}	
	
	this.createWebPageMenuItem = function(container,title,image,pageurl,contentid){
		var row = CONFIG.createTableRow(container.path);
		//label
		row.add(Titanium.UI.createLabel({
			text:title,left:5,width:'auto',textAlign:'left',height:'auto',className:'tablelabel'
		}));			
		row.onclick = function(data){
			var win = Titanium.UI.createWindow({
				title:title,url:'pageloader.js',className:'window',fullscreen:false,backgroundImage:CONFIG.mainBGImageURL
			});
			win.hText = title;
			win.hImage = image
			win.pageloaderurl = pageurl;
			win.contentId = contentid;
			CONFIG.openWindow(container.window,win);
		};			
		return row;
	}
	
	this.createWindowMenuItem = function(container, title,windowurl){
		var row = CONFIG.createTableRow(container.path);
		//label
		row.add(Titanium.UI.createLabel({
			text:title,left:5,width:'auto',textAlign:'left',height:'auto',className:'tablelabel'
		}));			
		row.onclick = function(data){
			
			if(windowurl==null){
				alert('Sorry, limited demo/preview version');
				return;
			}
			
			var win = Titanium.UI.createWindow({
				title:title,url:windowurl,className:'window',fullscreen:false,backgroundImage:CONFIG.mainBGImageURL
			});
			win.hText = title;
			CONFIG.openWindow(container.window,win);
		};			
		return row;
	}	

	this.createWebPageMenuItemPhotos = function(container, thumbnail, title, xmlurl){
		var row = CONFIG.createTableRow(container.path);
		
		//icon
		row.add(Titanium.UI.createImageView({
			url:thumbnail,left:4,height:32,width:32
		}));
		//label
		row.add(Titanium.UI.createLabel({
			text:title,left:50,width:'auto',textAlign:'left',height:'auto',className:'tablelabel'
		}));
					
		row.onclick = function(data){
			
			var win = Titanium.UI.createWindow({
				title:title,url:'photos.js',className:'window',fullscreen:false,backgroundImage:CONFIG.mainBGImageURL
			});
			win.xmlurl = xmlurl;
			CONFIG.openWindow(container.window,win);
		};			
		return row;
	}	
	
	this.createWebPageMenuItemPhotoIndex = function(container, title, xmlurl){
		var row = CONFIG.createTableRow(container.path);
		//label
		row.add(Titanium.UI.createLabel({
			text:title,left:5,width:'auto',textAlign:'left',height:'auto',className:'tablelabel'
		}));			
		row.onclick = function(data){
			
			var win = Titanium.UI.createWindow({
				title:title,url:'picasaindexrss.js',className:'window',fullscreen:false,backgroundImage:CONFIG.mainBGImageURL
			});
			win.xmlurl = xmlurl;
			CONFIG.openWindow(container.window,win);
		};			
		return row;
	}	
	
	this.createWebPageMenuItemEx = function(container, title,pageurl){
		CONFIG.debugPrint('main.create web page menu item external');		
		var row = CONFIG.createTableRow(container.path);
		
		//label
		row.add(Titanium.UI.createLabel({
			text:title,left:5,width:'auto',textAlign:'left',height:'auto',className:'tablelabel'
		}));			
		row.onclick = function(data){
			Titanium.Platform.openURL(pageurl);
		};			
		return row;
	}	
	
	
	/*!	@function createLogoView
	 * 	@abstract logo view factory
	 * 	@returns ui view
	 */
	this.createLogoView = function(path){
		var logoview = Titanium.UI.createView({
			left: 0,right: 0,backgroundTopCap: 1,backgroundLeftCap: 1,height: this.logoSmallWH.height,width: 'auto',backgroundImage:(path + this.logoBGURL)
		});
		if(this.isIPhone) logoview.width = this.iphoneWH.width;
		var logoimage = Titanium.UI.createImageView({
			url: (path + this.logoPNG),height: this.logoSmallWH.height,width: this.logoSmallWH.width,left: 0
		});
		logoview.add(logoimage);
		return logoview;
	}


	/*!	@function createTableDirectionHeader
	 * 	@abstract table direction header factory
	 * 	@returns ui view
	 */	
	this.createTableDirectionHeader = function(){
		var header = Ti.UI.createView({
			height:30,className:'header'
		});		
		if(this.isIPhone) header.width = this.iphoneWH.width;
		var headerLabel = Ti.UI.createLabel({
			text:'Please select menu item below.',
			textAlign:'left',top:0,left:5,width:'auto',height:30,className:'header'
		});
		header.add(headerLabel);
		this.debugPrint('exit table direction header');
		return header;		
	}
	
	/*!	@function createTableRow
	 * 	@abstract table row factory
	 * 	@returns ui table row
	 */	
	this.createTableRow = function(path){
		//hasChild:true,backgroundImage:(path + this.rowSeperatorPNGURL),className:'table_row'
		var row = Titanium.UI.createTableViewRow({
				hasChild:true,className:'table_row',width:'auto',height:'auto',backgroundImage:(path + this.rowSeperatorPNGURL)
		});
		if(this.isIPhone){
			row.width = this.iphoneWH.width;
		}
		row.height = this.rowHeight;
		return row;		
	}
	
	/*!	@function debugPrint
	 * 	@abstract debuging output
	 * 	@returns void
	 */
	this.debugPrint = function(object){
		if(this.debug) Titanium.API.info(object);
	}
	
	
	/*!	@function detectPlatform
	 * 	@abstract detects mobile platform
	 * 	@returns void
	 */		
	this.detectPlatform = function(){
		this.debugPrint('config.detectplatform.in');
		if(Titanium.Platform.name == 'iPhone OS'){
			this.debugPrint('config.detectplatform.iphoneos.in');
			this.isIPhone = true;
			
			this.debugPrint('config.iphoneWH.width = ' + this.iphoneWH.width);
			this.debugPrint('config.iphoneWH.height = ' + this.iphoneWH.height);
			
			return;
		}
	}
	
	/*!	@function hideActInd
	 * 	@abstract hides act ind ui
	 * 	@param ui window
	 *  @param ui act ind
	 * 	@returns void
	 */		
	this.hideActInd = function(window,actInd){
		actInd.hide();
		if(CONFIG.isIPhone){
			window.setToolbar(null,{animated: true});
		}
	}

	/*!	@function showActInd
	 * 	@abstract shows act ind ui
	 * 	@param ui window
	 *  @param ui act ind
	 * 	@returns void
	 */			
	this.showActInd = function(window,actInd){
		if(this.isIPhone){
			window.setToolbar([actInd], {animated: true});
		}
		actInd.show();
	}
	
	/*!	@function createActInd
	 * 	@abstract creates act ind
	 * 	@param ui window
	 * 	@returns void
	 */	
	this.createActInd = function(window){
		var actInd = Titanium.UI.createActivityIndicator({message: 'Loading...'});
		if (CONFIG.isIPhone) {
			actInd.style = Titanium.UI.iPhone.ActivityIndicatorStyle.PLAIN;
			actInd.color = 'white';
			actInd.message = 'Loading...';
			window.setToolbar([actInd], {animated: true});
			actInd.show();
		}else {
			actInd.height = 50;
			actInd.width = 10;
		}
		return actInd;
	}
	
	/*!	@function createNavGroup
	 * 	@abstract creates navigation group
	 * 	@param ui window
	 * 	@returns void
	 */		
	this.createNavGroup = function(rootwindow){
		this.debugPrint('config.createnavgroup.in');
		if(this.isIPhone){
			this.debugPrint('config.createnavgroup.isiphone.in');
			this.debugPrint('config.createnavgroup.isiphone.in.height.set,bgcolor.set');
			return Titanium.UI.iPhone.createNavigationGroup({window:rootwindow,backgroundColor:this.navGroupBGColor});
		}
		return false;
	}
	
	
	/*!	@function openRootWindow
	 * 	@abstract opens root window
	 * 	@param ui window
	 * 	@returns void
	 */	
	this.openRootWindow = function(window){
		this.setOrientationModes(window);
		this.debugPrint('config.openrootwindow.in');
		if(this.isIPhone){//iphone
			this.debugPrint('config.openrootwindow.isiphone.in');
			this.rootwindow = Titanium.UI.createWindow();
			this.setOrientationModes(this.rootwindow);
			this.rootwindow.add(window._navgroup);
			this.debugPrint('config.openrootwindow.isiphone.rootwindow.open');
			this.rootwindow.open();
			Titanium.mainwindow = this.rootwindow;
			return;
		}
		this.debugPrint('config.openrootwindow.window.open');
		Titanium.mainwindow = window;
		window.open();//android
	}
	
	/*!	@function openWindow
	 * 	@abstract opens window
	 * 	@param ui window
	 * 	@returns void
	 */	
	this.openWindow = function(currentWindow,newWindow){
		this.setOrientationModes(newWindow);
		self.debugPrint('config.openwindow.in');
		if(self.isIPhone){
			self.debugPrint('config.openwindow.isiphone.navgroup.open.window');
			newWindow._navgroup = currentWindow._navgroup;
			currentWindow._navgroup.open(newWindow);
			return;
		}
		self.debugPrint('config.openwindow.window.open');
		newWindow.open();
	}
	
	/*!	@function setOrientationsModes
	 * 	@abstract defines allowed orientation modes
	 * 	@returns void
	 */		
	this.setOrientationModes = function(window){
		//if (this.isIPhone) {
			//window.orientationModes = [Titanium.UI.PORTRAIT, Titanium.UI.UPSIDE_PORTRAIT];
		//}
	}	
	
	//////////////////////updates -- needs documentation

	
	
	/*!	@function _init
	 * 	@abstract constructor
	 * 	@returns void
	 */			
	this._init = function(){
		Ti.API.info(this.version);
		this.debugPrint('config._init.in');
		this.detectPlatform();
	}
	
	this._init();
		
}
var CONFIG = new Config();



