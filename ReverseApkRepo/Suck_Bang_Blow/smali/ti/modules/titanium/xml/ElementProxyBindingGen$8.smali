.class Lti/modules/titanium/xml/ElementProxyBindingGen$8;
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
    .line 339
    iput-object p1, p0, Lti/modules/titanium/xml/ElementProxyBindingGen$8;->this$0:Lti/modules/titanium/xml/ElementProxyBindingGen;

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
    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    .line 343
    const/4 v6, 0x3

    const-string v7, "setAttributeNS"

    invoke-static {p2, v6, v7}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 344
    new-instance v0, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "namespaceURI"

    invoke-direct {v0, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, __namespaceURI_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v0, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 348
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    aget-object v7, p2, v9

    const-class v8, Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 350
    .local v3, namespaceURI:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 352
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "qualifiedName"

    invoke-direct {v1, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, __qualifiedName_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 356
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, p2, v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 358
    .local v4, qualifiedName:Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 360
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v6, "value"

    invoke-direct {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 362
    .local v2, __value_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v9}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 364
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, p2, v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v10}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 366
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 372
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/ElementProxy;

    invoke-virtual {p0, v3, v4, v5}, Lti/modules/titanium/xml/ElementProxy;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object v6, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v6
.end method
