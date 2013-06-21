.class public Lti/modules/titanium/ui/PickerProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "PickerProxyBindingGen.java"


# static fields
.field private static final ACCESSOR_locale:Ljava/lang/String; = "locale"

.field private static final DYNPROP_columns:Ljava/lang/String; = "columns"

.field private static final DYNPROP_type:Ljava/lang/String; = "type"

.field private static final DYNPROP_useSpinner:Ljava/lang/String; = "useSpinner"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.Picker"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.PickerProxy"

.field private static final METHOD_add:Ljava/lang/String; = "add"

.field private static final METHOD_getColumns:Ljava/lang/String; = "getColumns"

.field private static final METHOD_getSelectedRow:Ljava/lang/String; = "getSelectedRow"

.field private static final METHOD_getType:Ljava/lang/String; = "getType"

.field private static final METHOD_getUseSpinner:Ljava/lang/String; = "getUseSpinner"

.field private static final METHOD_setColumns:Ljava/lang/String; = "setColumns"

.field private static final METHOD_setSelectedRow:Ljava/lang/String; = "setSelectedRow"

.field private static final METHOD_setType:Ljava/lang/String; = "setType"

.field private static final METHOD_setUseSpinner:Ljava/lang/String; = "setUseSpinner"

.field private static final METHOD_showDatePickerDialog:Ljava/lang/String; = "showDatePickerDialog"

.field private static final METHOD_showTimePickerDialog:Ljava/lang/String; = "showTimePickerDialog"

.field private static final PROP_GET_locale:Ljava/lang/String; = "getLocale"

.field private static final PROP_SET_locale:Ljava/lang/String; = "setLocale"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Picker"

