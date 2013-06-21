.class public Lcom/inmobi/androidsdk/ai/container/IMWebView;
.super Landroid/webkit/WebView;
.source "IMWebView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;,
        Lcom/inmobi/androidsdk/ai/container/IMWebView$NewLocationReciever;,
        Lcom/inmobi/androidsdk/ai/container/IMWebView$a;,
        Lcom/inmobi/androidsdk/ai/container/IMWebView$b;,
        Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;
    }
.end annotation


# static fields
.field private static final A:I = 0x3fe

.field private static final B:I = 0x3ff

.field private static final C:I = 0x400

.field private static final D:I = 0x401

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field private static final E:I = 0x402

.field public static final EXPAND_PROPERTIES:Ljava/lang/String; = "expand_properties"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field private static final F:I = 0x403

.field private static final G:Ljava/lang/String; = "_mraid_current"

.field private static final H:Ljava/lang/String; = "AD_PATH"

.field private static final I:Ljava/lang/String; = "message"

.field protected static final IMWEBVIEW_INTERSTITIAL_ID:I = 0x75

.field protected static final INT_BACKGROUND_ID:I = 0xe0

.field protected static final INT_CLOSE_BUTTON:I = 0xe1

.field private static final J:Ljava/lang/String; = "action"

.field private static final K:Ljava/lang/String; = "volume"

.field private static final L:Ljava/lang/String; = "seek"

.field private static final M:Ljava/lang/String; = "pid"

.field private static final N:Ljava/lang/String; = "vol"

.field private static final O:Ljava/lang/String; = "aplayerref"

.field private static final P:Ljava/lang/String; = "seekaudio"

.field protected static final PLACEHOLDER_ID:I = 0x1b5

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static final Q:I = 0x1b3

.field private static final R:Ljava/lang/String; = "inline"

.field protected static final RELATIVELAYOUT_ID:I = 0x1b6

.field private static final S:Ljava/lang/String; = "interstitial"

.field private static final T:Ljava/lang/String; = "mraid.js"

.field private static final aA:Ljava/lang/String; = "Cannot play audio.Ad is not in an expanded state"

.field private static final aB:Ljava/lang/String; = "Player Error. Exceeding permissible limit for saved play instances"

.field private static final aC:Ljava/lang/String; = "Invalid property ID"

.field private static final aD:Ljava/lang/String; = "Invalid player state"

.field private static final aE:Ljava/lang/String; = "Show failed. There is already a video playing"

.field private static final aF:I = -0x1869f

