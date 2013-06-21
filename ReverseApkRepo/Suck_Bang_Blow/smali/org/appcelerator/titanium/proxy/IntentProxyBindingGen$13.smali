.class Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$13;
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
    .line 487
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$13;->this$0:Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 491
    const/4 v8, 0x2

    const-string v9, "getDoubleExtra"

    invoke-static {p2, v8, v9}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 492
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    .line 493
    .local v1, __getDoubleExtra_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "name"

    invoke-direct {v2, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 495
    .local v2, __name_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 497
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    aget-object v9, p2, v11

    const-class v10, Ljava/lang/String;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 499
    .local v7, name:Ljava/lang/String;
    invoke-virtual {v2, v7}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 501
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "defaultValue"

    invoke-direct {v0, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, __defaultValue_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 505
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/Double;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 507
    .local v5, defaultValue:D
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 508
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 511
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {p0, v7, v5, v6}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    .line 518
    .local v3, __retVal:D
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v1, p1, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8
.end method
