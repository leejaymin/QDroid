.class public Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "TableViewSectionProxyBindingGen.java"


# static fields
.field private static final DYNPROP_rowCount:Ljava/lang/String; = "rowCount"

.field private static final DYNPROP_rows:Ljava/lang/String; = "rows"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.TableViewSection"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.TableViewSectionProxy"

.field private static final METHOD_add:Ljava/lang/String; = "add"

.field private static final METHOD_getRowCount:Ljava/lang/String; = "getRowCount"

.field private static final METHOD_getRows:Ljava/lang/String; = "getRows"

.field private static final METHOD_insertRowAt:Ljava/lang/String; = "insertRowAt"

.field private static final METHOD_remove:Ljava/lang/String; = "remove"

.field private static final METHOD_removeRowAt:Ljava/lang/String; = "removeRowAt"

.field private static final METHOD_rowAtIndex:Ljava/lang/String; = "rowAtIndex"

.field private static final METHOD_updateRowAt:Ljava/lang/String; = "updateRowAt"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "TableViewSection"

.field private static final TAG:Ljava/lang/String; = "TableViewSectionProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "rowCount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "rows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "remove"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "updateRowAt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "insertRowAt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getRows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getRowCount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "rowAtIndex"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "add"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeRowAt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 70
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    const-string v0, "UI.TableViewSection"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 19
    .parameter "name"

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 75
    .local v18, value:Ljava/lang/Object;
    if-eqz v18, :cond_0

    move-object/from16 v5, v18

    .line 374
    :goto_0
    return-object v5

    .line 84
    :cond_0
    const-string v5, "rowCount"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    new-instance v3, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$1;

    const-string v5, "rowCount"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 108
    .local v3, rowCount_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 109
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "rowCount"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 111
    goto :goto_0

    .line 114
    .end local v3           #rowCount_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v5, "rows"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    new-instance v4, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$2;

    const-string v6, "rows"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 138
    .local v4, rows_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 139
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "rows"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 141
    goto :goto_0

    .line 145
    .end local v4           #rows_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v5, "remove"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    new-instance v15, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$3;

    const-string v5, "remove"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;)V

    .line 169
    .local v15, remove_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "remove"

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v15

    .line 170
    goto/16 :goto_0

    .line 173
    .end local v15           #remove_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "updateRowAt"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    new-instance v17, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$4;

    const-string v5, "updateRowAt"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$4;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;)V

    .line 206
    .local v17, updateRowAt_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "updateRowAt"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 207
    goto/16 :goto_0

    .line 210
    .end local v17           #updateRowAt_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v5, "insertRowAt"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 211
    new-instance v13, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$5;

    const-string v5, "insertRowAt"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$5;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;)V

    .line 243
    .local v13, insertRowAt_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "insertRowAt"

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    .line 244
    goto/16 :goto_0

    .line 247
    .end local v13           #insertRowAt_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v5, "getRows"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 248
    new-instance v12, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$6;

    const-string v5, "getRows"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$6;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;)V

    .line 263
    .local v12, getRows_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getRows"

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v12

    .line 264
    goto/16 :goto_0

    .line 267
    .end local v12           #getRows_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v5, "getRowCount"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 268
    new-instance v11, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$7;

    const-string v5, "getRowCount"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$7;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;)V

    .line 283
    .local v11, getRowCount_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getRowCount"

    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    .line 284
    goto/16 :goto_0

    .line 287
    .end local v11           #getRowCount_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v5, "rowAtIndex"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 288
    new-instance v16, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$8;

    const-string v5, "rowAtIndex"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$8;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;)V

    .line 313
    .local v16, rowAtIndex_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "rowAtIndex"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    .line 314
    goto/16 :goto_0

    .line 317
    .end local v16           #rowAtIndex_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v5, "add"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 318
    new-instance v10, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$9;

    const-string v5, "add"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$9;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;)V

    .line 341
    .local v10, add_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "add"

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v10

    .line 342
    goto/16 :goto_0

    .line 345
    .end local v10           #add_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v5, "removeRowAt"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 346
    new-instance v14, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$10;

    const-string v5, "removeRowAt"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen$10;-><init>(Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;Ljava/lang/String;)V

    .line 369
    .local v14, removeRowAt_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/TableViewSectionProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "removeRowAt"

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v14

    .line 370
    goto/16 :goto_0

    .line 374
    .end local v14           #removeRowAt_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    const-string v0, "ti.modules.titanium.ui.TableViewSectionProxy"

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
    .line 398
    const-class v0, Lti/modules/titanium/ui/TableViewSectionProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const-string v0, "TableViewSection"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 394
    const/4 v0, 0x0

    return-object v0
.end method
