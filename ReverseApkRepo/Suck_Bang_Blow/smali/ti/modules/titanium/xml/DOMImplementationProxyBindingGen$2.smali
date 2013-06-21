.class Lti/modules/titanium/xml/DOMImplementationProxyBindingGen$2;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "DOMImplementationProxyBindingGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;


# direct methods
.method constructor <init>(Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 120
    iput-object p1, p0, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen$2;->this$0:Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;

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

    const-class v12, Ljava/lang/String;

    .line 124
    const/4 v8, 0x3

    const-string v9, "createDocumentType"

    invoke-static {p2, v8, v9}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->assertRequiredArgs([Ljava/lang/Object;ILjava/lang/String;)V

    .line 125
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v0

    .line 126
    .local v0, __createDocumentType_converter:Lorg/appcelerator/kroll/KrollConverter;
    new-instance v2, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "qualifiedName"

    invoke-direct {v2, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, __qualifiedName_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v2, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 130
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    aget-object v9, p2, v11

    const-class v10, Ljava/lang/String;

    invoke-virtual {v8, p1, v9, v12}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 132
    .local v6, qualifiedName:Ljava/lang/String;
    invoke-virtual {v2, v6}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 134
    new-instance v1, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "publicId"

    invoke-direct {v1, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, __publicId_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v1, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 138
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v8, p1, v9, v12}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 140
    .local v5, publicId:Ljava/lang/String;
    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 142
    new-instance v4, Lorg/appcelerator/kroll/KrollArgument;

    const-string v8, "systemId"

    invoke-direct {v4, v8}, Lorg/appcelerator/kroll/KrollArgument;-><init>(Ljava/lang/String;)V

    .line 144
    .local v4, __systemId_argument:Lorg/appcelerator/kroll/KrollArgument;
    invoke-virtual {v4, v11}, Lorg/appcelerator/kroll/KrollArgument;->setOptional(Z)V

    .line 146
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, p2, v9

    const-class v10, Ljava/lang/String;

    invoke-virtual {v8, p1, v9, v12}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 148
    .local v7, systemId:Ljava/lang/String;
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/KrollArgument;->setValue(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollInvocation;->addArgument(Lorg/appcelerator/kroll/KrollArgument;)V

    .line 152
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/xml/DOMImplementationProxy;

    invoke-virtual {p0, v6, v5, v7}, Lti/modules/titanium/xml/DOMImplementationProxy;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentTypeProxy;

    move-result-object v3

    .line 160
    .local v3, __retVal:Lti/modules/titanium/xml/DocumentTypeProxy;
    invoke-virtual {v0, p1, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    return-object v8
.end method
