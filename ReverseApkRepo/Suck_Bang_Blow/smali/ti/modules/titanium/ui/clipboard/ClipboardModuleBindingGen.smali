.class public Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "ClipboardModuleBindingGen.java"


# static fields
.field private static final DYNPROP_text:Ljava/lang/String; = "text"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.Clipboard"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.clipboard.ClipboardModule"

.field private static final METHOD_clearData:Ljava/lang/String; = "clearData"

.field private static final METHOD_clearText:Ljava/lang/String; = "clearText"

.field private static final METHOD_getData:Ljava/lang/String; = "getData"

.field private static final METHOD_getText:Ljava/lang/String; = "getText"

.field private static final METHOD_hasData:Ljava/lang/String; = "hasData"

.field private static final METHOD_hasText:Ljava/lang/String; = "hasText"

.field private static final METHOD_setData:Ljava/lang/String; = "setData"

.field private static final METHOD_setText:Ljava/lang/String; = "setText"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Clipboard"

.field private static final TAG:Ljava/lang/String; = "ClipboardModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 55
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "clearData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "clearText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hasText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setData"

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
    .line 348
    const-string v0, "UI.Clipboard"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 18
    .parameter "name"

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 73
    .local v17, value:Ljava/lang/Object;
    if-eqz v17, :cond_0

    move-object/from16 v4, v17

    .line 340
    :goto_0
    return-object v4

    .line 82
    :cond_0
    const-string v4, "text"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    new-instance v3, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$1;

    const-string v5, "text"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$1;-><init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 121
    .local v3, text_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 122
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "text"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 124
    goto :goto_0

    .line 128
    .end local v3           #text_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v4, "getText"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    new-instance v12, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$2;

    const-string v4, "getText"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$2;-><init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;)V

    .line 144
    .local v12, getText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "getText"

    invoke-virtual {v4, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v12

    .line 145
    goto :goto_0

    .line 148
    .end local v12           #getText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v4, "clearData"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    new-instance v9, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$3;

    const-string v4, "clearData"

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$3;-><init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;)V

    .line 172
    .local v9, clearData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "clearData"

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v9

    .line 173
    goto :goto_0

    .line 176
    .end local v9           #clearData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v4, "getData"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    new-instance v11, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$4;

    const-string v4, "getData"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$4;-><init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;)V

    .line 202
    .local v11, getData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "getData"

    invoke-virtual {v4, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v11

    .line 203
    goto/16 :goto_0

    .line 206
    .end local v11           #getData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v4, "hasData"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 207
    new-instance v13, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$5;

    const-string v4, "hasData"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$5;-><init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;)V

    .line 232
    .local v13, hasData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "hasData"

    invoke-virtual {v4, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v13

    .line 233
    goto/16 :goto_0

    .line 236
    .end local v13           #hasData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v4, "clearText"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 237
    new-instance v10, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$6;

    const-string v4, "clearText"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$6;-><init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;)V

    .line 250
    .local v10, clearText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "clearText"

    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v10

    .line 251
    goto/16 :goto_0

    .line 254
    .end local v10           #clearText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v4, "setText"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 255
    new-instance v16, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$7;

    const-string v4, "setText"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$7;-><init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;)V

    .line 278
    .local v16, setText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "setText"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v16

    .line 279
    goto/16 :goto_0

    .line 282
    .end local v16           #setText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v4, "hasText"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 283
    new-instance v14, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$8;

    const-string v4, "hasText"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$8;-><init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;)V

    .line 298
    .local v14, hasText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "hasText"

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v14

    .line 299
    goto/16 :goto_0

    .line 302
    .end local v14           #hasText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v4, "setData"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 303
    new-instance v15, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$9;

    const-string v4, "setData"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen$9;-><init>(Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;Ljava/lang/String;)V

    .line 335
    .local v15, setData_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/clipboard/ClipboardModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v4, v0

    const-string v5, "setData"

    invoke-virtual {v4, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v15

    .line 336
    goto/16 :goto_0

    .line 340
    .end local v15           #setData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const-string v0, "ti.modules.titanium.ui.clipboard.ClipboardModule"

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
    .line 364
    const-class v0, Lti/modules/titanium/ui/clipboard/ClipboardModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    const-string v0, "Clipboard"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 360
    new-instance v0, Lti/modules/titanium/ui/clipboard/ClipboardModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/ui/clipboard/ClipboardModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