.field private static synthetic aX:[I = null

.field private static ae:Ljava/lang/String; = null

.field private static af:Ljava/lang/String; = null

.field private static final aw:I = 0x5

.field private static final ax:I = -0x1

.field private static final ay:Ljava/lang/String; = "Request must specify a valid URL"

.field private static final az:Ljava/lang/String; = "Cannot play video.Ad is not in an expanded state"

.field private static final c:Ljava/lang/String; = "(function(){var c=window.mraidview={},f={},g=[],j=!1;c.fireReadyEvent=function(){var b=f.ready;if(null!=b)for(var a=0;a<b.length;a++)b[a]();return\"OK\"};c.fireStateChangeEvent=function(b){var a=f.stateChange;if(null!=a)for(var d=0;d<a.length;d++)a[d](b);return\"OK\"};c.fireViewableChangeEvent=function(b){var a=f.viewableChange;if(null!=a)for(var d=0;d<a.length;d++)a[d](b);return\"OK\"};c.fireErrorEvent=function(b,a){var d=f.error;if(null!=d)for(var c=0;c<d.length;c++)d[c](b,a);return\"OK\"};c.fireOrientationChangeEvent=function(b){var a=f.orientationChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireMediaTrackingEvent=function(b,a){var c={};c.name=b;var e=\"inmobi_media_\"+b;\"undefined\"!=typeof a&&null!=a&&\"\"!=a&&(e=e+\"_\"+a);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaErrorEvent=function(b,a){var c={name:\"error\"};c.code=a;var e=\"inmobi_media_\"+c.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(e=e+\"_\"+b);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaTimeUpdateEvent=function(b,a,c){var e={name:\"timeupdate\",target:{}};e.target.currentTime=a;e.target.duration=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaCloseEvent=function(b,a,c){var e={name:\"close\"};e.viaUserInteraction=a;e.target={};e.target.currentTime=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaVolumeChangeEvent=function(b,a,c){var e={name:\"volumechange\",target:{}};e.target.volume=a;e.target.muted=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&null!=b&&\"\"!=b&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.showAlert=function(b){utilityController.showAlert(b)};c.zeroPad=function(b){var a=\"\";10>b&&(a+=\"0\");return a+b};c.addEventListener=function(b,a){var c=f[b];null==c&&(f[b]=[],c=f[b]);for(var e in c)if(a==e)return;c.push(a)};c.removeEventListener=function(b){try{var a=f[b];null!=a&&delete a}catch(d){c.log(d)}};c.useCustomClose=function(b){try{displayController.useCustomClose(b)}catch(a){c.showAlert(\"use CustomClose: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.stackCommands=function(b,a){j?g.push(b):(eval(b),a&&(j=!0))};c.executeStack=function(){for(j=!1;0<g.length;){var b=g.shift();eval(b)}};c.emptyStack=function(){for(;0<g.length;)g.shift()};c.expand=function(b){try{displayController.expand(b)}catch(a){c.showAlert(\"executeNativeExpand: \"+a+\", URL = \"+b)}};c.setExpandProperties=function(b){try{b?this.props=b:b=null,displayController.setExpandProperties(c.stringify(b))}catch(a){c.showAlert(\"executeNativesetExpandProperties: \"+a+\", props = \"+b)}};c.open=function(b){try{displayController.open(b)}catch(a){c.showAlert(\"open: \"+a)}};c.resize=function(b,a){try{displayController.resize(b,a)}catch(d){c.showAlert(\"resize: \"+d)}};c.getState=function(){try{return\"\"+displayController.getState()}catch(b){c.showAlert(\"getState: \"+b)}};c.getOrientation=function(){try{return\"\"+displayController.getOrientation()}catch(b){c.showAlert(\"getOrientation: \"+b)}};c.isViewable=function(){try{return displayController.isViewable()}catch(b){c.showAlert(\"isViewable: \"+b)}};c.log=function(b){try{utilityController.log(b)}catch(a){c.showAlert(\"log: \"+a)}};c.getPlacementType=function(){return displayController.getPlacementType()};c.asyncPing=function(b){try{utilityController.asyncPing(b)}catch(a){c.showAlert(\"asyncPing: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.makeCall=function(b){try{utilityController.makeCall(b)}catch(a){c.showAlert(\"makeCall: \"+a)}};c.sendMail=function(b,a,d){try{utilityController.sendMail(b,a,d)}catch(e){c.showAlert(\"sendMail: \"+e)}};c.sendSMS=function(b,a){try{utilityController.sendSMS(b,a)}catch(d){c.showAlert(\"sendSMS: \"+d)}};c.pauseAudio=function(b){try{var a=getPID(b);utilityController.pauseAudio(a)}catch(d){c.showAlert(\"pauseAudio: \"+d)}};c.muteAudio=function(b){try{var a=getPID(b);utilityController.muteAudio(a)}catch(d){c.showAlert(\"muteAudio: \"+d)}};c.unMuteAudio=function(b){try{var a=getPID(b);utilityController.unMuteAudio(a)}catch(d){c.showAlert(\"unMuteAudio: \"+d)}};c.isAudioMuted=function(b){try{var a=getPID(b);return utilityController.isAudioMuted(a)}catch(d){c.showAlert(\"isAudioMuted: \"+d)}};c.setAudioVolume=function(b,a){try{var d=getPID(b);utilityController.setAudioVolume(d,a)}catch(e){c.showAlert(\"setAudioVolume: \"+e)}};c.getAudioVolume=function(b){try{var a=getPID(b);return utilityController.getAudioVolume(a)}catch(d){c.showAlert(\"getAudioVolume: \"+d)}};c.seekAudio=function(b,a){try{var d=getPID(b);utilityController.seekAudio(d,a)}catch(e){c.showAlert(\"seekAudio: \"+e)}};c.playAudio=function(b,a){var d=!0,e=!1,h=\"normal\",f=\"normal\",g=!0,k=\"\",l=getPID(a);null!=b&&(k=b);null!=a&&(\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(d=!1),\"undefined\"!=typeof a.loop&&!0===a.loop&&(e=!0),\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(h=a.startStyle),\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(f=a.stopStyle),\"fullscreen\"==h&&(g=!0));try{utilityController.playAudio(k,d,g,e,h,f,l)}catch(m){c.showAlert(\"playAudio: \"+m)}};c.pauseVideo=function(b){try{var a=getPID(b);utilityController.pauseVideo(a)}catch(d){c.showAlert(\"pauseVideo: \"+d)}};c.closeVideo=function(b){try{var a=getPID(b);utilityController.closeVideo(a)}catch(d){c.showAlert(\"closeVideo: \"+d)}};c.hideVideo=function(b){try{var a=getPID(b);utilityController.hideVideo(a)}catch(d){c.showAlert(\"hideVideo: \"+d)}};c.showVideo=function(b){try{var a=getPID(b);utilityController.showVideo(a)}catch(d){c.showAlert(\"showVideo: \"+d)}};c.muteVideo=function(b){try{var a=getPID(b);utilityController.muteVideo(a)}catch(d){c.showAlert(\"muteVideo: \"+d)}};c.unMuteVideo=function(b){try{var a=getPID(b);utilityController.unMuteVideo(a)}catch(d){c.showAlert(\"unMuteVideo: \"+d)}};c.seekVideo=function(b,a){try{var d=getPID(b);utilityController.seekVideo(d,a)}catch(e){c.showAlert(\"seekVideo: \"+e)}};c.isVideoMuted=function(b){try{var a=getPID(b);return utilityController.isVideoMuted(a)}catch(d){c.showAlert(\"isVideoMuted: \"+d)}};c.setVideoVolume=function(b,a){try{var d=getPID(b);utilityController.setVideoVolume(d,a)}catch(e){c.showAlert(\"setVideoVolume: \"+e)}};c.getVideoVolume=function(b){try{var a=getPID(b);return utilityController.getVideoVolume(a)}catch(d){c.showAlert(\"getVideoVolume: \"+d)}};c.playVideo=function(b,a){var d=!1,e=!0,f=!0,g=!1,j=-99999,k=-99999,l=-99999,m=-99999,n=\"normal\",o=\"exit\",p=\"\",q=getPID(a);null!=b&&(p=b);if(null!=a){\"undefined\"!=typeof a.audio&&\"muted\"==a.audio&&(d=!0);\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(e=!1);\"undefined\"!=typeof a.controls&&!1===a.controls&&(f=!1);\"undefined\"!=typeof a.loop&&!0===a.loop&&(g=!0);if(\"undefined\"!=typeof a.inline&&null!=a.inline&&(j=a.inline.left,k=a.inline.top,\"undefined\"!=typeof a.width&&null!=a.width&&(l=a.width),\"undefined\"!=typeof a.height&&null!=a.height))m=a.height;\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(n=a.startStyle);\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(o=a.stopStyle);\"fullscreen\"==n&&(f=!0)}try{utilityController.playVideo(p,d,e,f,g,j,k,l,m,n,o,q)}catch(r){c.showAlert(\"playVideo: \"+r)}};c.stringify=function(b){if(\"undefined\"===typeof JSON){var a=\"\",d;if(\"undefined\"==typeof b.length)return c.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(a+=\",\"),a+=c.stringifyArg(b[d]);return a+\"]\"}return JSON.stringify(b)};c.stringifyArg=function(b){var a,d,e;d=typeof b;a=\"\";if(\"number\"===d||\"boolean\"===d)a+=args;else if(b instanceof Array)a=a+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;a+=\"{\";for(e in b)null!==b[e]&&(d||(a+=\",\"),a=a+\'\"\'+e+\'\":\',d=typeof b[e],a=\"number\"===d||\"boolean\"===d?a+b[e]:\"function\"===typeof b[e]?a+\'\"\"\':b[e]instanceof Object?a+this.stringify(args[i][e]):a+\'\"\'+b[e]+\'\"\',d=!1);a+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,\'\\\\\"\'),a=a+\'\"\'+b+\'\"\';c.showAlert(\"json:\"+a);return a};getPID=function(b){var a=\"\";null!=b&&\"undefined\"!=typeof b.id&&null!=b.id&&(a=b.id);return a}})();"

.field private static final d:Ljava/lang/String; = "(function(){var c=window.mraid={};c.STATES={LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var d=c.EVENTS={READY:\"ready\",ERROR:\"error\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",ORIENTATIONCHANGE:\"orientationChange\"},i={width:0,height:0},g={width:0,height:0},f={},h={width:0,height:0,useCustomClose:!1,isModal:!0,lockOrientation:!1,orientation:\"\"},l=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var c=\"\"+a;b[c]||(b[c]=a,this.count++)};this.remove=function(a){a=\"\"+a;return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var c in b)b[c].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}};mraidview.addEventListener(d.READY,function(){e(d.READY)});mraidview.addEventListener(d.STATECHANGE,function(a){e(d.STATECHANGE,a)});mraidview.addEventListener(d.VIEWABLECHANGE,function(a){e(d.VIEWABLECHANGE,a)});mraidview.addEventListener(\"error\",function(a,b){e(d.ERROR,a,b)});mraidview.addEventListener(d.ORIENTATIONCHANGE,function(a){e(d.ORIENTATIONCHANGE,a)});var k=function(a){var b=function(){};b.prototype=a;return new b},e=function(){for(var a=Array(arguments.length),b=0;b<arguments.length;b++)a[b]=arguments[b];b=a.shift();try{f[b]&&f[b].broadcast(a)}catch(c){}},j=function(a){for(var b=0,c=a.length-1;b<a.length&&\" \"==a[b];)b++;for(;c>b&&\" \"==a[c];)c-=1;return a.substring(b,c+1)};c.addEventListener=function(a,b){try{!a||!b?e(d.ERROR,\"Both event and listener are required.\",\"addEventListener\"):d.ERROR==a||d.READY==a||d.STATECHANGE==a||d.VIEWABLECHANGE==a||d.ORIENTATIONCHANGE==a?(f[a]||(f[a]=new l(a)),f[a].add(b)):mraidview.addEventListener(a,b)}catch(c){mraidview.log(c)}};c.useCustomClose=function(a){h.useCustomClose=a;mraidview.useCustomClose(a)};c.close=function(){mraidview.close()};c.getExpandProperties=function(){return h};c.setExpandProperties=function(a){h=a;h.isModal=!0;mraidview.setExpandProperties(h)};c.expand=function(a){mraidview.expand(a)};c.getMaxSize=function(){return k(g)};c.getSize=function(){return k(i)};c.getState=function(){return mraidview.getState()};c.getOrientation=function(){return mraidview.getOrientation()};c.isViewable=function(){return mraidview.isViewable()};c.open=function(a){a?mraidview.open(a):e(d.ERROR,\"URL is required.\",\"open\")};c.removeEventListener=function(a,b){try{if(a){if(b)if(f[a])f[a].remove(b);else{mraidview.removeEventListener(a,b);return}else f[a]&&f[a].removeAll();f[a]&&0==f[a].count&&(f[a]=null,delete f[a])}else e(d.ERROR,\"Must specify an event.\",\"removeEventListener\")}catch(c){mraidview.log(\"removeEventListener\"+c)}};c.resize=function(a,b){null==a||null==b||isNaN(a)||isNaN(b)||0>a||0>b?e(d.ERROR,\"Requested size must be numeric values between 0 and maxSize.\",\"resize\"):a>g.width||b>g.height?e(d.ERROR,\"Request (\"+a+\" x \"+b+\") exceeds maximum allowable size of (\"+g.width+\" x \"+g.height+\")\",\"resize\"):a==i.width&&b==i.height?e(d.ERROR,\"Requested size equals current size.\",\"resize\"):mraidview.resize(a,b)};c.log=function(a){a?mraidview.log(a):e(d.ERROR,\"message is required.\",\"log\")};c.getVersion=function(){return\"1.0\"};c.getInMobiAIVersion=function(){return 1.1};c.getPlacementType=function(){return mraidview.getPlacementType()};c.asyncPing=function(a){a?mraidview.asyncPing(a):e(d.ERROR,\"URL is required.\",\"asyncPing\")};c.makeCall=function(a){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must provide a number to call.\",\"makeCall\"):mraidview.makeCall(a)};c.sendMail=function(a,b,c){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendMail\"):mraidview.sendMail(a,b,c)};c.sendSMS=function(a,b){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendSMS\"):mraidview.sendSMS(a,b)};c.playAudio=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playAudio(a,null):\"object\"==typeof a?mraidview.playAudio(null,a):mraidview.playAudio(null,null):mraidview.playAudio(a,b)};c.playVideo=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playVideo(a,null):\"object\"==typeof a?mraidview.playVideo(null,a):mraidview.playVideo(null,null):mraidview.playVideo(a,b)};c.pauseAudio=function(a){mraidview.pauseAudio(a)};c.muteAudio=function(a){mraidview.muteAudio(a)};c.unMuteAudio=function(a){mraidview.unMuteAudio(a)};c.isAudioMuted=function(a){return mraidview.isAudioMuted(a)};c.setAudioVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setAudioVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setAudioVolume\"):mraidview.setAudioVolume(a,b)};c.getAudioVolume=function(a){return mraidview.getAudioVolume(a)};c.pauseVideo=function(a){mraidview.pauseVideo(a)};c.closeVideo=function(a){mraidview.closeVideo(a)};c.hideVideo=function(a){mraidview.hideVideo(a)};c.showVideo=function(a){mraidview.showVideo(a)};c.muteVideo=function(a){mraidview.muteVideo(a)};c.unMuteVideo=function(a){mraidview.unMuteVideo(a)};c.isVideoMuted=function(a){return mraidview.isVideoMuted(a)};c.setVideoVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setVideoVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setVideoVolume\"):mraidview.setVideoVolume(a,b)};c.getVideoVolume=function(a){return mraidview.getVideoVolume(a)};c.seekAudio=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekAudio\"):0!=b?e(d.ERROR,\"Cannot seek audio other than 0\",\"seekAudio\"):mraidview.seekAudio(a,b)};c.seekVideo=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekVideo\"):0!=b?e(d.ERROR,\"Cannot seek video other than 0\",\"seekVideo\"):mraidview.seekVideo(a,b)}})();"

.field private static e:[I = null

.field private static final f:I = 0x3e9

.field private static final g:I = 0x3ea

.field private static final h:I = 0x3eb

.field private static final i:I = 0x3ec

.field private static final j:I = 0x3ed

.field private static final k:I = 0x3ee

.field private static final l:I = 0x3ef

.field private static final m:I = 0x3f0

.field private static final n:I = 0x3f1

.field private static final o:I = 0x3f2

.field private static final p:I = 0x3f3

.field private static final q:I = 0x3f4

.field private static final r:I = 0x3f5

.field private static final s:I = 0x3f6

.field private static final serialVersionUID:J = 0x6282f5dae34d0336L

.field private static final t:I = 0x3f7

.field private static final u:I = 0x3f8

.field public static userInitiatedClose:Z = false

.field private static final v:I = 0x3f9

.field private static final w:I = 0x3fa

.field private static final x:I = 0x3fb

.field private static final y:I = 0x3fc

.field private static final z:I = 0x3fd


# instance fields
.field private U:Lcom/inmobi/androidsdk/ai/container/IMWebView$b;

.field private V:Z

.field private W:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

.field private X:F

.field private Y:I

.field private Z:I

.field a:Landroid/webkit/WebViewClient;

.field private aG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aH:Landroid/os/Handler;

.field private aI:Landroid/view/Display;

.field private aJ:Landroid/view/ViewGroup;

.field private aK:Landroid/hardware/SensorEventListener;

.field private aL:Z

.field private aM:Z

.field private aN:Landroid/os/Message;

.field private aO:Landroid/os/Message;

.field private aP:Landroid/os/Message;

.field private aQ:Landroid/app/Activity;

.field private aR:Landroid/app/Activity;

.field private aS:Landroid/os/Message;

.field private aT:I

.field private aU:I

.field private aV:I

.field private aW:Landroid/webkit/WebViewClient;

.field private aa:I

.field private ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

.field private ac:Ljava/lang/String;

.field private final ad:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Z

.field private ah:Z

.field private ai:Lcom/inmobi/androidsdk/impl/AdUnit;

.field private aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private ak:Z

.field private al:Z

.field private am:Landroid/hardware/SensorManager;

.field private an:Landroid/hardware/Sensor;

.field private ao:Z

.field private ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

.field private aq:Z

.field private ar:Ljava/lang/String;

.field private as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

.field private at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

.field private au:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private av:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/webkit/WebChromeClient;

.field public isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isTablet:Z

.field public mIsExpandUrlValid:Z

.field public mIsInterstitialAd:Z

.field public mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

.field public mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field public mutex:Ljava/lang/Object;

.field public publisherOrientation:I

.field public useLockOrient:Z

.field public videoValidateWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e:[I

    .line 201
    const-string v0, "http://dl.dropbox.com/u/30899852/mraid/inmobi_mraid_bridge.js"

    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ae:Ljava/lang/String;

    .line 202
    const-string v0, "http://dl.dropbox.com/u/30899852/mraid/inmobi_mraid.js"

    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->af:Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 81
    return-void

    .line 103
    :array_0
    .array-data 0x4
        0x1ft 0x1t 0x1t 0x1t
        0x20t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x5

    const/4 v1, 0x0

    .line 662
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ad:Ljava/util/HashSet;

    .line 204
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ag:Z

    .line 205
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ah:Z

    .line 210
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    .line 211
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    .line 217
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 222
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->al:Z

    .line 227
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ao:Z

    .line 229
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aq:Z

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aG:Ljava/util/ArrayList;

    .line 696
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    .line 1328
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a:Landroid/webkit/WebViewClient;

    .line 1641
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$6;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$6;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b:Landroid/webkit/WebChromeClient;

    .line 1663
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aK:Landroid/hardware/SensorEventListener;

    .line 1976
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aM:Z

    .line 1987
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aT:I

    .line 1988
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aU:I

    .line 1989
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aV:I

    .line 664
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c()V

    .line 666
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 676
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x5

    const/4 v1, 0x0

    .line 278
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 185
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ad:Ljava/util/HashSet;

    .line 204
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ag:Z

    .line 205
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ah:Z

    .line 210
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    .line 211
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    .line 217
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 222
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->al:Z

    .line 227
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ao:Z

    .line 229
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aq:Z

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aG:Ljava/util/ArrayList;

    .line 696
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    .line 1328
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a:Landroid/webkit/WebViewClient;

    .line 1641
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$6;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$6;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b:Landroid/webkit/WebChromeClient;

    .line 1663
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aK:Landroid/hardware/SensorEventListener;

    .line 1976
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aM:Z

    .line 1987
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aT:I

    .line 1988
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aU:I

    .line 1989
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aV:I

    .line 279
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 280
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c()V

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x5

    const/4 v1, 0x0

    .line 285
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 185
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ad:Ljava/util/HashSet;

    .line 204
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ag:Z

    .line 205
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ah:Z

    .line 210
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    .line 211
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    .line 217
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 222
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->al:Z

    .line 227
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ao:Z

    .line 229
    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aq:Z

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    .line 244
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aG:Ljava/util/ArrayList;

    .line 696
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    .line 1328
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$5;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a:Landroid/webkit/WebViewClient;

    .line 1641
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$6;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$6;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b:Landroid/webkit/WebChromeClient;

    .line 1663
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aK:Landroid/hardware/SensorEventListener;

    .line 1976
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aM:Z

    .line 1987
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aT:I

    .line 1988
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aU:I

    .line 1989
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aV:I

    .line 287
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 288
    iput-boolean p3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    .line 289
    iput-boolean p4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ak:Z

    .line 290
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 291
    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setId(I)V

    .line 293
    :cond_0
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 294
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c()V

    .line 295
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)Landroid/widget/FrameLayout;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 1012
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1013
    const v1, 0x1020002

    .line 1012
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1015
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->replaceByPlaceholder()V

    .line 1019
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1020
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1025
    const/16 v3, 0x1b3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1031
    new-instance v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$8;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1040
    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1044
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    .line 1045
    iget v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1044
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1047
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1048
    const/16 v5, 0x1b6

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1050
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1051
    iget v6, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iget v7, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    .line 1050
    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1052
    iget-boolean v6, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v6, :cond_0

    .line 1053
    iget-object v6, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1058
    :goto_0
    iget-boolean v5, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/view/ViewGroup;Z)V

    .line 1060
    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    return-object v1

    .line 1055
    :cond_0
    invoke-virtual {v4, p0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireOrientationChangeEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getCurrentRotation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1918
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1919
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSDisplayController-> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_0
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1922
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v1, :cond_1

    .line 1923
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 1925
    :cond_1
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 2080
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2081
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2082
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2080
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2085
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ao:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    if-ne v0, v4, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->am:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aK:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ao:Z

    .line 2095
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->resetContents(Landroid/app/Activity;)V

    .line 2097
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->releaseAllPlayers()V

    .line 2100
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2102
    instance-of v0, p1, Lcom/inmobi/androidsdk/IMBrowserActivity;

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 2104
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2106
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2107
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVisibility(I)V

    .line 2109
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    .line 2110
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    if-eqz v0, :cond_2

    .line 2112
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 2113
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2116
    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setState(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    .line 2117
    return-void

    .line 2080
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 1155
    :try_start_0
    const-string v0, "expand_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    .line 1158
    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 1159
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    .line 1158
    iput-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1161
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    .line 1162
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    .line 1163
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ao:Z

    iput-boolean v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ao:Z

    .line 1164
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    new-instance v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {v2}, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;-><init>()V

    iput-object v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 1165
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    .line 1166
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    .line 1167
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    .line 1168
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    .line 1169
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    iput-boolean v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    .line 1170
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput-object p0, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 1175
    :goto_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->checkFlag:Z

    if-eqz v1, :cond_5

    .line 1176
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 1177
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 1178
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {p0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V

    .line 1179
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1180
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 1181
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    iput v2, v1, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 1184
    :cond_0
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setState(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    .line 1185
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1187
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1185
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1189
    :try_start_2
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v1, :cond_1

    .line 1190
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 1192
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_2

    .line 1193
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onExpand()Z

    .line 1211
    :cond_2
    :goto_1
    return-void

    .line 1172
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 1202
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in doexpand"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_4
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 1205
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1206
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1207
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1205
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1185
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 1197
    :cond_5
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    invoke-direct {p0, v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4248

    .line 1121
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1122
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1121
    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1123
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1127
    if-eqz p2, :cond_0

    .line 1128
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v0, v2, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 1137
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1138
    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$9;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    return-void

    .line 1132
    :cond_0
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v0, v2, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    goto :goto_0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1613
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1614
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMWebView-> Search query requested:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1614
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 1619
    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1620
    if-lez v0, :cond_1

    .line 1621
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1622
    if-eqz v0, :cond_1

    .line 1623
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ai:Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/AdUnit;->getDefaultTargetUrl()Ljava/lang/String;

    move-result-object v1

    .line 1624
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ai:Lcom/inmobi/androidsdk/impl/AdUnit;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/impl/AdUnit;->setTargetUrl(Ljava/lang/String;)V

    .line 1625
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aS:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    .line 1629
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aS:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1630
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1636
    :cond_1
    :goto_0
    return-void

    .line 1634
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1987
    iput p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aT:I

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2075
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1152
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1611
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2351
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ah:Z

    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4248

    const/4 v1, 0x1

    .line 3644
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 3645
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    .line 3646
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    .line 3647
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 3648
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    mul-float/2addr v0, v4

    float-to-int v2, v0

    .line 3649
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    iget v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v3, v0, v3

    .line 3650
    const/4 v0, 0x0

    .line 3652
    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    if-lez v4, :cond_0

    iget v4, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    if-gtz v4, :cond_1

    .line 3653
    :cond_0
    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 3654
    iput v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    move v0, v1

    .line 3658
    :cond_1
    if-nez v0, :cond_2

    .line 3659
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    add-int/2addr v0, v1

    if-le v0, v3, :cond_2

    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-ge v0, v3, :cond_2

    .line 3660
    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-ge v0, v2, :cond_2

    iget v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    iget v1, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    add-int/2addr v0, v1

    if-le v0, v2, :cond_2

    .line 3661
    iput v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 3663
    :cond_2
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1097
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1098
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1099
    const-string v2, "EXPAND_WIDTH"

    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1100
    const-string v2, "EXPAND_HEIGHT"

    iget v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1101
    const-string v2, "EXPAND_CUSTOM_CLOSE"

    iget-boolean v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1102
    const-string v2, "EXPAND_ORIENTATION"

    iget-object v3, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v2, "EXPAND_BACKGROUND_ID"

    const/16 v3, 0x1b3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1104
    const-string v2, "EXPAND_WITH_URL"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1107
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    .line 1112
    :goto_0
    invoke-static {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setOriginalWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    .line 1115
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1117
    return-void

    .line 1110
    :cond_0
    invoke-static {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    goto :goto_0
.end method

.method private a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3924
    const v0, -0x383cb080

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3926
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isInlineVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    if-eq v1, v0, :cond_0

    .line 3927
    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    if-eq v1, v0, :cond_0

    .line 3928
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 3929
    iget v2, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3928
    invoke-virtual {p1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3930
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getBackGroundLayout()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3931
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    if-nez v1, :cond_1

    .line 3932
    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget v2, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 3938
    :cond_0
    :goto_0
    return-void

    .line 3934
    :cond_1
    iget v1, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    add-int/2addr v1, v2

    .line 3935
    iget v2, p2, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    add-int/2addr v2, v3

    .line 3934
    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b()V

    .line 580
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$b;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$b;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;->cancel()Z

    .line 583
    :cond_0
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$b;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$b;

    .line 586
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    .line 587
    const-string v2, "_mraid_current"

    const/4 v3, 0x1

    sget-object v5, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ae:Ljava/lang/String;

    .line 588
    sget-object v6, Lcom/inmobi/androidsdk/ai/container/IMWebView;->af:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    .line 586
    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ac:Ljava/lang/String;

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 590
    const-string v1, "_mraid_current"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 591
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 592
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->U:Lcom/inmobi/androidsdk/ai/container/IMWebView$b;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 593
    if-eqz p2, :cond_1

    .line 594
    invoke-virtual {p0, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 597
    :cond_1
    invoke-super {p0, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 603
    if-eqz p1, :cond_2

    .line 605
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 611
    :cond_2
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    if-eqz p1, :cond_2

    .line 605
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 606
    :catch_1
    move-exception v0

    goto :goto_0

    .line 600
    :catch_2
    move-exception v0

    .line 601
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 603
    if-eqz p1, :cond_2

    .line 605
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 606
    :catch_3
    move-exception v0

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v0

    .line 603
    if-eqz p1, :cond_3

    .line 605
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 610
    :cond_3
    :goto_1
    throw v0

    .line 606
    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 345
    if-nez v2, :cond_0

    move v0, v1

    .line 352
    :goto_0
    return v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ad:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 352
    goto :goto_0

    .line 348
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/net/Uri;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 81
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aX:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->values()[Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->COMPLETED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->HIDDEN:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->INIT:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PAUSED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->SHOWING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aX:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2611
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2613
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 2614
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    if-nez v0, :cond_1

    .line 2615
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 2616
    const-string v0, "Too many audio players"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 2648
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    return-object v0

    .line 2619
    :cond_0
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-direct {v0, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    goto :goto_0

    .line 2622
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 2623
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v0, v1, :cond_3

    .line 2626
    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    goto :goto_0

    .line 2627
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PAUSED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v0, v1, :cond_4

    .line 2628
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->start()V

    .line 2629
    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    goto :goto_0

    .line 2631
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    move-result-object v0

    .line 2632
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v1

    .line 2633
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 2634
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2635
    new-instance v2, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-direct {v2, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 2636
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    goto :goto_0

    .line 2639
    :cond_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 2640
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-direct {v0, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    goto :goto_0

    .line 2645
    :cond_6
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-direct {v0, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Landroid/app/Activity;)V

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->invalidate()V

    .line 564
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->deleteOldAds()V

    .line 565
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->stopAllListeners()V

    .line 566
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->f()V

    .line 567
    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 3886
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->releaseAllPlayers()V

    .line 3888
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3889
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3888
    check-cast v0, Landroid/widget/FrameLayout;

    .line 3892
    const/16 v1, 0xe0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3891
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 3893
    if-eqz v1, :cond_0

    .line 3894
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3895
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3898
    :cond_0
    instance-of v0, p1, Lcom/inmobi/androidsdk/IMBrowserActivity;

    if-eqz v0, :cond_1

    .line 3899
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 3900
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 3904
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aP:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 3905
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aP:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3914
    :cond_2
    :goto_0
    return-void

    .line 3908
    :catch_0
    move-exception v0

    .line 3910
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 3911
    const-string v2, "Exception while closing the Interstitial Ad"

    .line 3910
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1988
    iput p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aU:I

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3883
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ag:Z

    return-void
.end method

.method private b(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V
    .locals 4
    .parameter

    .prologue
    .line 1271
    :try_start_0
    iget-boolean v0, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->publisherOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1272
    const/4 v0, -0x5

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aT:I

    .line 1273
    const/4 v0, -0x5

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aU:I

    .line 1274
    const/4 v0, -0x5

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aV:I

    .line 1275
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->am:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aK:Landroid/hardware/SensorEventListener;

    .line 1276
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->an:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    .line 1275
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1282
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 1283
    const-string v2, "Exception handling the orientation"

    .line 1282
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 2313
    .line 2315
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 2316
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 2319
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 2320
    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2321
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 2322
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 2324
    const-string v0, "http.request"

    invoke-interface {v1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2323
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 2326
    const-string v2, "http.target_host"

    invoke-interface {v1, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2325
    check-cast v1, Lorg/apache/http/HttpHost;

    .line 2327
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 2328
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p1, v0

    .line 2343
    :cond_0
    :goto_1
    return-object p1

    .line 2328
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2329
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2339
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1998
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    .line 1999
    sput-boolean v3, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 2000
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setScrollContainer(Z)V

    .line 2001
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 2002
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 2005
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setBackgroundColor(I)V

    .line 2006
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2007
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2008
    const-string v2, "window"

    .line 2007
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2010
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2012
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    .line 2013
    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Z

    .line 2015
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2017
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    .line 2019
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    const-string v1, "utilityController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2023
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 2030
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 2031
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 2030
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->am:Landroid/hardware/SensorManager;

    .line 2032
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->am:Landroid/hardware/SensorManager;

    .line 2033
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 2032
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->an:Landroid/hardware/Sensor;

    .line 2035
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 2036
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2035
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aI:Landroid/view/Display;

    .line 2037
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 2039
    return-void
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1914
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 2043
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2044
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "IMWebView-> initStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 2051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aM:Z

    .line 2053
    return-void
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/ai/container/IMWebView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1989
    iput p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aV:I

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 2353
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "market://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2354
    const-string v0, "play.google.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2355
    const-string v0, "market.android.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2356
    :cond_0
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2358
    if-eqz v0, :cond_1

    .line 2359
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2360
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2361
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2362
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2363
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2364
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onLeaveApplication()Z

    .line 2388
    :cond_1
    :goto_0
    return-void

    .line 2370
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2371
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMWebView-> open:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2380
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebViewListener(Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V

    .line 2381
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    return-object v0
.end method

.method private declared-synchronized e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    .locals 2
    .parameter

    .prologue
    .line 2653
    monitor-enter p0

    const/4 v0, 0x0

    .line 2655
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    if-eqz v1, :cond_1

    .line 2656
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2658
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2664
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2659
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2660
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2662
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    .line 2241
    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2240
    check-cast v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    .line 2242
    if-eqz v0, :cond_0

    .line 2243
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->al:Z

    if-eqz v1, :cond_1

    .line 2244
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setSwitchInt(Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 2245
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->invalidate()V

    .line 2255
    :cond_0
    :goto_0
    return-void

    .line 2249
    :cond_1
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setSwitchInt(Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 2250
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->invalidate()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 2461
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2462
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aL:Z

    if-eqz v1, :cond_0

    .line 2463
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2464
    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Z:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2466
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVisibility(I)V

    .line 2467
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestLayout()V

    .line 2468
    return-void
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 2239
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v2, -0x5

    .line 3819
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getIntegerCurrentRotation()I

    .line 3820
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 3821
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 3845
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aq:Z

    if-nez v1, :cond_0

    .line 3846
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3848
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aT:I

    .line 3849
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aU:I

    .line 3850
    iput v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aV:I

    .line 3851
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->am:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aK:Landroid/hardware/SensorEventListener;

    .line 3852
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->an:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    .line 3851
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3856
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 3950
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->i()V

    return-void
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/webkit/WebViewClient;
    .locals 1
    .parameter

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aW:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 3859
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v0

    .line 3860
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aq:Z

    if-eqz v1, :cond_0

    .line 3861
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ar:Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3862
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3863
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 3864
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 3865
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3881
    :cond_0
    :goto_0
    return-void

    .line 3867
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 3868
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3870
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ar:Ljava/lang/String;

    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3871
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 3872
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 3873
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 3874
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3876
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 3877
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aN:Landroid/os/Message;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3952
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    if-eqz v0, :cond_0

    .line 3953
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eq v0, v1, :cond_0

    .line 3954
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3955
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->hide()V

    .line 3956
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0, v5}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 3959
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3977
    return-void

    .line 3959
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3960
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 3961
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a()[I

    move-result-object v3

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 3963
    :pswitch_0
    invoke-virtual {v1, v5}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 3964
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3968
    :pswitch_1
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->pause()V

    goto :goto_0

    .line 3961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ag:Z

    return v0
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aG:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ak:Z

    return v0
.end method

.method static synthetic m(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aO:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ai:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-object v0
.end method

.method static synthetic o(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/view/Display;
    .locals 1
    .parameter

    .prologue
    .line 997
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aI:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic p(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I
    .locals 1
    .parameter

    .prologue
    .line 1987
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aT:I

    return v0
.end method

.method static synthetic q(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I
    .locals 1
    .parameter

    .prologue
    .line 1988
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aU:I

    return v0
.end method

.method static synthetic r(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic s(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    return-object v0
.end method

.method static synthetic t(Lcom/inmobi/androidsdk/ai/container/IMWebView;)I
    .locals 1
    .parameter

    .prologue
    .line 1989
    iget v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aV:I

    return v0
.end method

.method static synthetic u(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method static synthetic v(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    .locals 1
    .parameter

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 2702
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2713
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2714
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2715
    :cond_1
    const-string v1, "Request must specify a valid URL"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    :goto_0
    return v0

    .line 2720
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    if-eqz v1, :cond_3

    .line 2721
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 2724
    :cond_3
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 2727
    if-nez v0, :cond_5

    .line 2728
    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-direct {v1, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 2733
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 2734
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    move-result-object v2

    .line 2735
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    .line 2734
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    .line 2736
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setPlayDimensions(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V

    .line 2740
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2741
    const/4 v0, 0x1

    goto :goto_0

    .line 2730
    :cond_5
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2747
    const/4 v1, 0x1

    .line 2749
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    if-eqz v2, :cond_0

    .line 2750
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2756
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    .line 2799
    :cond_1
    :goto_0
    return v0

    .line 2759
    :cond_2
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v2

    .line 2760
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2762
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    .line 2766
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2768
    :cond_3
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a()[I

    move-result-object v1

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/impl/Constants$playerState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2774
    :pswitch_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-direct {p0, v1, p4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V

    goto :goto_0

    .line 2770
    :pswitch_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->start()V

    goto :goto_0

    .line 2778
    :pswitch_3
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->doLoop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2779
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->start()V

    goto :goto_0

    .line 2787
    :cond_4
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2788
    const-string v1, "Request must specify a valid URL"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2791
    :cond_5
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 2792
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-direct {v0, p3, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    :cond_6
    move v0, v1

    .line 2799
    goto :goto_0

    .line 2768
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public adCreativeLocksOrientation(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1291
    iget-object v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    const-string v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1292
    if-nez p2, :cond_0

    .line 1294
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 1295
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1296
    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    .line 1309
    :goto_0
    return v0

    .line 1300
    :cond_0
    iget-object v2, p1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1301
    if-ne p2, v0, :cond_1

    .line 1303
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 1304
    invoke-virtual {v2, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1305
    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->useLockOrient:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1309
    goto :goto_0
.end method

.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2056
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2057
    return-void
.end method

.method declared-synchronized b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    .locals 2
    .parameter

    .prologue
    .line 2806
    monitor-enter p0

    const/4 v0, 0x0

    .line 2808
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    if-eqz v1, :cond_1

    .line 2809
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2811
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2817
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2812
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2813
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2806
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public changeContentAreaForInterstitials()V
    .locals 4

    .prologue
    .line 3667
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->g()V

    .line 3670
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3671
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3672
    const-string v2, "INTERSTITIAL_CUSTOM_CLOSE"

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getCustomClose()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3673
    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aq:Z

    if-eqz v2, :cond_1

    .line 3674
    const-string v2, "INTERSTITIAL_ORIENTATION"

    .line 3675
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ar:Ljava/lang/String;

    .line 3674
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    :goto_0
    const-string v2, "INTERSTTIAL_BACKGROUND_ID"

    const/16 v3, 0xe0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3681
    const-string v2, "INTERSTITIAL_CLOSE_ID"

    const/16 v3, 0xe1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3682
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3684
    invoke-static {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setIntWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    .line 3685
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3804
    :cond_0
    :goto_1
    return-void

    .line 3677
    :cond_1
    const-string v2, "INTERSTITIAL_ORIENTATION"

    .line 3678
    const-string v3, "notlock"

    .line 3677
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3793
    :catch_0
    move-exception v0

    .line 3794
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "Unable to find explicit activity class com.inmobi.androidsdk.IMBrowserActivity; have you declared this activity in your AndroidManifest.xml?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3797
    :catch_1
    move-exception v0

    .line 3798
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3799
    const-string v1, "InMobiAndroidSDK_3.5.4"

    .line 3800
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed showing interstitial ad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3799
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public clearView()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b()V

    .line 550
    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    .line 551
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2181
    return-void
.end method

.method protected closeOpened(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 2126
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2127
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2128
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestLayout()V

    .line 2129
    return-void
.end method

.method public closeVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3502
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3503
    if-nez v0, :cond_0

    .line 3504
    const-string v0, "Invalid property ID"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    :goto_0
    return-void

    .line 3506
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v1, v2, :cond_1

    .line 3507
    const-string v0, "Invalid player state"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3511
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3512
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v2, 0x3f6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3513
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3514
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public deinit()V
    .locals 2

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->am:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aK:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2068
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    .line 2070
    :cond_1
    return-void
.end method

.method public deregisterProtocol(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ad:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    return-void
.end method

.method public doHidePlayers()V
    .locals 2

    .prologue
    .line 3941
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3942
    return-void
.end method

.method public expand(Ljava/lang/String;Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2273
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setState(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    .line 2274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    .line 2276
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2278
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2280
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2282
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2286
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    .line 2288
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2289
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dimentions: {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2290
    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2291
    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2289
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget-boolean v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->lockOrientation:Z

    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ao:Z

    .line 2295
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2296
    return-void
.end method

.method public fireOnLeaveApplication()V
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->doHidePlayers()V

    .line 3946
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    .line 3947
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onLeaveApplication()Z

    .line 3948
    :cond_0
    return-void
.end method

.method public getAdUnit()Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 1

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ai:Lcom/inmobi/androidsdk/impl/AdUnit;

    return-object v0
.end method

.method public getAudioVolume(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 3234
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3236
    if-nez v0, :cond_0

    .line 3237
    const-string v0, "Invalid property ID"

    const-string v1, "getAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    const/4 v0, -0x1

    .line 3242
    :goto_0
    return v0

    .line 3240
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 2203
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2204
    const-string v1, "connectivity"

    .line 2203
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getCurrentRotation(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1950
    const-string v0, "-1"

    .line 1951
    packed-switch p1, :pswitch_data_0

    .line 1968
    :goto_0
    return-object v0

    .line 1953
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 1957
    :pswitch_1
    const-string v0, "90"

    goto :goto_0

    .line 1961
    :pswitch_2
    const-string v0, "180"

    goto :goto_0

    .line 1965
    :pswitch_3
    const-string v0, "270"

    goto :goto_0

    .line 1951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCustomClose()Z
    .locals 1

    .prologue
    .line 2258
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->al:Z

    return v0
.end method

.method public getExpandedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntegerCurrentRotation()I
    .locals 3

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    .line 1929
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1928
    check-cast v0, Landroid/view/WindowManager;

    .line 1929
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1932
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 1933
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1937
    :goto_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1938
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1939
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1937
    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getWhetherTablet(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1940
    add-int/lit8 v0, v0, 0x1

    .line 1941
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1942
    const/4 v0, 0x0

    .line 1944
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isTablet:Z

    .line 1946
    :cond_1
    return v0

    .line 1935
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2220
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 2221
    const-string v0, "interstitial"

    .line 2223
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2486
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->X:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2485
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable()Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    return-object v0
.end method

.method public getVideoVolume(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 3631
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3633
    if-nez v0, :cond_0

    .line 3634
    const-string v0, "Invalid property ID"

    const-string v1, "getVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    const/4 v0, -0x1

    .line 3639
    :goto_0
    return v0

    .line 3637
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getWhetherTablet(III)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1652
    if-le p2, p3, :cond_1

    .line 1653
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return v0

    .line 1656
    :cond_1
    if-ge p2, p3, :cond_2

    .line 1657
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 1660
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2188
    return-void
.end method

.method public hideVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3f7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3521
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3522
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3523
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3524
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3526
    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 438
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ag:Z

    if-eqz v0, :cond_1

    .line 439
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 440
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Injecting JavaScript: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 446
    :cond_1
    return-void
.end method

.method public isAudioMuted(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 3204
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3206
    if-nez v0, :cond_0

    .line 3207
    const-string v0, "Invalid property ID"

    const-string v1, "isAudioMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    const/4 v0, 0x0

    .line 3213
    :goto_0
    return v0

    .line 3210
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 2155
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ah:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageFinished()Z
    .locals 1

    .prologue
    .line 2476
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Z

    return v0
.end method

.method public isVideoMuted(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 3598
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3600
    if-nez v0, :cond_0

    .line 3601
    const-string v0, "Invalid property ID"

    const-string v1, "isVideoMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3602
    const/4 v0, 0x0

    .line 3607
    :goto_0
    return v0

    .line 3604
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isViewable()Z
    .locals 1

    .prologue
    .line 2216
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aM:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d()V

    .line 486
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public loadFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 500
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 503
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Exception loading file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d()V

    .line 468
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadUrl(Ljava/lang/String;ZLjava/lang/String;)V

    .line 458
    return-void
.end method

.method public loadUrl(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    if-nez p2, :cond_2

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->V:Z

    .line 630
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    .line 633
    const-string v1, "file:///android_asset/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    const-string v0, "file:///android_asset/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 636
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 640
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 651
    :cond_0
    :goto_1
    return-void

    .line 638
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 643
    :catch_1
    move-exception v0

    .line 649
    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public muteAudio(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3164
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3166
    if-nez v0, :cond_0

    .line 3167
    const-string v0, "Invalid property ID"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    :goto_0
    return-void

    .line 3169
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v0, v1, :cond_1

    .line 3170
    const-string v0, "Invalid player state"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3174
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3176
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3178
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3539
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3541
    if-nez v0, :cond_0

    .line 3542
    const-string v0, "Invalid property ID"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    :goto_0
    return-void

    .line 3544
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eq v1, v2, :cond_1

    .line 3545
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->INIT:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v1, v2, :cond_2

    .line 3546
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3550
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3551
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3552
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2498
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2499
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "IMWebView->onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aL:Z

    if-nez v0, :cond_1

    .line 2502
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2503
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Y:I

    .line 2504
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->Z:I

    .line 2505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aL:Z

    .line 2507
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2508
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2580
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2581
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "IMWebView->onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->stopAllListeners()V

    .line 2584
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2585
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ak:Z

    if-nez v0, :cond_1

    .line 2601
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->am:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aK:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2605
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 2606
    return-void

    .line 2602
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public openURL(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2303
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->doHidePlayers()V

    .line 2304
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2305
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2306
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2308
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2309
    return-void
.end method

.method public pageFinishedCallbackForAdCreativeTesting(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 2842
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aO:Landroid/os/Message;

    .line 2844
    return-void
.end method

.method public pauseAudio(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3142
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3144
    if-nez v0, :cond_1

    .line 3145
    const-string v0, "Invalid property ID"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    :cond_0
    :goto_0
    return-void

    .line 3147
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eq v1, v2, :cond_2

    .line 3148
    const-string v0, "Invalid player state"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3151
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3154
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3156
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3158
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public pauseVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3494
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3495
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3497
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3498
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3091
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3092
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 3094
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3091
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3104
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_1

    .line 3105
    const-string v0, "Cannot play audio.Ad is not in an expanded state"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    :goto_1
    return-void

    .line 3095
    :catch_0
    move-exception v0

    .line 3096
    :try_start_3
    sget-boolean v2, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3097
    const-string v2, "InMobiAndroidSDK_3.5.4"

    .line 3098
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mutex failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3097
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3091
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 3109
    :cond_1
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;-><init>()V

    .line 3111
    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3116
    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3119
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3120
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3121
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public playAudioImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 2959
    .line 2960
    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    .line 2962
    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2964
    if-nez v1, :cond_0

    .line 2965
    const-string v1, ""

    .line 2968
    :cond_0
    iget-object v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 2969
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    if-eqz v2, :cond_2

    .line 2970
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2971
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    .line 2973
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    iget-object v2, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2975
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2976
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2975
    check-cast v1, Landroid/widget/FrameLayout;

    .line 2977
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2978
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2981
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2982
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v3, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2984
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2985
    new-instance v3, Lcom/inmobi/androidsdk/ai/container/IMWebView$10;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$10;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2994
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2995
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2997
    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2995
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2998
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3000
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    .line 3001
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->requestFocus()Z

    .line 3002
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$11;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$11;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3026
    :goto_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setListener(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;)V

    .line 3064
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->play()V

    .line 3067
    :cond_2
    return-void

    .line 3021
    :cond_3
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3023
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3434
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3435
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 3437
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3434
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3449
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    sget-object v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq v1, v2, :cond_1

    .line 3450
    const-string v1, "Cannot play video.Ad is not in an expanded state"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    :goto_1
    return-void

    .line 3438
    :catch_0
    move-exception v1

    .line 3439
    :try_start_3
    sget-boolean v3, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3440
    const-string v3, "InMobiAndroidSDK_3.5.4"

    .line 3441
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mutex failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3440
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3434
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 3455
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3456
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 3457
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3458
    const-string v1, "Player Error. Exceeding permissible limit for saved play instances"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3462
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v2, 0x3ef

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 3464
    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;-><init>()V

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 3466
    invoke-virtual/range {v1 .. v8}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3469
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3470
    const-string v3, "expand_url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    const-string v3, "player_properties"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3474
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 3475
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Before validation dimension: ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3476
    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3475
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    :cond_3
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V

    .line 3479
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 3480
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "After validation dimension: ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3481
    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3480
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    :cond_4
    const-string v1, "expand_dimensions"

    move-object/from16 v0, p6

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3486
    invoke-virtual {v9, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3487
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method public playVideoImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3268
    .line 3269
    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    .line 3270
    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    .line 3271
    sget-boolean v2, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3272
    const-string v2, "InMobiAndroidSDK_3.5.4"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Final dimensions: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    :cond_0
    const-string v2, "expand_url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3276
    iget-object v3, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, p2, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3406
    :goto_0
    return-void

    .line 3280
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ah:Z

    .line 3282
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 3283
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    move-result-object v0

    .line 3284
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v1

    .line 3285
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-object v2, v0

    .line 3291
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 3292
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3291
    check-cast v0, Landroid/widget/FrameLayout;

    .line 3294
    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3296
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3299
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3300
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3302
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3303
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$2;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$2;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3310
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3311
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3313
    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3311
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3314
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 3316
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    .line 3317
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->requestFocus()Z

    .line 3319
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$3;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$3;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3361
    :goto_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    new-instance v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$4;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setListener(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;)V

    .line 3404
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->play()V

    goto :goto_0

    .line 3287
    :cond_2
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v3, v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V

    .line 3288
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setPlayDimensions(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V

    move-object v2, v0

    goto :goto_1

    .line 3339
    :cond_3
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 3340
    iget v5, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3339
    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3342
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3344
    iget-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    if-nez v3, :cond_4

    .line 3345
    iget v3, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    invoke-virtual {v2, v3, v1, v7, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 3353
    :goto_3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3355
    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3353
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3356
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setBackGroundLayout(Landroid/view/ViewGroup;)V

    .line 3358
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 3347
    :cond_4
    iget v3, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentX:I

    add-int/2addr v3, v4

    .line 3348
    iget v1, v1, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ap:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;

    iget v4, v4, Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;->currentY:I

    add-int/2addr v1, v4

    .line 3347
    invoke-virtual {v2, v3, v1, v7, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_3
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2563
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2564
    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2567
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2568
    return-void
.end method

.method public registerProtocol(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ad:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    return-void
.end method

.method public reinitializeExpandProperties()V
    .locals 1

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->W:Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->reinitializeExpandProperties()V

    .line 2061
    return-void
.end method

.method public releaseAllPlayers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2674
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    if-eqz v0, :cond_0

    .line 2675
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 2684
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->au:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 2685
    iput-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->as:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 2688
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 2694
    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 2695
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->av:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 2696
    iput-object v3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->at:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 2697
    return-void

    .line 2678
    :cond_1
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2679
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    sget-boolean v2, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2681
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2688
    :cond_2
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2689
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    sget-boolean v2, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2691
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public replaceByPlaceholder()V
    .locals 6

    .prologue
    .line 1068
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1071
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1072
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 1076
    :cond_0
    iput v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    .line 1077
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1078
    const/16 v3, 0x1b5

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1079
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getWidth()I

    move-result v4

    .line 1080
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getHeight()I

    move-result v5

    .line 1079
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1081
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1082
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1083
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aJ:Landroid/view/ViewGroup;

    .line 1089
    :cond_1
    :goto_1
    return-void

    .line 1073
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 1072
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1086
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in replaceByPlaceHolder"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestOnInterstitialClosed(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 2851
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aP:Landroid/os/Message;

    .line 2853
    return-void
.end method

.method public requestOnPageFinishedCallback(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 2836
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aN:Landroid/os/Message;

    .line 2838
    return-void
.end method

.method public requestOnSearchAdClicked(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 2856
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aS:Landroid/os/Message;

    .line 2857
    return-void
.end method

.method public resetContents(Landroid/app/Activity;)V
    .locals 6
    .parameter

    .prologue
    .line 2397
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_3

    .line 2398
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2399
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2398
    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, v0

    .line 2404
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 2405
    const/16 v1, 0x1b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2404
    check-cast v0, Landroid/widget/FrameLayout;

    .line 2407
    const/16 v1, 0x1b3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2406
    check-cast v1, Landroid/widget/FrameLayout;

    .line 2408
    const-string v2, "InMobiAndroidSDK_3.5.4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PlaceHolder ID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2409
    const-string v5, " Bg ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2408
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v2, :cond_0

    .line 2411
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->releaseAllPlayers()V

    .line 2413
    :cond_0
    if-eqz v1, :cond_1

    .line 2414
    iget-boolean v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v2, :cond_4

    .line 2415
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2416
    iget-object v4, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2417
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aj:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 2421
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2423
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->f()V

    .line 2424
    if-eqz v0, :cond_2

    .line 2425
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aJ:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2426
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aJ:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aa:I

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2428
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aJ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2441
    :goto_2
    return-void

    .line 2401
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2402
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2401
    check-cast v0, Landroid/widget/FrameLayout;

    move-object v3, v0

    goto :goto_0

    .line 2419
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2429
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2431
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2432
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2433
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2434
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2438
    :goto_3
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 2439
    const-string v2, "Exception while closing the expanded Ad"

    .line 2438
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2435
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 2
    .parameter

    .prologue
    .line 2529
    const-string v0, "AD_PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ac:Ljava/lang/String;

    .line 2531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2532
    const-string v1, "_mraid_current"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2533
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2535
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 2
    .parameter

    .prologue
    .line 2517
    const-string v0, "AD_PATH"

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ac:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    const/4 v0, 0x0

    return-object v0
.end method

.method public seekAudio(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3246
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3248
    if-nez v0, :cond_0

    .line 3249
    const-string v0, "Invalid property ID"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    :goto_0
    return-void

    .line 3251
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v1, v2, :cond_1

    .line 3252
    const-string v0, "Invalid player state"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3256
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3257
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3258
    const-string v3, "seekaudio"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3259
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3260
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3261
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public seekVideo(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3577
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3579
    if-nez v0, :cond_0

    .line 3580
    const-string v0, "Invalid property ID"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    :goto_0
    return-void

    .line 3582
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eq v1, v2, :cond_1

    .line 3583
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->INIT:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v1, v2, :cond_2

    .line 3584
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3588
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v2, 0x3fc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3589
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3590
    const-string v3, "seek"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3591
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3592
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3593
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 2860
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aQ:Landroid/app/Activity;

    .line 2861
    return-void
.end method

.method public setAdUnit(Lcom/inmobi/androidsdk/impl/AdUnit;)V
    .locals 0
    .parameter

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ai:Lcom/inmobi/androidsdk/impl/AdUnit;

    .line 2833
    return-void
.end method

.method public setAudioVolume(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3217
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3219
    if-nez v0, :cond_0

    .line 3220
    const-string v0, "Invalid property ID"

    const-string v1, "setAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    :goto_0
    return-void

    .line 3223
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3224
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3225
    const-string v2, "vol"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3226
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3228
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setCustomClose(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2229
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->al:Z

    .line 2230
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    .line 2233
    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2234
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2237
    :cond_0
    return-void
.end method

.method public setExpandPropertiesForInterstitial(ZZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3809
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setCustomClose(Z)V

    .line 3810
    iput-boolean p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aq:Z

    .line 3811
    iput-object p3, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ar:Ljava/lang/String;

    .line 3812
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ak:Z

    if-eqz v0, :cond_0

    .line 3813
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->h()V

    .line 3815
    :cond_0
    return-void
.end method

.method public setExpandedActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aR:Landroid/app/Activity;

    .line 1215
    return-void
.end method

.method public setExternalWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .parameter

    .prologue
    .line 3918
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aW:Landroid/webkit/WebViewClient;

    .line 3919
    return-void
.end method

.method public setState(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V
    .locals 2
    .parameter

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->ab:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    .line 2148
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-eq p1, v0, :cond_0

    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireStateChangeEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2149
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2152
    :cond_0
    return-void
.end method

.method public setVideoVolume(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3611
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3613
    if-nez v0, :cond_0

    .line 3614
    const-string v0, "Invalid property ID"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    :goto_0
    return-void

    .line 3616
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v1, v2, :cond_1

    .line 3617
    const-string v0, "Invalid player state"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3621
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v2, 0x3fb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3622
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3623
    const-string v3, "volume"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3624
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3625
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3626
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setViewable(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2208
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aM:Z

    .line 2211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireViewableChangeEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2212
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isViewable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2211
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 2213
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2195
    return-void
.end method

.method public showVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3531
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3532
    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3534
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3536
    return-void
.end method

.method public unMuteAudio(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3184
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3186
    if-nez v0, :cond_0

    .line 3187
    const-string v0, "Invalid property ID"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    :goto_0
    return-void

    .line 3189
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v0, v1, :cond_1

    .line 3190
    const-string v0, "Invalid player state"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3194
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v1, 0x3fe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3195
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3196
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3198
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public unMuteVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3558
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 3560
    if-nez v0, :cond_0

    .line 3561
    const-string v0, "Invalid property ID"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    :goto_0
    return-void

    .line 3563
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eq v1, v2, :cond_1

    .line 3564
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->INIT:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v1, v2, :cond_2

    .line 3565
    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3569
    :cond_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3570
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3571
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->aH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
