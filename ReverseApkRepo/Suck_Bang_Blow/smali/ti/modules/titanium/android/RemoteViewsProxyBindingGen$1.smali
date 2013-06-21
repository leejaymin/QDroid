.class Lti/modules/titanium/android/RemoteViewsProxyBindingGen$1;
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
    .line 90
    iput-object p1, p0, Lti/modules/titanium/android/RemoteViewsProxyBindingGen$1;->this$0:Lti/modules/titanium/android/RemoteViewsProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 94
    const/4 v7, 0x3

    const-string v8, "setDouble"

    invoke-static {p2, v7, v8}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 95
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v7, "viewId"

    invoke-direct {v2, v7}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, __viewId_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v10}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 99
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    aget-object v8, p2, v10

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v7, p1, v8, v9}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 101
    .local v6, viewId:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 103
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v7, "methodName"

    invoke-direct {v0, v7}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, __methodName_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v10}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 107
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, p2, v8

    const-class v9, Ljava/lang/String;

    invoke-virtual {v7, p1, v8, v9}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, methodName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 111
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v7, "value"

    invoke-direct {v1, v7}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, __value_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v10}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 115
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, p2, v8

    const-class v9, Ljava/lang/Double;

    invoke-virtual {v7, p1, v8, v9}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 117
    .local v4, value:D
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 123
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lti/modules/titanium/android/RemoteViewsProxy;

    invoke-virtual {p0, v6, v3, v4, v5}, Lti/modules/titanium/android/RemoteViewsProxy;->setDouble(ILjava/lang/String;D)V

    .line 128
    sget-object v7, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v7
.end method
