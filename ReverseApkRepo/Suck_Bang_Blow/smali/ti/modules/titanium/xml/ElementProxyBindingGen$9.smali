.class Lti/modules/titanium/xml/ElementProxyBindingGen$9;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "ElementProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/xml/ElementProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/xml/ElementProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/xml/ElementProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 385
    iput-object p1, p0, Lti/modules/titanium/xml/ElementProxyBindingGen$9;->this$0:Lti/modules/titanium/xml/ElementProxyBindingGen;

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
    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    .line 389
    const/4 v4, 0x2

    const-string v5, "setAttribute"

    invoke-static {p2, v4, v5}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 390
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "name"

    invoke-direct {v0, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, __name_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 394
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    aget-object v5, p2, v7

    const-class v6, Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 396
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 398
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v4, "value"

    invoke-direct {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, __value_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v7}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 402
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p2, v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 404
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 410
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/ElementProxy;

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/xml/ElementProxy;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v4, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v4
.end method