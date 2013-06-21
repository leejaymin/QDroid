.class Lti/modules/titanium/ui/TableViewProxyBindingGen$11;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "TableViewProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TableViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TableViewProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 463
    iput-object p1, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen$11;->this$0:Lti/modules/titanium/ui/TableViewProxyBindingGen;

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
    const/4 v6, 0x0

    const/4 v8, 0x1

    const-class v9, Lorg/appcelerator/kroll/KrollDict;

    .line 467
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v5, "data"

    invoke-direct {v1, v5}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 469
    .local v1, __data_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 471
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    aget-object v6, p2, v6

    const-class v7, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6, v7}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 473
    .local v3, data:[Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 474
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 475
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v5, "options"

    invoke-direct {v2, v5}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 477
    .local v2, __options_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v8}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 478
    array-length v5, p2

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 480
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    aget-object v6, p2, v8

    const-class v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v5, p1, v6, v9}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .line 487
    .local v4, options:Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    invoke-virtual {v2, v4}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 493
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/ui/TableViewProxy;->setData([Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V

    .line 497
    sget-object v5, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v5

    .line 483
    .end local v4           #options:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    invoke-virtual {v2, v8}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 484
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    const-class v6, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v5, v9}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .restart local v4       #options:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0
.end method
