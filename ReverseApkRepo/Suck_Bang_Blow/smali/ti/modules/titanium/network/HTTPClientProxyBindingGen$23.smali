.class Lti/modules/titanium/network/HTTPClientProxyBindingGen$23;
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
    .line 731
    iput-object p1, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen$23;->this$0:Lti/modules/titanium/network/HTTPClientProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    .line 735
    const/4 v4, 0x2

    const-string v5, "open"

    invoke-static {p2, v4, v5}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 736
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "method"

    invoke-direct {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 738
    .local v0, __method_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 740
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v7

    const-class v6, Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 742
    .local v2, method:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 743
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 744
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "url"

    invoke-direct {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 746
    .local v1, __url_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 748
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p2, v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 750
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 751
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 756
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/network/HTTPClientProxy;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    sget-object v4, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v4
.end method
