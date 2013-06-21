.class public Lti/modules/titanium/ui/AnimationProxy;
.super Lorg/appcelerator/titanium/view/TiAnimation;
.source "AnimationProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiAnimation;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 18
    return-void
.end method


# virtual methods
.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "dict"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiAnimation;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 25
    const-string v0, "transform"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/AnimationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
