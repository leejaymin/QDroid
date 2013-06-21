.class public Lti/modules/titanium/ui/PickerColumnProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "PickerColumnProxyBindingGen.java"


# static fields
.field private static final DYNPROP_rowCount:Ljava/lang/String; = "rowCount"

.field private static final DYNPROP_rows:Ljava/lang/String; = "rows"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.PickerColumn"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.PickerColumnProxy"

.field private static final METHOD_addRow:Ljava/lang/String; = "addRow"

.field private static final METHOD_getRowCount:Ljava/lang/String; = "getRowCount"

.field private static final METHOD_getRows:Ljava/lang/String; = "getRows"

.field private static final METHOD_removeRow:Ljava/lang/String; = "removeRow"

.field private static final METHOD_setRows:Ljava/lang/String; = "setRows"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "PickerColumn"

.field private static final TAG:Ljava/lang/String; = "PickerColumnProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "rowCount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "rows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getRows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getRowCount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "addRow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeRow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setRows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 64
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "UI.PickerColumn"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "name"

    .prologue
    .line 68
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 69
    .local v12, value:Ljava/lang/Object;
    if-eqz v12, :cond_0

    move-object v2, v12

    .line 272
    :goto_0
    return-object v2

    .line 78
    :cond_0
    const-string v2, "rowCount"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    new-instance v0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$1;

    const-string v2, "rowCount"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/PickerColumnProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 102
    .local v0, rowCount_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 103
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 104
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "rowCount"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 105
    goto :goto_0

    .line 108
    .end local v0           #rowCount_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v2, "rows"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    new-instance v1, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$2;

    const-string v3, "rows"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/PickerColumnProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 144
    .local v1, rows_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 145
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 146
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "rows"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 147
    goto :goto_0

    .line 151
    .end local v1           #rows_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v2, "getRows"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    new-instance v9, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$3;

    const-string v2, "getRows"

    invoke-direct {v9, p0, v2}, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/PickerColumnProxyBindingGen;Ljava/lang/String;)V

    .line 167
    .local v9, getRows_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "getRows"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v9

    .line 168
    goto :goto_0

    .line 171
    .end local v9           #getRows_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v2, "getRowCount"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    new-instance v8, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$4;

    const-string v2, "getRowCount"

    invoke-direct {v8, p0, v2}, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$4;-><init>(Lti/modules/titanium/ui/PickerColumnProxyBindingGen;Ljava/lang/String;)V

    .line 187
    .local v8, getRowCount_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "getRowCount"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v8

    .line 188
    goto/16 :goto_0

    .line 191
    .end local v8           #getRowCount_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v2, "addRow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    new-instance v7, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$5;

    const-string v2, "addRow"

    invoke-direct {v7, p0, v2}, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$5;-><init>(Lti/modules/titanium/ui/PickerColumnProxyBindingGen;Ljava/lang/String;)V

    .line 215
    .local v7, addRow_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "addRow"

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v7

    .line 216
    goto/16 :goto_0

    .line 219
    .end local v7           #addRow_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v2, "removeRow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 220
    new-instance v10, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$6;

    const-string v2, "removeRow"

    invoke-direct {v10, p0, v2}, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$6;-><init>(Lti/modules/titanium/ui/PickerColumnProxyBindingGen;Ljava/lang/String;)V

    .line 243
    .local v10, removeRow_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "removeRow"

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v10

    .line 244
    goto/16 :goto_0

    .line 247
    .end local v10           #removeRow_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v2, "setRows"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 248
    new-instance v11, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$7;

    const-string v2, "setRows"

    invoke-direct {v11, p0, v2}, Lti/modules/titanium/ui/PickerColumnProxyBindingGen$7;-><init>(Lti/modules/titanium/ui/PickerColumnProxyBindingGen;Ljava/lang/String;)V

    .line 267
    .local v11, setRows_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "setRows"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v11

    .line 268
    goto/16 :goto_0

    .line 272
    .end local v11           #setRows_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string v0, "ti.modules.titanium.ui.PickerColumnProxy"

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
    .line 296
    const-class v0, Lti/modules/titanium/ui/PickerColumnProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, "PickerColumn"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method
