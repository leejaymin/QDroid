.class Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$4;
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
    .line 201
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen$4;->this$0:Lorg/appcelerator/titanium/proxy/IntentProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 205
    const/4 v4, 0x2

    const-string v5, "putExtra"

    invoke-static {p2, v4, v5}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 206
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "key"

    invoke-direct {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, __key_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 210
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v7

    const-class v6, Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 214
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "value"

    invoke-direct {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, __value_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 218
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p2, v5

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v4, p1, v5, v6}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 220
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 226
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/titanium/proxy/IntentProxy;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    sget-object v4, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v4
.end method
