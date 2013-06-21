.class Lti/modules/titanium/network/HTTPClientProxyBindingGen$17;
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
    .line 598
    iput-object p1, p0, Lti/modules/titanium/network/HTTPClientProxyBindingGen$17;->this$0:Lti/modules/titanium/network/HTTPClientProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-class v5, Ljava/lang/Object;

    .line 602
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v2, "data"

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, __data_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 605
    array-length v2, p2

    if-lt v2, v3, :cond_0

    .line 607
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {v2, p1, v3, v5}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 614
    .local v1, data:Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 615
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 620
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {p0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->send(Ljava/lang/Object;)V

    .line 623
    sget-object v2, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v2

    .line 610
    .end local v1           #data:Ljava/lang/Object;
    .restart local p0
    :cond_0
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 611
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #data:Ljava/lang/Object;
    goto :goto_0
.end method
