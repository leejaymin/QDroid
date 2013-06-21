.class Lti/modules/titanium/android/RemoteViewsProxyBindingGen$12;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "RemoteViewsProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/android/RemoteViewsProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/android/RemoteViewsProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/android/RemoteViewsProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 553
    iput-object p1, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$12;->this$0:Lti/modules/titanium/android/RemoteViewsProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const-class v12, Ljava/lang/Integer;

    .line 557
    const/4 v8, 0x4

    const-string v9, "setProgressBar"

    invoke-static {p2, v8, v9}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 558
    new-instance v3, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "viewId"

    invoke-direct {v3, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 560
    .local v3, __viewId_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v3, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 562
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    aget-object v9, p2, v11

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v8, p1, v9, v12}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 564
    .local v7, viewId:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 566
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "max"

    invoke-direct {v1, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 568
    .local v1, __max_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 570
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v8, p1, v9, v12}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 572
    .local v5, max:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 574
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "progress"

    invoke-direct {v2, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 576
    .local v2, __progress_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 578
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/Integer;

    invoke-virtual {v8, p1, v9, v12}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 580
    .local v6, progress:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 581
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 582
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "indeterminate"

    invoke-direct {v0, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, __indeterminate_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 586
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/Boolean;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 588
    .local v4, indeterminate:Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 589
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 594
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lti/modules/titanium/android/RemoteViewsProxy;

    invoke-virtual {p0, v7, v5, v6, v4}, Lti/modules/titanium/android/RemoteViewsProxy;->setProgressBar(IIIZ)V

    .line 600
    sget-object v8, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v8
.end method
