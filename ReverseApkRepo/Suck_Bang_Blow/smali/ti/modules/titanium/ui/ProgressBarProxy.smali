.class public Lti/modules/titanium/ui/ProgressBarProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ProgressBarProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 22
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 26
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIProgressBar;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIProgressBar;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method
