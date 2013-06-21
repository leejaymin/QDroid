.class public Lcom/adfonic/android/ormma/js/MraidJs;
.super Ljava/lang/Object;
.source "MraidJs.java"


# static fields
.field public static final MRAID_JS:Ljava/lang/String; = "(function() {var mraid = window.mraid = {};mraid.addEventListener = function(event, listener) {\tormma.addEventListener(event, listener);};mraid.removeEventListener = function(event, listener) {\tormma.removeEventListener(event, listener);};mraid.close = function() {\tormma.close();};mraid.getState = function() {\treturn ormma.getState();};mraid.getVersion = function() {\treturn ormma.getVersion();};mraid.isViewable = function() {\treturn ormma.isViewable();};mraid.open = function(url) {\tormma.open(url);};mraid.expand = function(url) {\tormma.expand(url);};mraid.getPlacementType = function() {\treturn ormma.getPlacementType();};mraid.useCustomClose = function() {\tormma.useCustomClose();};mraid.getExpandProperties = function() {\treturn ormma.getExpandProperties();};mraid.setExpandProperties = function(json) {\treturn ormma.getExpandProperties(json);};})();"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