.field private static final TAG:Ljava/lang/String; = "PickerProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "columns"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "useSpinner"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "showDatePickerDialog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "showTimePickerDialog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setColumns"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setUseSpinner"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "add"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getColumns"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSelectedRow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getUseSpinner"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setSelectedRow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLocale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setLocale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 83
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    const-string v0, "UI.Picker"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 25
    .parameter "name"

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 88
    .local v24, value:Ljava/lang/Object;
    if-eqz v24, :cond_0

    move-object/from16 v6, v24

    .line 549
    :goto_0
    return-object v6

    .line 97
    :cond_0
    const-string v6, "columns"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    new-instance v3, Lti/modules/titanium/ui/PickerProxyBindingGen$1;

    const-string v5, "columns"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/ui/PickerProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 136
    .local v3, columns_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 137
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "columns"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    .line 139
    goto :goto_0

    .line 142
    .end local v3           #columns_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v6, "useSpinner"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 143
    new-instance v4, Lti/modules/titanium/ui/PickerProxyBindingGen$2;

    const-string v6, "useSpinner"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/ui/PickerProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 181
    .local v4, useSpinner_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 182
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "useSpinner"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    .line 184
    goto :goto_0

    .line 187
    .end local v4           #useSpinner_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v6, "type"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 188
    new-instance v5, Lti/modules/titanium/ui/PickerProxyBindingGen$3;

    const-string v7, "type"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/ui/PickerProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 226
    .local v5, type_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 227
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "type"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 229
    goto/16 :goto_0

    .line 233
    .end local v5           #type_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v6, "showDatePickerDialog"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 234
    new-instance v22, Lti/modules/titanium/ui/PickerProxyBindingGen$4;

    const-string v6, "showDatePickerDialog"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$4;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 255
    .local v22, showDatePickerDialog_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "showDatePickerDialog"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v22

    .line 256
    goto/16 :goto_0

    .line 259
    .end local v22           #showDatePickerDialog_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v6, "showTimePickerDialog"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 260
    new-instance v23, Lti/modules/titanium/ui/PickerProxyBindingGen$5;

    const-string v6, "showTimePickerDialog"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$5;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 281
    .local v23, showTimePickerDialog_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "showTimePickerDialog"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v23

    .line 282
    goto/16 :goto_0

    .line 285
    .end local v23           #showTimePickerDialog_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v6, "getType"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 286
    new-instance v14, Lti/modules/titanium/ui/PickerProxyBindingGen$6;

    const-string v6, "getType"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$6;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 301
    .local v14, getType_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getType"

    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v14

    .line 302
    goto/16 :goto_0

    .line 305
    .end local v14           #getType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v6, "setColumns"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 306
    new-instance v18, Lti/modules/titanium/ui/PickerProxyBindingGen$7;

    const-string v6, "setColumns"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$7;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 329
    .local v18, setColumns_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "setColumns"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v18

    .line 330
    goto/16 :goto_0

    .line 333
    .end local v18           #setColumns_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v6, "setUseSpinner"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 334
    new-instance v21, Lti/modules/titanium/ui/PickerProxyBindingGen$8;

    const-string v6, "setUseSpinner"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$8;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 357
    .local v21, setUseSpinner_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "setUseSpinner"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v21

    .line 358
    goto/16 :goto_0

    .line 361
    .end local v21           #setUseSpinner_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v6, "setType"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 362
    new-instance v20, Lti/modules/titanium/ui/PickerProxyBindingGen$9;

    const-string v6, "setType"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$9;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 385
    .local v20, setType_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "setType"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v20

    .line 386
    goto/16 :goto_0

    .line 389
    .end local v20           #setType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v6, "add"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 390
    new-instance v11, Lti/modules/titanium/ui/PickerProxyBindingGen$10;

    const-string v6, "add"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$10;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 413
    .local v11, add_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "add"

    invoke-virtual {v6, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v11

    .line 414
    goto/16 :goto_0

    .line 417
    .end local v11           #add_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v6, "getColumns"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 418
    new-instance v12, Lti/modules/titanium/ui/PickerProxyBindingGen$11;

    const-string v6, "getColumns"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$11;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 433
    .local v12, getColumns_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getColumns"

    invoke-virtual {v6, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v12

    .line 434
    goto/16 :goto_0

    .line 437
    .end local v12           #getColumns_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v6, "getSelectedRow"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 438
    new-instance v13, Lti/modules/titanium/ui/PickerProxyBindingGen$12;

    const-string v6, "getSelectedRow"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$12;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 463
    .local v13, getSelectedRow_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getSelectedRow"

    invoke-virtual {v6, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v13

    .line 464
    goto/16 :goto_0

    .line 467
    .end local v13           #getSelectedRow_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v6, "getUseSpinner"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 468
    new-instance v15, Lti/modules/titanium/ui/PickerProxyBindingGen$13;

    const-string v6, "getUseSpinner"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$13;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 483
    .local v15, getUseSpinner_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getUseSpinner"

    invoke-virtual {v6, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    .line 484
    goto/16 :goto_0

    .line 487
    .end local v15           #getUseSpinner_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v6, "setSelectedRow"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 488
    new-instance v19, Lti/modules/titanium/ui/PickerProxyBindingGen$14;

    const-string v6, "setSelectedRow"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/PickerProxyBindingGen$14;-><init>(Lti/modules/titanium/ui/PickerProxyBindingGen;Ljava/lang/String;)V

    .line 535
    .local v19, setSelectedRow_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "setSelectedRow"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v19

    .line 536
    goto/16 :goto_0

    .line 539
    .end local v19           #setSelectedRow_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v6, "setLocale"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 540
    const-string v6, "locale"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v17

    .line 541
    .local v17, locale_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "setLocale"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v17

    .line 542
    goto/16 :goto_0

    .line 543
    .end local v17           #locale_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v6, "getLocale"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 544
    const-string v6, "locale"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v16

    .line 545
    .local v16, locale_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/PickerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getLocale"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v16

    .line 546
    goto/16 :goto_0

    .line 549
    .end local v16           #locale_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    const-string v0, "ti.modules.titanium.ui.PickerProxy"

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
    .line 573
    const-class v0, Lti/modules/titanium/ui/PickerProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    const-string v0, "Picker"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 569
    const/4 v0, 0x0

    return-object v0
.end method
