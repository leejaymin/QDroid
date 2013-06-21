.class public Lti/modules/titanium/xml/EntityProxyBindingGen;
.super Lti/modules/titanium/xml/NodeProxyBindingGen;
.source "EntityProxyBindingGen.java"


# static fields
.field private static final DYNPROP_notationName:Ljava/lang/String; = "notationName"

.field private static final DYNPROP_publicId:Ljava/lang/String; = "publicId"

.field private static final DYNPROP_systemId:Ljava/lang/String; = "systemId"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Entity"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.EntityProxy"

.field private static final METHOD_getNotationName:Ljava/lang/String; = "getNotationName"

.field private static final METHOD_getPublicId:Ljava/lang/String; = "getPublicId"

.field private static final METHOD_getSystemId:Ljava/lang/String; = "getSystemId"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Entity"

.field private static final TAG:Ljava/lang/String; = "EntityProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lti/modules/titanium/xml/NodeProxyBindingGen;-><init>()V

    .line 52
    iget-object v0, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "publicId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "systemId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "notationName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getPublicId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSystemId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNotationName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 62
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string v0, "Entity"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .parameter "name"

    .prologue
    .line 66
    iget-object v3, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 67
    .local v11, value:Ljava/lang/Object;
    if-eqz v11, :cond_0

    move-object v3, v11

    .line 228
    :goto_0
    return-object v3

    .line 76
    :cond_0
    const-string v3, "publicId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    new-instance v0, Lti/modules/titanium/xml/EntityProxyBindingGen$1;

    const-string v2, "publicId"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/xml/EntityProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/EntityProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 100
    .local v0, publicId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 101
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 102
    iget-object v3, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "publicId"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 103
    goto :goto_0

    .line 106
    .end local v0           #publicId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v3, "systemId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    new-instance v1, Lti/modules/titanium/xml/EntityProxyBindingGen$2;

    const-string v3, "systemId"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lti/modules/titanium/xml/EntityProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/EntityProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 130
    .local v1, systemId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 131
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 132
    iget-object v3, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "systemId"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 133
    goto :goto_0

    .line 136
    .end local v1           #systemId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v3, "notationName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    new-instance v2, Lti/modules/titanium/xml/EntityProxyBindingGen$3;

    const-string v4, "notationName"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lti/modules/titanium/xml/EntityProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/EntityProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 160
    .local v2, notationName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 161
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 162
    iget-object v3, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "notationName"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 163
    goto :goto_0

    .line 167
    .end local v2           #notationName_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v3, "getPublicId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    new-instance v9, Lti/modules/titanium/xml/EntityProxyBindingGen$4;

    const-string v3, "getPublicId"

    invoke-direct {v9, p0, v3}, Lti/modules/titanium/xml/EntityProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/EntityProxyBindingGen;Ljava/lang/String;)V

    .line 183
    .local v9, getPublicId_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "getPublicId"

    invoke-virtual {v3, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v9

    .line 184
    goto/16 :goto_0

    .line 187
    .end local v9           #getPublicId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v3, "getSystemId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    new-instance v10, Lti/modules/titanium/xml/EntityProxyBindingGen$5;

    const-string v3, "getSystemId"

    invoke-direct {v10, p0, v3}, Lti/modules/titanium/xml/EntityProxyBindingGen$5;-><init>(Lti/modules/titanium/xml/EntityProxyBindingGen;Ljava/lang/String;)V

    .line 203
    .local v10, getSystemId_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "getSystemId"

    invoke-virtual {v3, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v10

    .line 204
    goto/16 :goto_0

    .line 207
    .end local v10           #getSystemId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v3, "getNotationName"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 208
    new-instance v8, Lti/modules/titanium/xml/EntityProxyBindingGen$6;

    const-string v3, "getNotationName"

    invoke-direct {v8, p0, v3}, Lti/modules/titanium/xml/EntityProxyBindingGen$6;-><init>(Lti/modules/titanium/xml/EntityProxyBindingGen;Ljava/lang/String;)V

    .line 223
    .local v8, getNotationName_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v3, p0, Lti/modules/titanium/xml/EntityProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v4, "getNotationName"

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v8

    .line 224
    goto/16 :goto_0

    .line 228
    .end local v8           #getNotationName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    invoke-super {p0, p1}, Lti/modules/titanium/xml/NodeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "ti.modules.titanium.xml.EntityProxy"

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
    .line 252
    const-class v0, Lti/modules/titanium/xml/EntityProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string v0, "Entity"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method
