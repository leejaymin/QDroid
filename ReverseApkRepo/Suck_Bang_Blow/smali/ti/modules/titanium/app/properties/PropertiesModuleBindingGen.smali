.class public Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "PropertiesModuleBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "App.Properties"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.app.properties.PropertiesModule"

.field private static final METHOD_getBool:Ljava/lang/String; = "getBool"

.field private static final METHOD_getDouble:Ljava/lang/String; = "getDouble"

.field private static final METHOD_getInt:Ljava/lang/String; = "getInt"

.field private static final METHOD_getList:Ljava/lang/String; = "getList"

.field private static final METHOD_getString:Ljava/lang/String; = "getString"

.field private static final METHOD_hasProperty:Ljava/lang/String; = "hasProperty"

.field private static final METHOD_listProperties:Ljava/lang/String; = "listProperties"

.field private static final METHOD_removeProperty:Ljava/lang/String; = "removeProperty"

.field private static final METHOD_setBool:Ljava/lang/String; = "setBool"

.field private static final METHOD_setDouble:Ljava/lang/String; = "setDouble"

.field private static final METHOD_setInt:Ljava/lang/String; = "setInt"

.field private static final METHOD_setList:Ljava/lang/String; = "setList"

.field private static final METHOD_setString:Ljava/lang/String; = "setString"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Properties"

.field private static final TAG:Ljava/lang/String; = "PropertiesModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 59
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasProperty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getDouble"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setBool"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getInt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setString"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "listProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getBool"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setDouble"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setList"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getList"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setInt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeProperty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getString"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 76
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    const-string v0, "App.Properties"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 19
    .parameter "name"

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 81
    .local v16, value:Ljava/lang/Object;
    if-eqz v16, :cond_0

    move-object/from16 v17, v16

    .line 570
    :goto_0
    return-object v17

    .line 91
    :cond_0
    const-string v17, "hasProperty"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 92
    new-instance v8, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$1;

    const-string v17, "hasProperty"

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$1;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 117
    .local v8, hasProperty_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "hasProperty"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v8

    .line 118
    goto :goto_0

    .line 121
    .end local v8           #hasProperty_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v17, "getDouble"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 122
    new-instance v4, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$2;

    const-string v17, "getDouble"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$2;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 162
    .local v4, getDouble_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getDouble"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v4

    .line 163
    goto :goto_0

    .line 166
    .end local v4           #getDouble_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v17, "setBool"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 167
    new-instance v11, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$3;

    const-string v17, "setBool"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$3;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 199
    .local v11, setBool_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setBool"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v11

    .line 200
    goto/16 :goto_0

    .line 203
    .end local v11           #setBool_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v17, "getInt"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 204
    new-instance v5, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$4;

    const-string v17, "getInt"

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$4;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 244
    .local v5, getInt_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getInt"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v5

    .line 245
    goto/16 :goto_0

    .line 248
    .end local v5           #getInt_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v17, "setString"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 249
    new-instance v15, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$5;

    const-string v17, "setString"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$5;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 281
    .local v15, setString_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setString"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v15

    .line 282
    goto/16 :goto_0

    .line 285
    .end local v15           #setString_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v17, "listProperties"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 286
    new-instance v9, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$6;

    const-string v17, "listProperties"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$6;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 301
    .local v9, listProperties_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "listProperties"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v9

    .line 302
    goto/16 :goto_0

    .line 305
    .end local v9           #listProperties_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v17, "getBool"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 306
    new-instance v3, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$7;

    const-string v17, "getBool"

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$7;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 346
    .local v3, getBool_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getBool"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v3

    .line 347
    goto/16 :goto_0

    .line 350
    .end local v3           #getBool_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v17, "setDouble"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 351
    new-instance v12, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$8;

    const-string v17, "setDouble"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$8;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 383
    .local v12, setDouble_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setDouble"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v12

    .line 384
    goto/16 :goto_0

    .line 387
    .end local v12           #setDouble_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v17, "setList"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 388
    new-instance v14, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$9;

    const-string v17, "setList"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$9;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 417
    .local v14, setList_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setList"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v14

    .line 418
    goto/16 :goto_0

    .line 421
    .end local v14           #setList_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v17, "getList"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 422
    new-instance v6, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$10;

    const-string v17, "getList"

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$10;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 455
    .local v6, getList_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getList"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v6

    .line 456
    goto/16 :goto_0

    .line 459
    .end local v6           #getList_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v17, "setInt"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 460
    new-instance v13, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$11;

    const-string v17, "setInt"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$11;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 492
    .local v13, setInt_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "setInt"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v13

    .line 493
    goto/16 :goto_0

    .line 496
    .end local v13           #setInt_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v17, "removeProperty"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 497
    new-instance v10, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$12;

    const-string v17, "removeProperty"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$12;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 520
    .local v10, removeProperty_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "removeProperty"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v10

    .line 521
    goto/16 :goto_0

    .line 524
    .end local v10           #removeProperty_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v17, "getString"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 525
    new-instance v7, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$13;

    const-string v17, "getString"

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen$13;-><init>(Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;Ljava/lang/String;)V

    .line 565
    .local v7, getString_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/properties/PropertiesModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "getString"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v7

    .line 566
    goto/16 :goto_0

    .line 570
    .end local v7           #getString_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    const-string v0, "ti.modules.titanium.app.properties.PropertiesModule"

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
    .line 594
    const-class v0, Lti/modules/titanium/app/properties/PropertiesModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    const-string v0, "Properties"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 590
    new-instance v0, Lti/modules/titanium/app/properties/PropertiesModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/app/properties/PropertiesModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
