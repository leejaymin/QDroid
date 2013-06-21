.class public Lti/modules/titanium/ui/TextFieldProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TextFieldProxy.java"


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
    .locals 2
    .parameter "activity"

    .prologue
    .line 28
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIText;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIText;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    return-object v0
.end method
