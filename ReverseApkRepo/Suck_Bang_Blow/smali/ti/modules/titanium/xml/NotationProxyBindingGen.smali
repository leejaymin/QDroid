.class public Lti/modules/titanium/xml/NotationProxyBindingGen;
.super Lti/modules/titanium/xml/NodeProxyBindingGen;
.source "NotationProxyBindingGen.java"


# static fields
.field private static final DYNPROP_publicId:Ljava/lang/String; = "publicId"

.field private static final DYNPROP_systemId:Ljava/lang/String; = "systemId"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Notation"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.NotationProxy"

.field private static final METHOD_getPublicId:Ljava/lang/String; = "getPublicId"

.field private static final METHOD_getSystemId:Ljava/lang/String; = "getSystemId"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Notation"

.field private static final TAG:Ljava/lang/String; = "NotationProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lti/modules/titanium/xml/NodeProxyBindingGen;-><init>()V

    .line 50
    iget-object v0, p0, Lti/modules/titanium/xml/NotationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "publicId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lti/modules/titanium/xml/NotationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "systemId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lti/modules/titanium/xml/NotationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getPublicId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lti/modules/titanium/xml/NotationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSystemId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 58
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "Notation"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    const-string v7, "systemId"

    const-string v2, "publicId"

    const-string v6, "getSystemId"

    const-string v3, "getPublicId"

    .line 62
    iget-object v1, p0, Lti/modules/titanium/xml/NotationProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 63
    .local v13, value:Ljava/lang/Object;
    if-eqz v13, :cond_0

    move-object v1, v13

    .line 174
    :goto_0
    return-object v1

    .line 72
    :cond_0
    const-string v1, "publicId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v0, Lti/modules/titanium/xml/NotationProxyBindingGen$1;

    const-string v1, "publicId"

    const/4 v3, 0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/xml/NotationProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/NotationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 96
    .local v0, publicId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 97
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 98
    iget-object v1, p0, Lti/modules/titanium/xml/NotationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "publicId"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 99
    goto :goto_0

    .line 102
    .end local v0           #publicId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v1, "systemId"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    new-instance v5, Lti/modules/titanium/xml/NotationProxyBindingGen$2;

    const-string v1, "systemId"

    const/4 v8, 0x1

    move-object v6, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/xml/NotationProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/NotationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 126
    .local v5, systemId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 127
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 128
    iget-object v1, p0, Lti/modules/titanium/xml/NotationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "systemId"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v5

    .line 129
    goto :goto_0

    .line 133
    .end local v5           #systemId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v1, "getPublicId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    new-instance v11, Lti/modules/titanium/xml/NotationProxyBindingGen$3;

    const-string v1, "getPublicId"

    invoke-direct {v11, p0, v3}, Lti/modules/titanium/xml/NotationProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/NotationProxyBindingGen;Ljava/lang/String;)V

    .line 149
    .local v11, getPublicId_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v1, p0, Lti/modules/titanium/xml/NotationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "getPublicId"

    invoke-virtual {v1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v11

    .line 150
    goto :goto_0

    .line 153
    .end local v11           #getPublicId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v1, "getSystemId"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    new-instance v12, Lti/modules/titanium/xml/NotationProxyBindingGen$4;

    const-string v1, "getSystemId"

    invoke-direct {v12, p0, v6}, Lti/modules/titanium/xml/NotationProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/NotationProxyBindingGen;Ljava/lang/String;)V

    .line 169
    .local v12, getSystemId_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v1, p0, Lti/modules/titanium/xml/NotationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "getSystemId"

    invoke-virtual {v1, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v12

    .line 170
    goto/16 :goto_0

    .line 174
    .end local v12           #getSystemId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    invoke-super {p0, p1}, Lti/modules/titanium/xml/NodeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "ti.modules.titanium.xml.NotationProxy"

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
    .line 198
    const-class v0, Lti/modules/titanium/xml/NotationProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "Notation"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method
