.class Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$11;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "IntentProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 420
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$11;->this$0:Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;

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

    .line 424
    const/4 v6, 0x2

    const-string v7, "getBooleanExtra"

    invoke-static {p2, v6, v7}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 425
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    .line 426
    .local v1, __getBooleanExtra_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "name"

    invoke-direct {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 428
    .local v2, __name_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 430
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    aget-object v7, p2, v9

    const-class v8, Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 432
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 434
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "defaultValue"

    invoke-direct {v0, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, __defaultValue_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 438
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, p2, v7

    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 440
    .local v4, defaultValue:Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 441
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 444
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {p0, v5, v4}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 451
    .local v3, __retVal:Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6
.end method