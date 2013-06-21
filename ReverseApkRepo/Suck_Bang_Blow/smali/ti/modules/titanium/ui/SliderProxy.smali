.class public Lti/modules/titanium/ui/SliderProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "SliderProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 23
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 28
    new-instance v0, Lti/modules/titanium/ui/widget/TiUISlider;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUISlider;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method
