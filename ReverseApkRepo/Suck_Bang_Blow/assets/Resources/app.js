Titanium.include('config.js');
/*!	@class App
 *  @abstract main app class
 */
var App = function(){
	
	this.debug = true;//@var boolean debug
	this.window;//@var ui window
	var self = this;//@var class object pointer
	
	/*!	@function debugPrint
	 *  @abstract prints to API info window
	 *  @returns void
	 */
	this.debugPrint = function(object){
		if(this.debug) Ti.API.info(object); 
	}
	
	
	/*!	@function _init
	 *  @abstract constructor
	 *  @returns void
	 */
	this._init = function(){
		
		this.debugPrint('app._init.in');
		
		
		this.window = Titanium.UI.createWindow({
			title:'SBB: Suck Bang Blow',
			url:'windows/main.js',
			backgroundImage:CONFIG.mainBGImageURL,
			fullscreen:false,
			className:'window',
			exitOnClose:true
		});
		if(CONFIG.isIPhone) this.window.backgroundImage = CONFIG.mainBGImageURLR;

		this.window._navgroup = CONFIG.createNavGroup(this.window);
		CONFIG.openRootWindow(this.window);
		
	}
	
	//call constructor
	this._init();
}

var app = new App();
