.class public Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "DOMImplementationProxyBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "DOMImplementation"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.DOMImplementationProxy"

.field private static final METHOD_createDocument:Ljava/lang/String; = "createDocument"

.field private static final METHOD_createDocumentType:Ljava/lang/String; = "createDocumentType"

.field private static final METHOD_hasFeature:Ljava/lang/String; = "hasFeature"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "DOMImplementation"

.field private static final TAG:Ljava/lang/String; = "DOMImplementationProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 49
    iget-object v0, p0, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createDocument"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createDocumentType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasFeature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 56
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "DOMImplementation"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "name"

    .prologue
    const-string v8, "hasFeature"

    const-string v7, "createDocumentType"

    const-string v6, "createDocument"

    .line 60
    iget-object v4, p0, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 207
    :goto_0
    return-object v4

    .line 71
    :cond_0
    const-string v4, "createDocument"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    new-instance v1, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen$1;

    const-string v4, "createDocument"

    invoke-direct {v1, p0, v6}, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;Ljava/lang/String;)V

    .line 115
    .local v1, createDocument_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "createDocument"

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    .line 116
    goto :goto_0

    .line 119
    .end local v1           #createDocument_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v4, "createDocumentType"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    new-instance v0, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen$2;

    const-string v4, "createDocumentType"

    invoke-direct {v0, p0, v7}, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;Ljava/lang/String;)V

    .line 163
    .local v0, createDocumentType_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "createDocumentType"

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 164
    goto :goto_0

    .line 167
    .end local v0           #createDocumentType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v4, "hasFeature"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 168
    new-instance v2, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen$3;

    const-string v4, "hasFeature"

    invoke-direct {v2, p0, v8}, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;Ljava/lang/String;)V

    .line 202
    .local v2, hasFeature_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/xml/DOMImplementationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "hasFeature"

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 203
    goto :goto_0

    .line 207
    .end local v2           #hasFeature_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-string v0, "ti.modules.titanium.xml.DOMImplementationProxy"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    const-class v0, Lti/modules/titanium/xml/DOMImplementationProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-string v0, "DOMImplementation"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 227
    const/4 v0, 0x0

    return-object v0
.end method
