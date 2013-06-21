.class Lti/modules/titanium/ui/TableViewProxyBindingGen$12;
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
    .line 505
    iput-object p1, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen$12;->this$0:Lti/modules/titanium/ui/TableViewProxyBindingGen;

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
    .line 509
    const/4 v6, 0x2

    const-string v7, "updateRow"

    invoke-static {p2, v6, v7}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 510
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "row"

    invoke-direct {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 512
    .local v2, __row_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 514
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p2, v7

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 516
    .local v5, row:Ljava/lang/Object;
    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 518
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "data"

    invoke-direct {v0, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, __data_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 522
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, p2, v7

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 524
    .local v3, data:Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 525
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 526
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "options"

    invoke-direct {v1, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, __options_argument:Lorg/appcelerator/kroll/KrollArgument;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 529
    array-length v6, p2

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 531
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, p2, v7

    const-class v8, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .line 538
    .local v4, options:Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 539
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 544
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {p0, v5, v3, v4}, Lti/modules/titanium/ui/TableViewProxy;->updateRow(Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;)V

    .line 549
    sget-object v6, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v6

    .line 534
    .end local v4           #options:Lorg/appcelerator/kroll/KrollDict;
    .restart local p0
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 535
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const-class v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v6, v7}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/kroll/KrollDict;

    .restart local v4       #options:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0
.end method
