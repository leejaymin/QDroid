.class Lti/modules/titanium/ui/WindowProxyBindingGen$1;
.super Lorg/appcelerator/kroll/KrollDynamicProperty;
.source "WindowProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/WindowProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/WindowProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/WindowProxyBindingGen;Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    iput-object p1, p0, Lti/modules/titanium/ui/WindowProxyBindingGen$1;->this$0:Lti/modules/titanium/ui/WindowProxyBindingGen;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/appcelerator/kroll/KrollDynamicProperty;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;
    .locals 2
    .parameter "__invocation"

    .prologue
    .line 83
    const-string v0, "WindowProxyBindingGen"

    const-string v1, "Property Window.leftNavButton isn\'t readable"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v0
.end method

.method public dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V
    .locals 4
    .parameter "__invocation"
    .parameter "__value"

    .prologue
    .line 90
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v2, "button"

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, __button_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 94
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    const-class v3, Lti/modules/titanium/ui/ButtonProxy;

    invoke-virtual {v2, p1, p2, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/ButtonProxy;

    .line 96
    .local v1, button:Lti/modules/titanium/ui/ButtonProxy;
    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 102
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/WindowProxy;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WindowProxy;->setLeftNavButton(Lti/modules/titanium/ui/ButtonProxy;)V

    .line 105
    return-void
.end method
