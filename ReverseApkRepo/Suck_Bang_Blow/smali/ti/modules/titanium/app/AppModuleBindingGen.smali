.class public Lti/modules/titanium/app/AppModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "AppModuleBindingGen.java"


# static fields
.field private static final CHILD_MODULE_Android:Ljava/lang/String; = "Android"

.field private static final CHILD_MODULE_Properties:Ljava/lang/String; = "Properties"

.field private static final DYNPROP_arguments:Ljava/lang/String; = "arguments"

.field private static final DYNPROP_copyright:Ljava/lang/String; = "copyright"

.field private static final DYNPROP_description:Ljava/lang/String; = "description"

.field private static final DYNPROP_guid:Ljava/lang/String; = "guid"

.field private static final DYNPROP_id:Ljava/lang/String; = "id"

.field private static final DYNPROP_name:Ljava/lang/String; = "name"

.field private static final DYNPROP_publisher:Ljava/lang/String; = "publisher"

.field private static final DYNPROP_url:Ljava/lang/String; = "url"

.field private static final DYNPROP_version:Ljava/lang/String; = "version"

.field private static final FULL_API_NAME:Ljava/lang/String; = "App"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.app.AppModule"

.field private static final METHOD_appURLToPath:Ljava/lang/String; = "appURLToPath"

.field private static final METHOD_getArguments:Ljava/lang/String; = "getArguments"

.field private static final METHOD_getCopyright:Ljava/lang/String; = "getCopyright"

.field private static final METHOD_getDescription:Ljava/lang/String; = "getDescription"

.field private static final METHOD_getGUID:Ljava/lang/String; = "getGUID"

.field private static final METHOD_getID:Ljava/lang/String; = "getID"

.field private static final METHOD_getName:Ljava/lang/String; = "getName"

.field private static final METHOD_getPublisher:Ljava/lang/String; = "getPublisher"

.field private static final METHOD_getURL:Ljava/lang/String; = "getURL"

.field private static final METHOD_getVersion:Ljava/lang/String; = "getVersion"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "App"

