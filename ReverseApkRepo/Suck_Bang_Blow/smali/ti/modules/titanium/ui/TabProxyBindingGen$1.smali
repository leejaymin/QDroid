.class Lti/modules/titanium/ui/TabProxyBindingGen$1;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "TabProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/TabProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/TabProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/TabProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 70
    iput-object p1, p0, Lti/modules/titanium/ui/TabProxyBindingGen$1;->this$0:Lti/modules/titanium/ui/TabProxyBindingGen;

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

    const-class v8, Lorg/appcelerator/kroll/KrollDict;

    .line 74
    const-string v4, "open"

    invoke-static {p2, v7, v4}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 75
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "win"

    invoke-direct {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, __win_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 79
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v5

    const-class v6, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v4, p1, v5, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 81
    .local v3, win:Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 83
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "options"

    invoke-direct {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, __options_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 86
    array-length v4, p2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 88
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v7

    const-class v6, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v4, p1, v5, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollDict;

    .line 95
    .local v2, options:Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 101
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {p0, v3, v2}, Lti/modules/titanium/ui/TabProxy;->open(Lorg/appcelerator/titanium/proxy/TiWindowProxy;Lorg/appcelerator/kroll/KrollDict;)V

    .line 105
    sget-object v4, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v4

    .line 91
    .end local v2           #options:Lorg/appcelerator/kroll/KrollDict;
    .restart local p0
    :cond_0
    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollArgument;->setValueDefault(Z)V

    .line 92
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    const-class v5, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {v4, v8}, Lorg/appcelerator/kroll/KrollConverter;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/kroll/KrollDict;

    .restart local v2       #options:Lorg/appcelerator/kroll/KrollDict;
    goto :goto_0
.end method
