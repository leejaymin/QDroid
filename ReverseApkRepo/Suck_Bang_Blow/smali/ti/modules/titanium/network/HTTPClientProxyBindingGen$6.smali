.class Lti/modules/titanium/network/HTTPClientProxyBindingGen$6;
.super Lorg/appcelerator/kroll/KrollDynamicProperty;
.source "HTTPClientProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/network/HTTPClientProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/network/HTTPClientProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 287
    iput-object p1, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen$6;->this$0:Lti/modules/titanium/network/HTTPClientProxyBindingGen;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/appcelerator/kroll/KrollDynamicProperty;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;
    .locals 3
    .parameter "__invocation"

    .prologue
    .line 292
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 295
    .local v0, __getConnected_converter:Lorg/appcelerator/kroll/KrollConverter;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {p0}, Lti/modules/titanium/network/HTTPClientProxy;->getConnected()Z

    move-result v1

    .line 300
    .local v1, __retVal:Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V
    .locals 2
    .parameter "__invocation"
    .parameter "__value"

    .prologue
    .line 305
    const-string v0, "HTTPClientProxyBindingGen"

    const-string v1, "Property HTTPClient.connected isn\'t writable"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method