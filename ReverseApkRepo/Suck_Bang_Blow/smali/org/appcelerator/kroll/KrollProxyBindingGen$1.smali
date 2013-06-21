.class Lorg/appcelerator/kroll/KrollProxyBindingGen$1;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "KrollProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/kroll/KrollProxyBindingGen;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/KrollProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 78
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollProxyBindingGen$1;->this$0:Lorg/appcelerator/kroll/KrollProxyBindingGen;

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

    .line 82
    const/4 v8, 0x4

    const-string v9, "fireSingleEvent"

    invoke-static {p2, v8, v9}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 83
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "eventName"

    invoke-direct {v2, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, __eventName_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 87
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    aget-object v9, p2, v11

    const-class v10, Ljava/lang/String;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 89
    .local v6, eventName:Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 91
    new-instance v3, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "listener"

    invoke-direct {v3, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, __listener_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v3, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 95
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/Object;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .line 97
    .local v7, listener:Ljava/lang/Object;
    invoke-virtual {v3, v7}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 99
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "data"

    invoke-direct {v1, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, __data_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 103
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, p2, v9

    const-class v10, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/kroll/KrollDict;

    .line 105
    .local v5, data:Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 107
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "asyncCallback"

    invoke-direct {v0, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, __asyncCallback_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 111
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/Boolean;

    invoke-virtual {v8, p1, v9, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 113
    .local v4, asyncCallback:Z
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 119
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v5, v4}, Lorg/appcelerator/kroll/KrollProxy;->fireSingleEvent(Ljava/lang/String;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollDict;Z)V

    .line 125
    sget-object v8, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v8
.end method
