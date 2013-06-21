.class public Lti/modules/titanium/ui/iphone/GroupedViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "GroupedViewProxy.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "GroupedViewProxy"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 24
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideStatusBar()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "GroupedViewProxy"

    const-string v1, "hideStatusBar not valid on Android"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public showStatusBar()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "GroupedViewProxy"

    const-string v1, "showStatusBar not valid on Android"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
