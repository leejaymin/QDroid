.class Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$3;
.super Lorg/appcelerator/kroll/KrollDynamicProperty;
.source "MenuItemProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 196
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen$3;->this$0:Lorg/appcelerator/titanium/proxy/MenuItemProxyBindingGen;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/appcelerator/kroll/KrollDynamicProperty;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;
    .locals 2
    .parameter "__invocation"

    .prologue
    .line 200
    const-string v0, "MenuItemProxyBindingGen"

    const-string v1, "Property MenuItem.enabled isn\'t readable"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v0
.end method

.method public dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V
    .locals 4
    .parameter "__invocation"
    .parameter "__value"

    .prologue
    .line 207
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v2, "enabled"

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, __enabled_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 211
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v2, p1, p2, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 213
    .local v1, enabled:Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 219
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setEnabled(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 222
    return-void
.end method
