.class Lti/modules/titanium/network/HTTPClientProxyBindingGen$26;
.super Lorg/appcelerator/kroll/KrollMethod;
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
.method constructor <init>(Lti/modules/titanium/network/HTTPClientProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 825
    iput-object p1, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen$26;->this$0:Lti/modules/titanium/network/HTTPClientProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 829
    const/4 v4, 0x1

    const-string v5, "getResponseHeader"

    invoke-static {p2, v4, v5}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 830
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 831
    .local v0, __getResponseHeader_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "header"

    invoke-direct {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 833
    .local v1, __header_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 835
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v6

    const-class v6, Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 837
    .local v3, header:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 838
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 841
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {p0, v3}, Lti/modules/titanium/network/HTTPClientProxy;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, __retVal:Ljava/lang/String;
    invoke-virtual {v0, p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method