.field private static final TAG:Ljava/lang/String; = "AppModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 67
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "Android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "Properties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "guid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "arguments"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "copyright"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "publisher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "appURLToPath"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getCopyright"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getPublisher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getDescription"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getURL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getGUID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getArguments"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 92
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    const-string v0, "App"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 30
    .parameter "name"

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .line 97
    .local v29, value:Ljava/lang/Object;
    if-eqz v29, :cond_0

    move-object/from16 v12, v29

    .line 600
    :goto_0
    return-object v12

    .line 103
    :cond_0
    const-string v12, "Android"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 104
    new-instance v17, Lti/modules/titanium/app/AndroidModule;

    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v12

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-direct {v0, v1}, Lti/modules/titanium/app/AndroidModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 105
    .local v17, Android_module:Lorg/appcelerator/kroll/KrollModule;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "Android"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v17

    .line 106
    goto :goto_0

    .line 109
    .end local v17           #Android_module:Lorg/appcelerator/kroll/KrollModule;
    :cond_1
    const-string v12, "Properties"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 110
    new-instance v18, Lti/modules/titanium/app/properties/PropertiesModule;

    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v12

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-direct {v0, v1}, Lti/modules/titanium/app/properties/PropertiesModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 111
    .local v18, Properties_module:Lorg/appcelerator/kroll/KrollModule;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "Properties"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v18

    .line 112
    goto :goto_0

    .line 118
    .end local v18           #Properties_module:Lorg/appcelerator/kroll/KrollModule;
    :cond_2
    const-string v12, "id"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 119
    new-instance v3, Lti/modules/titanium/app/AppModuleBindingGen$1;

    const-string v5, "id"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/app/AppModuleBindingGen$1;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 142
    .local v3, id_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 143
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "id"

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v3

    .line 145
    goto/16 :goto_0

    .line 148
    .end local v3           #id_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v12, "guid"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 149
    new-instance v4, Lti/modules/titanium/app/AppModuleBindingGen$2;

    const-string v6, "guid"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/app/AppModuleBindingGen$2;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 172
    .local v4, guid_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 173
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "guid"

    invoke-virtual {v12, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v4

    .line 175
    goto/16 :goto_0

    .line 178
    .end local v4           #guid_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v12, "arguments"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 179
    new-instance v5, Lti/modules/titanium/app/AppModuleBindingGen$3;

    const-string v7, "arguments"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/app/AppModuleBindingGen$3;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 202
    .local v5, arguments_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 203
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "arguments"

    invoke-virtual {v12, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v5

    .line 205
    goto/16 :goto_0

    .line 208
    .end local v5           #arguments_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v12, "description"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 209
    new-instance v6, Lti/modules/titanium/app/AppModuleBindingGen$4;

    const-string v8, "description"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/app/AppModuleBindingGen$4;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 232
    .local v6, description_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 233
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "description"

    invoke-virtual {v12, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v6

    .line 235
    goto/16 :goto_0

    .line 238
    .end local v6           #description_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v12, "name"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 239
    new-instance v7, Lti/modules/titanium/app/AppModuleBindingGen$5;

    const-string v9, "name"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/app/AppModuleBindingGen$5;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 262
    .local v7, name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 263
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "name"

    invoke-virtual {v12, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v7

    .line 265
    goto/16 :goto_0

    .line 268
    .end local v7           #name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v12, "copyright"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 269
    new-instance v8, Lti/modules/titanium/app/AppModuleBindingGen$6;

    const-string v10, "copyright"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lti/modules/titanium/app/AppModuleBindingGen$6;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 292
    .local v8, copyright_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 293
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "copyright"

    invoke-virtual {v12, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v8

    .line 295
    goto/16 :goto_0

    .line 298
    .end local v8           #copyright_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_8
    const-string v12, "url"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 299
    new-instance v9, Lti/modules/titanium/app/AppModuleBindingGen$7;

    const-string v11, "url"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lti/modules/titanium/app/AppModuleBindingGen$7;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 322
    .local v9, url_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 323
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "url"

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v9

    .line 325
    goto/16 :goto_0

    .line 328
    .end local v9           #url_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_9
    const-string v12, "version"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 329
    new-instance v10, Lti/modules/titanium/app/AppModuleBindingGen$8;

    const-string v12, "version"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lti/modules/titanium/app/AppModuleBindingGen$8;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 352
    .local v10, version_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 353
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "version"

    invoke-virtual {v12, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v10

    .line 355
    goto/16 :goto_0

    .line 358
    .end local v10           #version_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_a
    const-string v12, "publisher"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 359
    new-instance v11, Lti/modules/titanium/app/AppModuleBindingGen$9;

    const-string v13, "publisher"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lti/modules/titanium/app/AppModuleBindingGen$9;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 382
    .local v11, publisher_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 383
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "publisher"

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v11

    .line 385
    goto/16 :goto_0

    .line 389
    .end local v11           #publisher_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_b
    const-string v12, "appURLToPath"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 390
    new-instance v19, Lti/modules/titanium/app/AppModuleBindingGen$10;

    const-string v12, "appURLToPath"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$10;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 415
    .local v19, appURLToPath_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "appURLToPath"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v19

    .line 416
    goto/16 :goto_0

    .line 419
    .end local v19           #appURLToPath_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v12, "getID"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 420
    new-instance v24, Lti/modules/titanium/app/AppModuleBindingGen$11;

    const-string v12, "getID"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$11;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 435
    .local v24, getID_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "getID"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v24

    .line 436
    goto/16 :goto_0

    .line 439
    .end local v24           #getID_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v12, "getVersion"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 440
    new-instance v28, Lti/modules/titanium/app/AppModuleBindingGen$12;

    const-string v12, "getVersion"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$12;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 455
    .local v28, getVersion_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "getVersion"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v28

    .line 456
    goto/16 :goto_0

    .line 459
    .end local v28           #getVersion_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v12, "getCopyright"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 460
    new-instance v21, Lti/modules/titanium/app/AppModuleBindingGen$13;

    const-string v12, "getCopyright"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$13;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 475
    .local v21, getCopyright_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "getCopyright"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v21

    .line 476
    goto/16 :goto_0

    .line 479
    .end local v21           #getCopyright_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v12, "getPublisher"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 480
    new-instance v26, Lti/modules/titanium/app/AppModuleBindingGen$14;

    const-string v12, "getPublisher"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$14;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 495
    .local v26, getPublisher_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "getPublisher"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v26

    .line 496
    goto/16 :goto_0

    .line 499
    .end local v26           #getPublisher_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v12, "getDescription"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 500
    new-instance v22, Lti/modules/titanium/app/AppModuleBindingGen$15;

    const-string v12, "getDescription"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$15;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 515
    .local v22, getDescription_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "getDescription"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v22

    .line 516
    goto/16 :goto_0

    .line 519
    .end local v22           #getDescription_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v12, "getName"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 520
    new-instance v25, Lti/modules/titanium/app/AppModuleBindingGen$16;

    const-string v12, "getName"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$16;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 535
    .local v25, getName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "getName"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v25

    .line 536
    goto/16 :goto_0

    .line 539
    .end local v25           #getName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v12, "getURL"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 540
    new-instance v27, Lti/modules/titanium/app/AppModuleBindingGen$17;

    const-string v12, "getURL"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$17;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 555
    .local v27, getURL_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "getURL"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v27

    .line 556
    goto/16 :goto_0

    .line 559
    .end local v27           #getURL_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v12, "getGUID"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 560
    new-instance v23, Lti/modules/titanium/app/AppModuleBindingGen$18;

    const-string v12, "getGUID"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$18;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 575
    .local v23, getGUID_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "getGUID"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v23

    .line 576
    goto/16 :goto_0

    .line 579
    .end local v23           #getGUID_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    const-string v12, "getArguments"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 580
    new-instance v20, Lti/modules/titanium/app/AppModuleBindingGen$19;

    const-string v12, "getArguments"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/app/AppModuleBindingGen$19;-><init>(Lti/modules/titanium/app/AppModuleBindingGen;Ljava/lang/String;)V

    .line 595
    .local v20, getArguments_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/app/AppModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v12, v0

    const-string v13, "getArguments"

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v20

    .line 596
    goto/16 :goto_0

    .line 600
    .end local v20           #getArguments_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_15
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    const-string v0, "ti.modules.titanium.app.AppModule"

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
    .line 624
    const-class v0, Lti/modules/titanium/app/AppModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    const-string v0, "App"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 620
    new-instance v0, Lti/modules/titanium/app/AppModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/app/AppModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
