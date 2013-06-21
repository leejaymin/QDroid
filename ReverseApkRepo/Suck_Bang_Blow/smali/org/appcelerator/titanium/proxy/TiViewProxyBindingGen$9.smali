.class Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen$9;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "TiViewProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 491
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen$9;->this$0:Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;

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
    const/4 v5, 0x0

    const/4 v7, 0x1

    const-class v8, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 495
    const-string v4, "animate"

    invoke-static {p2, v7, v4}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 496
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "arg"

    invoke-direct {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, __arg_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v5}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 500
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v5

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v4, p1, v5, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 502
    .local v2, arg:Ljava/lang/Object;
    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 504
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "callback"

    invoke-direct {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 506
    .local v1, __callback_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 507
    array-length v4, p2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 509
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v7

    const-class v6, Lorg/appcelerator/titanium/kroll/KrollCallback;

    invoke-virtual {v4, p1, v5, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 516
    .local v3, callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :goto_0
    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 522
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->animate(Ljava/lang/Object;Lorg/appcelerator/titanium/kroll/KrollCallback;)V

    .line 526
    sget-object v4, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v4

    .line 512
    .end local v3           #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    .restart local p0
    :cond_0
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 513
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    const-class v5, Lorg/appcelerator/titanium/kroll/KrollCallback;

    invoke-virtual {v4, v8}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .restart local v3       #callback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    goto :goto_0
.end method
