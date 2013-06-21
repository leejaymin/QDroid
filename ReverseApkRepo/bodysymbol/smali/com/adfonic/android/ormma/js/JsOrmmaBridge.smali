.class public Lcom/adfonic/android/ormma/js/JsOrmmaBridge;
.super Ljava/lang/Object;
.source "JsOrmmaBridge.java"

# interfaces
.implements Lcom/adfonic/android/ormma/OrmmaBridge;


# static fields
.field private static final CURRENT_CERTIFIED_VERSION:Ljava/lang/String; = "1.1.0"

.field private static SUPPORTED_METHODS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

.field private view:Lcom/adfonic/android/ormma/OrmmaView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    .line 21
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "screen"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "orientation"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "heading"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "location"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "shake"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "tilt"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "network"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "sms"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "phone"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "email"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "calendar"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "camera"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "level-1"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    const-string v1, "level-2"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/adfonic/android/ormma/OrmmaView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    .line 42
    invoke-direct {p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->injectJsFiles()V

    .line 43
    new-instance v0, Lcom/adfonic/android/ormma/js/StateMachine;

    invoke-direct {v0}, Lcom/adfonic/android/ormma/js/StateMachine;-><init>()V

    iput-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    .line 44
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    new-instance v1, Lcom/adfonic/android/ormma/js/JsOrmmaBridge$1;

    invoke-direct {v1, p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge$1;-><init>(Lcom/adfonic/android/ormma/js/JsOrmmaBridge;)V

    invoke-virtual {v0, v1}, Lcom/adfonic/android/ormma/js/StateMachine;->setStateChangeListener(Lcom/adfonic/android/ormma/js/StateMachine$StateChangeListener;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/adfonic/android/ormma/js/JsOrmmaBridge;Lcom/adfonic/android/ormma/js/StateMachine$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->fireStateChangeEvent(Lcom/adfonic/android/ormma/js/StateMachine$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adfonic/android/ormma/js/JsOrmmaBridge;)Lcom/adfonic/android/ormma/OrmmaView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    return-object v0
.end method

.method private fireSizeChangeEvent()V
    .locals 3

    .prologue
    .line 187
    iget-object v2, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v2}, Lcom/adfonic/android/ormma/OrmmaView;->getHeight()I

    move-result v0

    .line 188
    .local v0, height:I
    iget-object v2, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v2}, Lcom/adfonic/android/ormma/OrmmaView;->getWidth()I

    move-result v1

    .line 189
    .local v1, width:I
    invoke-direct {p0, v1, v0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->fireSizeChangeEvent(II)V

    .line 190
    return-void
.end method

.method private fireSizeChangeEvent(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.ormma.fireSizeChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adfonic/android/ormma/OrmmaView;->injectJavaScript(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private fireStateChangeEvent(Lcom/adfonic/android/ormma/js/StateMachine$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.ormma.fireStateChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adfonic/android/ormma/js/StateMachine$State;->getJavascriptName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adfonic/android/ormma/OrmmaView;->injectJavaScript(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private injectJsFiles()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    const-string v1, "(function() {var ormma = window.ormma = {};var listeners = {};ormma.fireErrorEvent = function(message, action) {  var handlers = listeners[\'error\'];  if (handlers != null) {    for ( var i = 0; i < handlers.length; i++) {      handlers[i](message, action);    }  }  return;};ormma.fireKeyboardChangeEvent = function(open) {\tvar handlers = listeners[\'keyboardChange\'];\tif (handlers != null) {\t\tfor ( var i = 0; i < handlers.length; i++) {\t\t\thandlers[i](open);\t\t}\t}\treturn;};ormma.fireReadyEvent = function() {  var handlers = listeners[\'ready\'];  if (handlers != null) {    for ( var i = 0; i < handlers.length; i++) {      handlers[i]();    }  }  return;};ormma.fireStateChangeEvent = function(state) {  var handlers = listeners[\'stateChange\'];  if (handlers != null) {    for ( var i = 0; i < handlers.length; i++) {      handlers[i](state);    }  }  return;};ormma.fireSizeChangeEvent = function(width, height) {  var handlers = listeners[\'sizeChange\'];  if (handlers != null) {    for ( var i = 0; i < handlers.length; i++) {      handlers[i](width, height);    }  }  return;};ormma.fireViewableChangeEvent = function(onscreen) {  var handlers = listeners[\'viewableChange\'];  if (handlers != null) {    for ( var i = 0; i < handlers.length; i++) {      handlers[i](onscreen);    }  }  return;};ormma.addEventListener = function(event, listener) {  var handlers = listeners[event];  if (handlers == null) {    listeners[event] = [];    handlers = listeners[event];  }  for ( var handler in handlers) {    if (listener == handler) {      return;    }  }  handlers.push(listener);};ormma.removeEventListener = function(event, listener) {  var handlers = listeners[event];  if (handlers != null) {    handlers.remove(listener);  }};ormma.removeEventListener = function(event, listener) {  var handlers = listeners[event];  if (handlers == null) {    return;  }  if(listener == null) {    handlers.splice(0, handlers.length);    return;  }  var index = 0;  while (index < handlers.length) {    if(listener == handlers[index]) {      handlers.splice(index, 1);    }    index++;  }};ormma.close = function() {  window.AdfonicOrmmaBridge.close();};ormma.getState = function() {  return window.AdfonicOrmmaBridge.getState();};ormma.supports = function(feature) {  return window.AdfonicOrmmaBridge.supports(feature);};ormma.getVersion = function() {  return window.AdfonicOrmmaBridge.getVersion();};ormma.isViewable = function() {  return window.AdfonicOrmmaBridge.isViewable();};ormma.hide = function() {  window.AdfonicOrmmaBridge.hide();};ormma.open = function(url) {  window.AdfonicOrmmaBridge.open(url);};ormma.getPlacementType = function() {  return window.AdfonicOrmmaBridge.getPlacementType();};ormma.getSize = function() {  return window.AdfonicOrmmaBridge.getSize();};ormma.getDefaultPosition = function() {  return window.AdfonicOrmmaBridge.getDefaultPosition();};ormma.getMaxSize = function() {  return window.AdfonicOrmmaBridge.getMaxSize();};ormma.useCustomClose = function(useCustomClose) {  window.AdfonicOrmmaBridge.useCustomClose(useCustomClose);};ormma.ready = function() {  window.AdfonicOrmmaBridge.ready();};ormma.resize = function(width, height) {  window.AdfonicOrmmaBridge.resize(width, height);};ormma.expand = function(url) {  window.AdfonicOrmmaBridge.expand(url);};ormma.show = function() {  window.AdfonicOrmmaBridge.show();};ormma.getExpandProperties = function() {  return window.AdfonicOrmmaBridge.getExpandProperties();};ormma.setExpandProperties = function(json) {  window.AdfonicOrmmaBridge.setExpandProperties(json);};ormma.ORMMAReady = function() {};ormma.getViewable = function() {};})();"

    invoke-interface {v0, v1}, Lcom/adfonic/android/ormma/OrmmaView;->injectJavaScript(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    const-string v1, "(function() {var mraid = window.mraid = {};mraid.addEventListener = function(event, listener) {\tormma.addEventListener(event, listener);};mraid.removeEventListener = function(event, listener) {\tormma.removeEventListener(event, listener);};mraid.close = function() {\tormma.close();};mraid.getState = function() {\treturn ormma.getState();};mraid.getVersion = function() {\treturn ormma.getVersion();};mraid.isViewable = function() {\treturn ormma.isViewable();};mraid.open = function(url) {\tormma.open(url);};mraid.expand = function(url) {\tormma.expand(url);};mraid.getPlacementType = function() {\treturn ormma.getPlacementType();};mraid.useCustomClose = function() {\tormma.useCustomClose();};mraid.getExpandProperties = function() {\treturn ormma.getExpandProperties();};mraid.setExpandProperties = function(json) {\treturn ormma.getExpandProperties(json);};})();"

    invoke-interface {v0, v1}, Lcom/adfonic/android/ormma/OrmmaView;->injectJavaScript(Ljava/lang/String;)V

    .line 203
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine;->close()V

    .line 95
    invoke-direct {p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->fireSizeChangeEvent()V

    .line 96
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .parameter "action"

    .prologue
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.ormma.fireErrorEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, inject:Ljava/lang/String;
    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1, v0}, Lcom/adfonic/android/ormma/OrmmaView;->injectJavaScript(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v0, p1}, Lcom/adfonic/android/ormma/OrmmaView;->expand(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine;->expand()V

    .line 106
    invoke-direct {p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->fireSizeChangeEvent()V

    .line 107
    return-void
.end method

.method public getDefaultPosition()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getDefaultX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getDefaultY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getDefaultWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getDefaultHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpandProperties()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getExpandProperties()Lcom/adfonic/android/ormma/ExpandProperties;

    move-result-object v0

    .line 151
    .local v0, ep:Lcom/adfonic/android/ormma/ExpandProperties;
    invoke-virtual {v0}, Lcom/adfonic/android/ormma/ExpandProperties;->toJson()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v0}, Lcom/adfonic/android/ormma/OrmmaView;->getPlacementType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine;->getState()Lcom/adfonic/android/ormma/js/StateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->getJavascriptName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "1.1.0"

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->close()V

    .line 113
    return-void
.end method

.method public isViewable()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v0}, Lcom/adfonic/android/ormma/OrmmaView;->isViewable()Z

    move-result v0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 3
    .parameter "open"

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.ormma.fireKeyboardChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, inject:Ljava/lang/String;
    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1, v0}, Lcom/adfonic/android/ormma/OrmmaView;->injectJavaScript(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onSizeChange(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->fireSizeChangeEvent()V

    .line 88
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v0, p1}, Lcom/adfonic/android/ormma/OrmmaView;->open(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public ready()V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    invoke-virtual {v1}, Lcom/adfonic/android/ormma/js/StateMachine;->ready()V

    .line 62
    const-string v0, "window.ormma.fireReadyEvent()"

    .line 63
    .local v0, inject:Ljava/lang/String;
    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1, v0}, Lcom/adfonic/android/ormma/OrmmaView;->injectJavaScript(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine;->getState()Lcom/adfonic/android/ormma/js/StateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine;->getState()Lcom/adfonic/android/ormma/js/StateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine$State;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->close()V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine;->resize()V

    .line 100
    invoke-direct {p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->fireSizeChangeEvent()V

    .line 101
    return-void
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 2
    .parameter "properties"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    new-instance v1, Lcom/adfonic/android/ormma/ExpandProperties;

    invoke-direct {v1, p1}, Lcom/adfonic/android/ormma/ExpandProperties;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/adfonic/android/ormma/OrmmaView;->setExpandProperties(Lcom/adfonic/android/ormma/ExpandProperties;)V

    .line 147
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->stateMachine:Lcom/adfonic/android/ormma/js/StateMachine;

    invoke-virtual {v0}, Lcom/adfonic/android/ormma/js/StateMachine;->show()V

    .line 117
    invoke-direct {p0}, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->fireSizeChangeEvent()V

    .line 118
    return-void
.end method

.method public supports(Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"

    .prologue
    .line 165
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->SUPPORTED_METHODS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public useCustomClose(Z)V
    .locals 2
    .parameter "useCustomClose"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1}, Lcom/adfonic/android/ormma/OrmmaView;->getExpandProperties()Lcom/adfonic/android/ormma/ExpandProperties;

    move-result-object v0

    .line 160
    .local v0, ep:Lcom/adfonic/android/ormma/ExpandProperties;
    invoke-virtual {v0, p1}, Lcom/adfonic/android/ormma/ExpandProperties;->setUseCustomClose(Z)V

    .line 161
    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1, v0}, Lcom/adfonic/android/ormma/OrmmaView;->setExpandProperties(Lcom/adfonic/android/ormma/ExpandProperties;)V

    .line 162
    return-void
.end method

.method public viewableChange(Z)V
    .locals 3
    .parameter "onScreen"

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.ormma.fireViewableChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, inject:Ljava/lang/String;
    iget-object v1, p0, Lcom/adfonic/android/ormma/js/JsOrmmaBridge;->view:Lcom/adfonic/android/ormma/OrmmaView;

    invoke-interface {v1, v0}, Lcom/adfonic/android/ormma/OrmmaView;->injectJavaScript(Ljava/lang/String;)V

    .line 83
    return-void
.end method
