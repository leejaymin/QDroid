.class public Lti/modules/titanium/ui/TableViewProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "TableViewProxyBindingGen.java"


# static fields
.field private static final DYNPROP_data:Ljava/lang/String; = "data"

.field private static final DYNPROP_sections:Ljava/lang/String; = "sections"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.TableView"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.TableViewProxy"

.field private static final METHOD_appendRow:Ljava/lang/String; = "appendRow"

.field private static final METHOD_deleteRow:Ljava/lang/String; = "deleteRow"

.field private static final METHOD_getData:Ljava/lang/String; = "getData"

.field private static final METHOD_getIndexByName:Ljava/lang/String; = "getIndexByName"

.field private static final METHOD_getSections:Ljava/lang/String; = "getSections"

.field private static final METHOD_insertRowAfter:Ljava/lang/String; = "insertRowAfter"

.field private static final METHOD_insertRowBefore:Ljava/lang/String; = "insertRowBefore"

.field private static final METHOD_scrollToIndex:Ljava/lang/String; = "scrollToIndex"

.field private static final METHOD_setData:Ljava/lang/String; = "setData"

.field private static final METHOD_updateRow:Ljava/lang/String; = "updateRow"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "TableView"

.field private static final TAG:Ljava/lang/String; = "TableViewProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "sections"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "insertRowAfter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getIndexByName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSections"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "insertRowBefore"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "deleteRow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "scrollToIndex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "appendRow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "updateRow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 74
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    const-string v0, "UI.TableView"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .parameter "name"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 79
    .local v20, value:Ljava/lang/Object;
    if-eqz v20, :cond_0

    move-object/from16 v5, v20

    .line 557
    :goto_0
    return-object v5

    .line 88
    :cond_0
    const-string v5, "sections"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    new-instance v3, Lti/modules/titanium/ui/TableViewProxyBindingGen$1;

    const-string v5, "sections"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/ui/TableViewProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 112
    .local v3, sections_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 113
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "sections"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 115
    goto :goto_0

    .line 118
    .end local v3           #sections_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v5, "data"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    new-instance v4, Lti/modules/titanium/ui/TableViewProxyBindingGen$2;

    const-string v6, "data"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/ui/TableViewProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 167
    .local v4, data_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 168
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "data"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 170
    goto :goto_0

    .line 174
    .end local v4           #data_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v5, "insertRowAfter"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    new-instance v15, Lti/modules/titanium/ui/TableViewProxyBindingGen$3;

    const-string v5, "insertRowAfter"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 222
    .local v15, insertRowAfter_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "insertRowAfter"

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v15

    .line 223
    goto/16 :goto_0

    .line 226
    .end local v15           #insertRowAfter_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "getIndexByName"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 227
    new-instance v13, Lti/modules/titanium/ui/TableViewProxyBindingGen$4;

    const-string v5, "getIndexByName"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$4;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 252
    .local v13, getIndexByName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getIndexByName"

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    .line 253
    goto/16 :goto_0

    .line 256
    .end local v13           #getIndexByName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v5, "getData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 257
    new-instance v12, Lti/modules/titanium/ui/TableViewProxyBindingGen$5;

    const-string v5, "getData"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$5;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 272
    .local v12, getData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getData"

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v12

    .line 273
    goto/16 :goto_0

    .line 276
    .end local v12           #getData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v5, "getSections"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 277
    new-instance v14, Lti/modules/titanium/ui/TableViewProxyBindingGen$6;

    const-string v5, "getSections"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$6;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 292
    .local v14, getSections_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getSections"

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v14

    .line 293
    goto/16 :goto_0

    .line 296
    .end local v14           #getSections_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v5, "insertRowBefore"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 297
    new-instance v16, Lti/modules/titanium/ui/TableViewProxyBindingGen$7;

    const-string v5, "insertRowBefore"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$7;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 344
    .local v16, insertRowBefore_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "insertRowBefore"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    .line 345
    goto/16 :goto_0

    .line 348
    .end local v16           #insertRowBefore_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v5, "deleteRow"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 349
    new-instance v11, Lti/modules/titanium/ui/TableViewProxyBindingGen$8;

    const-string v5, "deleteRow"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$8;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 387
    .local v11, deleteRow_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "deleteRow"

    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    .line 388
    goto/16 :goto_0

    .line 391
    .end local v11           #deleteRow_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v5, "scrollToIndex"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 392
    new-instance v17, Lti/modules/titanium/ui/TableViewProxyBindingGen$9;

    const-string v5, "scrollToIndex"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$9;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 415
    .local v17, scrollToIndex_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "scrollToIndex"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 416
    goto/16 :goto_0

    .line 419
    .end local v17           #scrollToIndex_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v5, "appendRow"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 420
    new-instance v10, Lti/modules/titanium/ui/TableViewProxyBindingGen$10;

    const-string v5, "appendRow"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$10;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 458
    .local v10, appendRow_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "appendRow"

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v10

    .line 459
    goto/16 :goto_0

    .line 462
    .end local v10           #appendRow_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v5, "setData"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 463
    new-instance v18, Lti/modules/titanium/ui/TableViewProxyBindingGen$11;

    const-string v5, "setData"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$11;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 500
    .local v18, setData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setData"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v18

    .line 501
    goto/16 :goto_0

    .line 504
    .end local v18           #setData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v5, "updateRow"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 505
    new-instance v19, Lti/modules/titanium/ui/TableViewProxyBindingGen$12;

    const-string v5, "updateRow"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewProxyBindingGen$12;-><init>(Lti/modules/titanium/ui/TableViewProxyBindingGen;Ljava/lang/String;)V

    .line 552
    .local v19, updateRow_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "updateRow"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v19

    .line 553
    goto/16 :goto_0

    .line 557
    .end local v19           #updateRow_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    const-string v0, "ti.modules.titanium.ui.TableViewProxy"

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
    .line 581
    const-class v0, Lti/modules/titanium/ui/TableViewProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    const-string v0, "TableView"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 577
    const/4 v0, 0x0

    return-object v0
.end method
