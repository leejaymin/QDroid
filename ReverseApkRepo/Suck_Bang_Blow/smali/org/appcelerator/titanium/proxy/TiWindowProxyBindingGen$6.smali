.class Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$6;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "TiWindowProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 239
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen$6;->this$0:Lorg/appcelerator/titanium/proxy/TiWindowProxyBindingGen;

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "__invocation"
    .parameter "__args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 243
    const/4 v3, 0x1

    const-string v4, "setOrientationModes"

    invoke-static {p2, v3, v4}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 244
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v3, "modes"

    invoke-direct {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, __modes_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 248
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    aget-object v4, p2, v5

    const-class v5, [I

    invoke-virtual {v3, p1, v4, v5}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    move-object v0, p0

    check-cast v0, [I

    move-object v2, v0

    .line 250
    .local v2, modes:[I
    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 256
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    check-cast p0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setOrientationModes([I)V

    .line 259
    sget-object v3, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v3
.end method
