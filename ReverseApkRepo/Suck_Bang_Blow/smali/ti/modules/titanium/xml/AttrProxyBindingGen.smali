.class public Lti/modules/titanium/xml/AttrProxyBindingGen;
.super Lti/modules/titanium/xml/NodeProxyBindingGen;
.source "AttrProxyBindingGen.java"


# static fields
.field private static final DYNPROP_name:Ljava/lang/String; = "name"

.field private static final DYNPROP_ownerElement:Ljava/lang/String; = "ownerElement"

.field private static final DYNPROP_specified:Ljava/lang/String; = "specified"

.field private static final DYNPROP_value:Ljava/lang/String; = "value"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Attr"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.AttrProxy"

.field private static final METHOD_getName:Ljava/lang/String; = "getName"

.field private static final METHOD_getOwnerElement:Ljava/lang/String; = "getOwnerElement"

.field private static final METHOD_getSpecified:Ljava/lang/String; = "getSpecified"

.field private static final METHOD_getValue:Ljava/lang/String; = "getValue"

.field private static final METHOD_setValue:Ljava/lang/String; = "setValue"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Attr"

.field private static final TAG:Ljava/lang/String; = "AttrProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lti/modules/titanium/xml/NodeProxyBindingGen;-><init>()V

    .line 55
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "specified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ownerElement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getValue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getOwnerElement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSpecified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setValue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 68
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const-string v0, "Attr"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 18
    .parameter "name"

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 73
    .local v17, value:Ljava/lang/Object;
    if-eqz v17, :cond_0

    move-object/from16 v7, v17

    .line 327
    :goto_0
    return-object v7

    .line 82
    :cond_0
    const-string v7, "specified"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    new-instance v3, Lti/modules/titanium/xml/AttrProxyBindingGen$1;

    const-string v5, "specified"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/xml/AttrProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/AttrProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 106
    .local v3, specified_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 107
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "specified"

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v3

    .line 109
    goto :goto_0

    .line 112
    .end local v3           #specified_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v7, "ownerElement"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 113
    new-instance v4, Lti/modules/titanium/xml/AttrProxyBindingGen$2;

    const-string v6, "ownerElement"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/xml/AttrProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/AttrProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 136
    .local v4, ownerElement_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 137
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "ownerElement"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    .line 139
    goto :goto_0

    .line 142
    .end local v4           #ownerElement_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v7, "name"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    new-instance v5, Lti/modules/titanium/xml/AttrProxyBindingGen$3;

    const-string v7, "name"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/xml/AttrProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/AttrProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 166
    .local v5, name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 167
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "name"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v5

    .line 169
    goto/16 :goto_0

    .line 172
    .end local v5           #name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v7, "value"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 173
    new-instance v6, Lti/modules/titanium/xml/AttrProxyBindingGen$4;

    const-string v8, "value"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/xml/AttrProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/AttrProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 211
    .local v6, value_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 212
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "value"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    .line 214
    goto/16 :goto_0

    .line 218
    .end local v6           #value_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v7, "getValue"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 219
    new-instance v15, Lti/modules/titanium/xml/AttrProxyBindingGen$5;

    const-string v7, "getValue"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/AttrProxyBindingGen$5;-><init>(Lti/modules/titanium/xml/AttrProxyBindingGen;Ljava/lang/String;)V

    .line 234
    .local v15, getValue_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getValue"

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v15

    .line 235
    goto/16 :goto_0

    .line 238
    .end local v15           #getValue_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v7, "getName"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 239
    new-instance v12, Lti/modules/titanium/xml/AttrProxyBindingGen$6;

    const-string v7, "getName"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/AttrProxyBindingGen$6;-><init>(Lti/modules/titanium/xml/AttrProxyBindingGen;Ljava/lang/String;)V

    .line 254
    .local v12, getName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getName"

    invoke-virtual {v7, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v12

    .line 255
    goto/16 :goto_0

    .line 258
    .end local v12           #getName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v7, "getOwnerElement"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 259
    new-instance v13, Lti/modules/titanium/xml/AttrProxyBindingGen$7;

    const-string v7, "getOwnerElement"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/AttrProxyBindingGen$7;-><init>(Lti/modules/titanium/xml/AttrProxyBindingGen;Ljava/lang/String;)V

    .line 274
    .local v13, getOwnerElement_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getOwnerElement"

    invoke-virtual {v7, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v13

    .line 275
    goto/16 :goto_0

    .line 278
    .end local v13           #getOwnerElement_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v7, "getSpecified"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 279
    new-instance v14, Lti/modules/titanium/xml/AttrProxyBindingGen$8;

    const-string v7, "getSpecified"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/AttrProxyBindingGen$8;-><init>(Lti/modules/titanium/xml/AttrProxyBindingGen;Ljava/lang/String;)V

    .line 294
    .local v14, getSpecified_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getSpecified"

    invoke-virtual {v7, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v14

    .line 295
    goto/16 :goto_0

    .line 298
    .end local v14           #getSpecified_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v7, "setValue"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 299
    new-instance v16, Lti/modules/titanium/xml/AttrProxyBindingGen$9;

    const-string v7, "setValue"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/xml/AttrProxyBindingGen$9;-><init>(Lti/modules/titanium/xml/AttrProxyBindingGen;Ljava/lang/String;)V

    .line 322
    .local v16, setValue_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/xml/AttrProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "setValue"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v16

    .line 323
    goto/16 :goto_0

    .line 327
    .end local v16           #setValue_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    invoke-super/range {p0 .. p1}, Lti/modules/titanium/xml/NodeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const-string v0, "ti.modules.titanium.xml.AttrProxy"

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
    .line 351
    const-class v0, Lti/modules/titanium/xml/AttrProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    const-string v0, "Attr"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method
