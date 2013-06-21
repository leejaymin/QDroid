.class Lcom/inmobi/androidsdk/ai/container/IMWebView$5;
.super Landroid/webkit/WebViewClient;
.source "IMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1328
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1580
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1581
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMWebView-> onLoadResource:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1581
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1585
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "mraid.js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1588
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1589
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 1590
    const-string v1, "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object"

    .line 1589
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V

    .line 1599
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1600
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1601
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "(function(){var c=window.mraidview={},f={},g=[],j=!1;c.fireReadyEvent=function(){var b=f.ready;if(null!=b)for(var a=0;a<b.length;a++)b[a]();return\"OK\"};c.fireStateChangeEvent=function(b){var a=f.stateChange;if(null!=a)for(var d=0;d<a.length;d++)a[d](b);return\"OK\"};c.fireViewableChangeEvent=function(b){var a=f.viewableChange;if(null!=a)for(var d=0;d<a.length;d++)a[d](b);return\"OK\"};c.fireErrorEvent=function(b,a){var d=f.error;if(null!=d)for(var c=0;c<d.length;c++)d[c](b,a);return\"OK\"};c.fireOrientationChangeEvent=function(b){var a=f.orientationChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireMediaTrackingEvent=function(b,a){var c={};c.name=b;var e=\"inmobi_media_\"+b;\"undefined\"!=typeof a&&null!=a&&\"\"!=a&&(e=e+\"_\"+a);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaErrorEvent=function(b,a){var c={name:\"error\"};c.code=a;var e=\"inmobi_media_\"+c.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(e=e+\"_\"+b);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaTimeUpdateEvent=function(b,a,c){var e={name:\"timeupdate\",target:{}};e.target.currentTime=a;e.target.duration=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaCloseEvent=function(b,a,c){var e={name:\"close\"};e.viaUserInteraction=a;e.target={};e.target.currentTime=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaVolumeChangeEvent=function(b,a,c){var e={name:\"volumechange\",target:{}};e.target.volume=a;e.target.muted=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.showAlert=function(b){utilityController.showAlert(b)};c.zeroPad=function(b){var a=\"\";10>b&&(a+=\"0\");return a+b};c.addEventListener=function(b,a){var c=f[b];null==c&&(f[b]=[],c=f[b]);for(var e in c)if(a==e)return;c.push(a)};c.removeEventListener=function(b){try{var a=f[b];null!=a&&delete a}catch(d){c.log(d)}};c.useCustomClose=function(b){try{displayController.useCustomClose(b)}catch(a){c.showAlert(\"use CustomClose: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.stackCommands=function(b,a){j?g.push(b):(eval(b),a&&(j=!0))};c.executeStack=function(){for(j=!1;0<g.length;){var b=g.shift();eval(b)}};c.emptyStack=function(){for(;0<g.length;)g.shift()};c.expand=function(b){try{displayController.expand(b)}catch(a){c.showAlert(\"executeNativeExpand: \"+a+\", URL = \"+b)}};c.setExpandProperties=function(b){try{b?this.props=b:b=null,displayController.setExpandProperties(c.stringify(b))}catch(a){c.showAlert(\"executeNativesetExpandProperties: \"+a+\", props = \"+b)}};c.open=function(b){try{displayController.open(b)}catch(a){c.showAlert(\"open: \"+a)}};c.resize=function(b,a){try{displayController.resize(b,a)}catch(d){c.showAlert(\"resize: \"+d)}};c.getState=function(){try{return\"\"+displayController.getState()}catch(b){c.showAlert(\"getState: \"+b)}};c.getOrientation=function(){try{return\"\"+displayController.getOrientation()}catch(b){c.showAlert(\"getOrientation: \"+b)}};c.isViewable=function(){try{return displayController.isViewable()}catch(b){c.showAlert(\"isViewable: \"+b)}};c.log=function(b){try{utilityController.log(b)}catch(a){c.showAlert(\"log: \"+a)}};c.getPlacementType=function(){return displayController.getPlacementType()};c.asyncPing=function(b){try{utilityController.asyncPing(b)}catch(a){c.showAlert(\"asyncPing: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.makeCall=function(b){try{utilityController.makeCall(b)}catch(a){c.showAlert(\"makeCall: \"+a)}};c.sendMail=function(b,a,d){try{utilityController.sendMail(b,a,d)}catch(e){c.showAlert(\"sendMail: \"+e)}};c.sendSMS=function(b,a){try{utilityController.sendSMS(b,a)}catch(d){c.showAlert(\"sendSMS: \"+d)}};c.pauseAudio=function(b){try{var a=getPID(b);utilityController.pauseAudio(a)}catch(d){c.showAlert(\"pauseAudio: \"+d)}};c.muteAudio=function(b){try{var a=getPID(b);utilityController.muteAudio(a)}catch(d){c.showAlert(\"muteAudio: \"+d)}};c.unMuteAudio=function(b){try{var a=getPID(b);utilityController.unMuteAudio(a)}catch(d){c.showAlert(\"unMuteAudio: \"+d)}};c.isAudioMuted=function(b){try{var a=getPID(b);return utilityController.isAudioMuted(a)}catch(d){c.showAlert(\"isAudioMuted: \"+d)}};c.setAudioVolume=function(b,a){try{var d=getPID(b);utilityController.setAudioVolume(d,a)}catch(e){c.showAlert(\"setAudioVolume: \"+e)}};c.getAudioVolume=function(b){try{var a=getPID(b);return utilityController.getAudioVolume(a)}catch(d){c.showAlert(\"getAudioVolume: \"+d)}};c.seekAudio=function(b,a){try{var d=getPID(b);utilityController.seekAudio(d,a)}catch(e){c.showAlert(\"seekAudio: \"+e)}};c.playAudio=function(b,a){var d=!0,e=!1,h=\"normal\",f=\"normal\",g=!0,k=\"\",l=getPID(a);null!=b&&(k=b);null!=a&&(\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(d=!1),\"undefined\"!=typeof a.loop&&!0===a.loop&&(e=!0),\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(h=a.startStyle),\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(f=a.stopStyle),\"fullscreen\"==h&&(g=!0));try{utilityController.playAudio(k,d,g,e,h,f,l)}catch(m){c.showAlert(\"playAudio: \"+m)}};c.pauseVideo=function(b){try{var a=getPID(b);utilityController.pauseVideo(a)}catch(d){c.showAlert(\"pauseVideo: \"+d)}};c.closeVideo=function(b){try{var a=getPID(b);utilityController.closeVideo(a)}catch(d){c.showAlert(\"closeVideo: \"+d)}};c.hideVideo=function(b){try{var a=getPID(b);utilityController.hideVideo(a)}catch(d){c.showAlert(\"hideVideo: \"+d)}};c.showVideo=function(b){try{var a=getPID(b);utilityController.showVideo(a)}catch(d){c.showAlert(\"showVideo: \"+d)}};c.muteVideo=function(b){try{var a=getPID(b);utilityController.muteVideo(a)}catch(d){c.showAlert(\"muteVideo: \"+d)}};c.unMuteVideo=function(b){try{var a=getPID(b);utilityController.unMuteVideo(a)}catch(d){c.showAlert(\"unMuteVideo: \"+d)}};c.seekVideo=function(b,a){try{var d=getPID(b);utilityController.seekVideo(d,a)}catch(e){c.showAlert(\"seekVideo: \"+e)}};c.isVideoMuted=function(b){try{var a=getPID(b);return utilityController.isVideoMuted(a)}catch(d){c.showAlert(\"isVideoMuted: \"+d)}};c.setVideoVolume=function(b,a){try{var d=getPID(b);utilityController.setVideoVolume(d,a)}catch(e){c.showAlert(\"setVideoVolume: \"+e)}};c.getVideoVolume=function(b){try{var a=getPID(b);return utilityController.getVideoVolume(a)}catch(d){c.showAlert(\"getVideoVolume: \"+d)}};c.playVideo=function(b,a){var d=!1,e=!0,f=!0,g=!1,j=-99999,k=-99999,l=-99999,m=-99999,n=\"normal\",o=\"exit\",p=\"\",q=getPID(a);null!=b&&(p=b);if(null!=a){\"undefined\"!=typeof a.audio&&\"muted\"==a.audio&&(d=!0);\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(e=!1);\"undefined\"!=typeof a.controls&&!1===a.controls&&(f=!1);\"undefined\"!=typeof a.loop&&!0===a.loop&&(g=!0);if(\"undefined\"!=typeof a.inline&&null!=a.inline&&(j=a.inline.left,k=a.inline.top,\"undefined\"!=typeof a.width&&null!=a.width&&(l=a.width),\"undefined\"!=typeof a.height&&null!=a.height))m=a.height;\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(n=a.startStyle);\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(o=a.stopStyle);\"fullscreen\"==n&&(f=!0)}try{utilityController.playVideo(p,d,e,f,g,j,k,l,m,n,o,q)}catch(r){c.showAlert(\"playVideo: \"+r)}};c.stringify=function(b){if(\"undefined\"===typeof JSON){var a=\"\",d;if(\"undefined\"==typeof b.length)return c.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(a+=\",\"),a+=c.stringifyArg(b[d]);return a+\"]\"}return JSON.stringify(b)};c.stringifyArg=function(b){var a,d,e;d=typeof b;a=\"\";if(\"number\"===d||\"boolean\"===d)a+=args;else if(b instanceof Array)a=a+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;a+=\"{\";for(e in b)null!==b[e]&&(d||(a+=\",\"),a=a+\'\"\'+e+\'\":\',d=typeof b[e],a=\"number\"===d||\"boolean\"===d?a+b[e]:\"function\"===typeof b[e]?a+\'\"\"\':b[e]instanceof Object?a+this.stringify(args[i][e]):a+\'\"\'+b[e]+\'\"\',d=!1);a+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,\'\\\\\"\'),a=a+\'\"\'+b+\'\"\';c.showAlert(\"json:\"+a);return a};getPID=function(b){var a=\"\";null!=b&&\"undefined\"!=typeof b.id&&null!=b.id&&(a=b.id);return a}})();"

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "(function(){var c=window.mraid={};c.STATES={LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var d=c.EVENTS={READY:\"ready\",ERROR:\"error\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",ORIENTATIONCHANGE:\"orientationChange\"},i={width:0,height:0},g={width:0,height:0},f={},h={width:0,height:0,useCustomClose:!1,isModal:!0,lockOrientation:!1,orientation:\"\"},l=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var c=\"\"+a;b[c]||(b[c]=a,this.count++)};this.remove=function(a){a=\"\"+a;return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var c in b)b[c].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}};mraidview.addEventListener(d.READY,function(){e(d.READY)});mraidview.addEventListener(d.STATECHANGE,function(a){e(d.STATECHANGE,a)});mraidview.addEventListener(d.VIEWABLECHANGE,function(a){e(d.VIEWABLECHANGE,a)});mraidview.addEventListener(\"error\",function(a,b){e(d.ERROR,a,b)});mraidview.addEventListener(d.ORIENTATIONCHANGE,function(a){e(d.ORIENTATIONCHANGE,a)});var k=function(a){var b=function(){};b.prototype=a;return new b},e=function(){for(var a=Array(arguments.length),b=0;b<arguments.length;b++)a[b]=arguments[b];b=a.shift();try{f[b]&&f[b].broadcast(a)}catch(c){}},j=function(a){for(var b=0,c=a.length-1;b<a.length&&\" \"==a[b];)b++;for(;c>b&&\" \"==a[c];)c-=1;return a.substring(b,c+1)};c.addEventListener=function(a,b){try{!a||!b?e(d.ERROR,\"Both event and listener are required.\",\"addEventListener\"):d.ERROR==a||d.READY==a||d.STATECHANGE==a||d.VIEWABLECHANGE==a||d.ORIENTATIONCHANGE==a?(f[a]||(f[a]=new l(a)),f[a].add(b)):mraidview.addEventListener(a,b)}catch(c){mraidview.log(c)}};c.useCustomClose=function(a){h.useCustomClose=a;mraidview.useCustomClose(a)};c.close=function(){mraidview.close()};c.getExpandProperties=function(){return h};c.setExpandProperties=function(a){h=a;h.isModal=!0;mraidview.setExpandProperties(h)};c.expand=function(a){mraidview.expand(a)};c.getMaxSize=function(){return k(g)};c.getSize=function(){return k(i)};c.getState=function(){return mraidview.getState()};c.getOrientation=function(){return mraidview.getOrientation()};c.isViewable=function(){return mraidview.isViewable()};c.open=function(a){a?mraidview.open(a):e(d.ERROR,\"URL is required.\",\"open\")};c.removeEventListener=function(a,b){try{if(a){if(b)if(f[a])f[a].remove(b);else{mraidview.removeEventListener(a,b);return}else f[a]&&f[a].removeAll();f[a]&&0==f[a].count&&(f[a]=null,delete f[a])}else e(d.ERROR,\"Must specify an event.\",\"removeEventListener\")}catch(c){mraidview.log(\"removeEventListener\"+c)}};c.resize=function(a,b){null==a||null==b||isNaN(a)||isNaN(b)||0>a||0>b?e(d.ERROR,\"Requested size must be numeric values between 0 and maxSize.\",\"resize\"):a>g.width||b>g.height?e(d.ERROR,\"Request (\"+a+\" x \"+b+\") exceeds maximum allowable size of (\"+g.width+\" x \"+g.height+\")\",\"resize\"):a==i.width&&b==i.height?e(d.ERROR,\"Requested size equals current size.\",\"resize\"):mraidview.resize(a,b)};c.log=function(a){a?mraidview.log(a):e(d.ERROR,\"message is required.\",\"log\")};c.getVersion=function(){return\"1.0\"};c.getInMobiAIVersion=function(){return 1.1};c.getPlacementType=function(){return mraidview.getPlacementType()};c.asyncPing=function(a){a?mraidview.asyncPing(a):e(d.ERROR,\"URL is required.\",\"asyncPing\")};c.makeCall=function(a){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must provide a number to call.\",\"makeCall\"):mraidview.makeCall(a)};c.sendMail=function(a,b,c){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendMail\"):mraidview.sendMail(a,b,c)};c.sendSMS=function(a,b){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendSMS\"):mraidview.sendSMS(a,b)};c.playAudio=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playAudio(a,null):\"object\"==typeof a?mraidview.playAudio(null,a):mraidview.playAudio(null,null):mraidview.playAudio(a,b)};c.playVideo=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playVideo(a,null):\"object\"==typeof a?mraidview.playVideo(null,a):mraidview.playVideo(null,null):mraidview.playVideo(a,b)};c.pauseAudio=function(a){mraidview.pauseAudio(a)};c.muteAudio=function(a){mraidview.muteAudio(a)};c.unMuteAudio=function(a){mraidview.unMuteAudio(a)};c.isAudioMuted=function(a){return mraidview.isAudioMuted(a)};c.setAudioVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setAudioVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setAudioVolume\"):mraidview.setAudioVolume(a,b)};c.getAudioVolume=function(a){return mraidview.getAudioVolume(a)};c.pauseVideo=function(a){mraidview.pauseVideo(a)};c.closeVideo=function(a){mraidview.closeVideo(a)};c.hideVideo=function(a){mraidview.hideVideo(a)};c.showVideo=function(a){mraidview.showVideo(a)};c.muteVideo=function(a){mraidview.muteVideo(a)};c.unMuteVideo=function(a){mraidview.unMuteVideo(a)};c.isVideoMuted=function(a){return mraidview.isVideoMuted(a)};c.setVideoVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setVideoVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setVideoVolume\"):mraidview.setVideoVolume(a,b)};c.getVideoVolume=function(a){return mraidview.getVideoVolume(a)};c.seekAudio=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekAudio\"):0!=b?e(d.ERROR,\"Cannot seek audio other than 0\",\"seekAudio\"):mraidview.seekAudio(a,b)};c.seekVideo=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekVideo\"):0!=b?e(d.ERROR,\"Cannot seek video other than 0\",\"seekVideo\"):mraidview.seekVideo(a,b)}})();"

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1607
    :cond_4
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1375
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1376
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMWebView-> onPageFinished, url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1396
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->j(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->k(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1397
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V

    .line 1398
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "(function(){var c=window.mraidview={},f={},g=[],j=!1;c.fireReadyEvent=function(){var b=f.ready;if(null!=b)for(var a=0;a<b.length;a++)b[a]();return\"OK\"};c.fireStateChangeEvent=function(b){var a=f.stateChange;if(null!=a)for(var d=0;d<a.length;d++)a[d](b);return\"OK\"};c.fireViewableChangeEvent=function(b){var a=f.viewableChange;if(null!=a)for(var d=0;d<a.length;d++)a[d](b);return\"OK\"};c.fireErrorEvent=function(b,a){var d=f.error;if(null!=d)for(var c=0;c<d.length;c++)d[c](b,a);return\"OK\"};c.fireOrientationChangeEvent=function(b){var a=f.orientationChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireMediaTrackingEvent=function(b,a){var c={};c.name=b;var e=\"inmobi_media_\"+b;\"undefined\"!=typeof a&&null!=a&&\"\"!=a&&(e=e+\"_\"+a);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaErrorEvent=function(b,a){var c={name:\"error\"};c.code=a;var e=\"inmobi_media_\"+c.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(e=e+\"_\"+b);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaTimeUpdateEvent=function(b,a,c){var e={name:\"timeupdate\",target:{}};e.target.currentTime=a;e.target.duration=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaCloseEvent=function(b,a,c){var e={name:\"close\"};e.viaUserInteraction=a;e.target={};e.target.currentTime=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaVolumeChangeEvent=function(b,a,c){var e={name:\"volumechange\",target:{}};e.target.volume=a;e.target.muted=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.showAlert=function(b){utilityController.showAlert(b)};c.zeroPad=function(b){var a=\"\";10>b&&(a+=\"0\");return a+b};c.addEventListener=function(b,a){var c=f[b];null==c&&(f[b]=[],c=f[b]);for(var e in c)if(a==e)return;c.push(a)};c.removeEventListener=function(b){try{var a=f[b];null!=a&&delete a}catch(d){c.log(d)}};c.useCustomClose=function(b){try{displayController.useCustomClose(b)}catch(a){c.showAlert(\"use CustomClose: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.stackCommands=function(b,a){j?g.push(b):(eval(b),a&&(j=!0))};c.executeStack=function(){for(j=!1;0<g.length;){var b=g.shift();eval(b)}};c.emptyStack=function(){for(;0<g.length;)g.shift()};c.expand=function(b){try{displayController.expand(b)}catch(a){c.showAlert(\"executeNativeExpand: \"+a+\", URL = \"+b)}};c.setExpandProperties=function(b){try{b?this.props=b:b=null,displayController.setExpandProperties(c.stringify(b))}catch(a){c.showAlert(\"executeNativesetExpandProperties: \"+a+\", props = \"+b)}};c.open=function(b){try{displayController.open(b)}catch(a){c.showAlert(\"open: \"+a)}};c.resize=function(b,a){try{displayController.resize(b,a)}catch(d){c.showAlert(\"resize: \"+d)}};c.getState=function(){try{return\"\"+displayController.getState()}catch(b){c.showAlert(\"getState: \"+b)}};c.getOrientation=function(){try{return\"\"+displayController.getOrientation()}catch(b){c.showAlert(\"getOrientation: \"+b)}};c.isViewable=function(){try{return displayController.isViewable()}catch(b){c.showAlert(\"isViewable: \"+b)}};c.log=function(b){try{utilityController.log(b)}catch(a){c.showAlert(\"log: \"+a)}};c.getPlacementType=function(){return displayController.getPlacementType()};c.asyncPing=function(b){try{utilityController.asyncPing(b)}catch(a){c.showAlert(\"asyncPing: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.makeCall=function(b){try{utilityController.makeCall(b)}catch(a){c.showAlert(\"makeCall: \"+a)}};c.sendMail=function(b,a,d){try{utilityController.sendMail(b,a,d)}catch(e){c.showAlert(\"sendMail: \"+e)}};c.sendSMS=function(b,a){try{utilityController.sendSMS(b,a)}catch(d){c.showAlert(\"sendSMS: \"+d)}};c.pauseAudio=function(b){try{var a=getPID(b);utilityController.pauseAudio(a)}catch(d){c.showAlert(\"pauseAudio: \"+d)}};c.muteAudio=function(b){try{var a=getPID(b);utilityController.muteAudio(a)}catch(d){c.showAlert(\"muteAudio: \"+d)}};c.unMuteAudio=function(b){try{var a=getPID(b);utilityController.unMuteAudio(a)}catch(d){c.showAlert(\"unMuteAudio: \"+d)}};c.isAudioMuted=function(b){try{var a=getPID(b);return utilityController.isAudioMuted(a)}catch(d){c.showAlert(\"isAudioMuted: \"+d)}};c.setAudioVolume=function(b,a){try{var d=getPID(b);utilityController.setAudioVolume(d,a)}catch(e){c.showAlert(\"setAudioVolume: \"+e)}};c.getAudioVolume=function(b){try{var a=getPID(b);return utilityController.getAudioVolume(a)}catch(d){c.showAlert(\"getAudioVolume: \"+d)}};c.seekAudio=function(b,a){try{var d=getPID(b);utilityController.seekAudio(d,a)}catch(e){c.showAlert(\"seekAudio: \"+e)}};c.playAudio=function(b,a){var d=!0,e=!1,h=\"normal\",f=\"normal\",g=!0,k=\"\",l=getPID(a);null!=b&&(k=b);null!=a&&(\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(d=!1),\"undefined\"!=typeof a.loop&&!0===a.loop&&(e=!0),\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(h=a.startStyle),\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(f=a.stopStyle),\"fullscreen\"==h&&(g=!0));try{utilityController.playAudio(k,d,g,e,h,f,l)}catch(m){c.showAlert(\"playAudio: \"+m)}};c.pauseVideo=function(b){try{var a=getPID(b);utilityController.pauseVideo(a)}catch(d){c.showAlert(\"pauseVideo: \"+d)}};c.closeVideo=function(b){try{var a=getPID(b);utilityController.closeVideo(a)}catch(d){c.showAlert(\"closeVideo: \"+d)}};c.hideVideo=function(b){try{var a=getPID(b);utilityController.hideVideo(a)}catch(d){c.showAlert(\"hideVideo: \"+d)}};c.showVideo=function(b){try{var a=getPID(b);utilityController.showVideo(a)}catch(d){c.showAlert(\"showVideo: \"+d)}};c.muteVideo=function(b){try{var a=getPID(b);utilityController.muteVideo(a)}catch(d){c.showAlert(\"muteVideo: \"+d)}};c.unMuteVideo=function(b){try{var a=getPID(b);utilityController.unMuteVideo(a)}catch(d){c.showAlert(\"unMuteVideo: \"+d)}};c.seekVideo=function(b,a){try{var d=getPID(b);utilityController.seekVideo(d,a)}catch(e){c.showAlert(\"seekVideo: \"+e)}};c.isVideoMuted=function(b){try{var a=getPID(b);return utilityController.isVideoMuted(a)}catch(d){c.showAlert(\"isVideoMuted: \"+d)}};c.setVideoVolume=function(b,a){try{var d=getPID(b);utilityController.setVideoVolume(d,a)}catch(e){c.showAlert(\"setVideoVolume: \"+e)}};c.getVideoVolume=function(b){try{var a=getPID(b);return utilityController.getVideoVolume(a)}catch(d){c.showAlert(\"getVideoVolume: \"+d)}};c.playVideo=function(b,a){var d=!1,e=!0,f=!0,g=!1,j=-99999,k=-99999,l=-99999,m=-99999,n=\"normal\",o=\"exit\",p=\"\",q=getPID(a);null!=b&&(p=b);if(null!=a){\"undefined\"!=typeof a.audio&&\"muted\"==a.audio&&(d=!0);\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(e=!1);\"undefined\"!=typeof a.controls&&!1===a.controls&&(f=!1);\"undefined\"!=typeof a.loop&&!0===a.loop&&(g=!0);if(\"undefined\"!=typeof a.inline&&null!=a.inline&&(j=a.inline.left,k=a.inline.top,\"undefined\"!=typeof a.width&&null!=a.width&&(l=a.width),\"undefined\"!=typeof a.height&&null!=a.height))m=a.height;\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(n=a.startStyle);\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(o=a.stopStyle);\"fullscreen\"==n&&(f=!0)}try{utilityController.playVideo(p,d,e,f,g,j,k,l,m,n,o,q)}catch(r){c.showAlert(\"playVideo: \"+r)}};c.stringify=function(b){if(\"undefined\"===typeof JSON){var a=\"\",d;if(\"undefined\"==typeof b.length)return c.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(a+=\",\"),a+=c.stringifyArg(b[d]);return a+\"]\"}return JSON.stringify(b)};c.stringifyArg=function(b){var a,d,e;d=typeof b;a=\"\";if(\"number\"===d||\"boolean\"===d)a+=args;else if(b instanceof Array)a=a+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;a+=\"{\";for(e in b)null!==b[e]&&(d||(a+=\",\"),a=a+\'\"\'+e+\'\":\',d=typeof b[e],a=\"number\"===d||\"boolean\"===d?a+b[e]:\"function\"===typeof b[e]?a+\'\"\"\':b[e]instanceof Object?a+this.stringify(args[i][e]):a+\'\"\'+b[e]+\'\"\',d=!1);a+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,\'\\\\\"\'),a=a+\'\"\'+b+\'\"\';c.showAlert(\"json:\"+a);return a};getPID=function(b){var a=\"\";null!=b&&\"undefined\"!=typeof b.id&&null!=b.id&&(a=b.id);return a}})();"

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "(function(){var c=window.mraid={};c.STATES={LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var d=c.EVENTS={READY:\"ready\",ERROR:\"error\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",ORIENTATIONCHANGE:\"orientationChange\"},i={width:0,height:0},g={width:0,height:0},f={},h={width:0,height:0,useCustomClose:!1,isModal:!0,lockOrientation:!1,orientation:\"\"},l=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var c=\"\"+a;b[c]||(b[c]=a,this.count++)};this.remove=function(a){a=\"\"+a;return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var c in b)b[c].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}};mraidview.addEventListener(d.READY,function(){e(d.READY)});mraidview.addEventListener(d.STATECHANGE,function(a){e(d.STATECHANGE,a)});mraidview.addEventListener(d.VIEWABLECHANGE,function(a){e(d.VIEWABLECHANGE,a)});mraidview.addEventListener(\"error\",function(a,b){e(d.ERROR,a,b)});mraidview.addEventListener(d.ORIENTATIONCHANGE,function(a){e(d.ORIENTATIONCHANGE,a)});var k=function(a){var b=function(){};b.prototype=a;return new b},e=function(){for(var a=Array(arguments.length),b=0;b<arguments.length;b++)a[b]=arguments[b];b=a.shift();try{f[b]&&f[b].broadcast(a)}catch(c){}},j=function(a){for(var b=0,c=a.length-1;b<a.length&&\" \"==a[b];)b++;for(;c>b&&\" \"==a[c];)c-=1;return a.substring(b,c+1)};c.addEventListener=function(a,b){try{!a||!b?e(d.ERROR,\"Both event and listener are required.\",\"addEventListener\"):d.ERROR==a||d.READY==a||d.STATECHANGE==a||d.VIEWABLECHANGE==a||d.ORIENTATIONCHANGE==a?(f[a]||(f[a]=new l(a)),f[a].add(b)):mraidview.addEventListener(a,b)}catch(c){mraidview.log(c)}};c.useCustomClose=function(a){h.useCustomClose=a;mraidview.useCustomClose(a)};c.close=function(){mraidview.close()};c.getExpandProperties=function(){return h};c.setExpandProperties=function(a){h=a;h.isModal=!0;mraidview.setExpandProperties(h)};c.expand=function(a){mraidview.expand(a)};c.getMaxSize=function(){return k(g)};c.getSize=function(){return k(i)};c.getState=function(){return mraidview.getState()};c.getOrientation=function(){return mraidview.getOrientation()};c.isViewable=function(){return mraidview.isViewable()};c.open=function(a){a?mraidview.open(a):e(d.ERROR,\"URL is required.\",\"open\")};c.removeEventListener=function(a,b){try{if(a){if(b)if(f[a])f[a].remove(b);else{mraidview.removeEventListener(a,b);return}else f[a]&&f[a].removeAll();f[a]&&0==f[a].count&&(f[a]=null,delete f[a])}else e(d.ERROR,\"Must specify an event.\",\"removeEventListener\")}catch(c){mraidview.log(\"removeEventListener\"+c)}};c.resize=function(a,b){null==a||null==b||isNaN(a)||isNaN(b)||0>a||0>b?e(d.ERROR,\"Requested size must be numeric values between 0 and maxSize.\",\"resize\"):a>g.width||b>g.height?e(d.ERROR,\"Request (\"+a+\" x \"+b+\") exceeds maximum allowable size of (\"+g.width+\" x \"+g.height+\")\",\"resize\"):a==i.width&&b==i.height?e(d.ERROR,\"Requested size equals current size.\",\"resize\"):mraidview.resize(a,b)};c.log=function(a){a?mraidview.log(a):e(d.ERROR,\"message is required.\",\"log\")};c.getVersion=function(){return\"1.0\"};c.getInMobiAIVersion=function(){return 1.1};c.getPlacementType=function(){return mraidview.getPlacementType()};c.asyncPing=function(a){a?mraidview.asyncPing(a):e(d.ERROR,\"URL is required.\",\"asyncPing\")};c.makeCall=function(a){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must provide a number to call.\",\"makeCall\"):mraidview.makeCall(a)};c.sendMail=function(a,b,c){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendMail\"):mraidview.sendMail(a,b,c)};c.sendSMS=function(a,b){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendSMS\"):mraidview.sendSMS(a,b)};c.playAudio=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playAudio(a,null):\"object\"==typeof a?mraidview.playAudio(null,a):mraidview.playAudio(null,null):mraidview.playAudio(a,b)};c.playVideo=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playVideo(a,null):\"object\"==typeof a?mraidview.playVideo(null,a):mraidview.playVideo(null,null):mraidview.playVideo(a,b)};c.pauseAudio=function(a){mraidview.pauseAudio(a)};c.muteAudio=function(a){mraidview.muteAudio(a)};c.unMuteAudio=function(a){mraidview.unMuteAudio(a)};c.isAudioMuted=function(a){return mraidview.isAudioMuted(a)};c.setAudioVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setAudioVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setAudioVolume\"):mraidview.setAudioVolume(a,b)};c.getAudioVolume=function(a){return mraidview.getAudioVolume(a)};c.pauseVideo=function(a){mraidview.pauseVideo(a)};c.closeVideo=function(a){mraidview.closeVideo(a)};c.hideVideo=function(a){mraidview.hideVideo(a)};c.showVideo=function(a){mraidview.showVideo(a)};c.muteVideo=function(a){mraidview.muteVideo(a)};c.unMuteVideo=function(a){mraidview.unMuteVideo(a)};c.isVideoMuted=function(a){return mraidview.isVideoMuted(a)};c.setVideoVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setVideoVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setVideoVolume\"):mraidview.setVideoVolume(a,b)};c.getVideoVolume=function(a){return mraidview.getVideoVolume(a)};c.seekAudio=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekAudio\"):0!=b?e(d.ERROR,\"Cannot seek audio other than 0\",\"seekAudio\"):mraidview.seekAudio(a,b)};c.seekVideo=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekVideo\"):0!=b?e(d.ERROR,\"Cannot seek video other than 0\",\"seekVideo\"):mraidview.seekVideo(a,b)}})();"

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1402
    :cond_2
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1403
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMWebView-> Current State:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1404
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1403
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_7

    .line 1410
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_8

    .line 1411
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setState(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    .line 1417
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "window.mraidview.fireReadyEvent();"

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1423
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setViewable(Z)V

    .line 1424
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 1425
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVisibility(I)V

    .line 1429
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1430
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1432
    :cond_6
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->m(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1433
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->m(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1444
    :cond_7
    :goto_1
    return-void

    .line 1413
    :cond_8
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setState(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v0

    .line 1438
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 1439
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Exception in onPageFinished"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1332
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1333
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMWebView-> onPageStarted url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V

    .line 1344
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1349
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1350
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMWebView-> error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1359
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_2

    .line 1360
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1361
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :cond_2
    :goto_0
    return-void

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1366
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 1367
    const-string v2, "Exception in webview loading"

    .line 1366
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1448
    sget-boolean v2, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1449
    const-string v2, "InMobiAndroidSDK_3.5.4"

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMWebView-> shouldOverrideUrlLoading, url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1451
    const-string v4, "webview id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1450
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1449
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_0
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1460
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->n(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/AdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v2

    sget-object v3, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    if-ne v2, v3, :cond_1

    .line 1462
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1572
    :goto_0
    return v0

    .line 1467
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1470
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v3, v3, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1471
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v3, v3, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v3, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->handleRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1536
    :catch_0
    move-exception v3

    .line 1538
    :try_start_1
    const-string v3, "https://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1539
    const-string v3, "market://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1540
    const-string v3, "play.google.com"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1541
    const-string v3, "market.android.com"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1542
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1543
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1544
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1545
    const/high16 v2, 0x1000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1546
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1547
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->fireOnLeaveApplication()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1571
    :catch_1
    move-exception v0

    move v0, v1

    .line 1572
    goto :goto_0

    .line 1475
    :cond_3
    :try_start_2
    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1476
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    .line 1477
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1476
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1478
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1479
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1480
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->fireOnLeaveApplication()V

    goto/16 :goto_0

    .line 1484
    :cond_4
    const-string v3, "mailto:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1485
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 1486
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1485
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1487
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1488
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1489
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->fireOnLeaveApplication()V

    goto/16 :goto_0

    .line 1494
    :cond_5
    const-string v3, "about:blank"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    .line 1495
    goto/16 :goto_0

    .line 1498
    :cond_6
    const-string v3, "https://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "market://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1499
    const-string v3, "play.google.com"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1500
    const-string v3, "market.android.com"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1501
    :cond_7
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1502
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1504
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1505
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1506
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->fireOnLeaveApplication()V

    goto/16 :goto_0

    .line 1510
    :cond_8
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->doHidePlayers()V

    .line 1512
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1514
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v4

    .line 1515
    const-class v5, Lcom/inmobi/androidsdk/IMBrowserActivity;

    .line 1514
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1516
    const-string v4, "InMobiAndroidSDK_3.5.4"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IMWebView-> shouldoverride:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1516
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    const-string v4, "extra_url"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1525
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v4, v4, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-static {v4}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebViewListener(Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V

    .line 1526
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 1533
    goto/16 :goto_0

    .line 1551
    :cond_a
    :try_start_3
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->doHidePlayers()V

    .line 1553
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1557
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v3

    .line 1558
    const-class v4, Lcom/inmobi/androidsdk/IMBrowserActivity;

    .line 1557
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1559
    const-string v3, "InMobiAndroidSDK_3.5.4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMWebView-> open:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const-string v3, "extra_url"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v3, v3, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-static {v3}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebViewListener(Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V

    .line 1562
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 1568
    goto/16 :goto_0
.end method
