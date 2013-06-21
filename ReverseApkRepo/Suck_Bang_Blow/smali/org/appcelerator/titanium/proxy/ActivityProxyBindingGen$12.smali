.class Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$12;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "ActivityProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 454
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen$12;->this$0:Lorg/appcelerator/titanium/proxy/ActivityProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 458
    const/4 v6, 0x3

    const-string v7, "startActivityFromChild"

    invoke-static {p2, v6, v7}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 459
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "child"

    invoke-direct {v0, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, __child_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 463
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    aget-object v7, p2, v9

    const-class v8, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 465
    .local v3, child:Lorg/appcelerator/titanium/proxy/ActivityProxy;
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 466
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 467
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "intent"

    invoke-direct {v1, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, __intent_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 471
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, p2, v7

    const-class v8, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 473
    .local v4, intent:Lorg/appcelerator/titanium/proxy/IntentProxy;
    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 474
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 475
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "requestCode"

    invoke-direct {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 477
    .local v2, __requestCode_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 479
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, p2, v7

    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 481
    .local v5, requestCode:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 482
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 487
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {p0, p1, v3, v4, v5}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->startActivityFromChild(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/proxy/ActivityProxy;Lorg/appcelerator/titanium/proxy/IntentProxy;I)V

    .line 494
    sget-object v6, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v6
.end method
