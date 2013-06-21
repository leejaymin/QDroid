.class public Lti/modules/titanium/ui/SwitchProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "SwitchProxy.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter "tiContext"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 24
    const-string v0, "value"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/SwitchProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    const-string v0, "style"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/SwitchProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 31
    new-instance v0, Lti/modules/titanium/ui/widget/TiUISwitch;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUISwitch;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method
