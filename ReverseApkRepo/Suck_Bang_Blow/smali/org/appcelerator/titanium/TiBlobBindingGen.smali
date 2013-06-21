.class public Lorg/appcelerator/titanium/TiBlobBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "TiBlobBindingGen.java"


# static fields
.field private static final DYNPROP_height:Ljava/lang/String; = "height"

.field private static final DYNPROP_length:Ljava/lang/String; = "length"

.field private static final DYNPROP_mimeType:Ljava/lang/String; = "mimeType"

.field private static final DYNPROP_nativePath:Ljava/lang/String; = "nativePath"

.field private static final DYNPROP_text:Ljava/lang/String; = "text"

.field private static final DYNPROP_type:Ljava/lang/String; = "type"

.field private static final DYNPROP_width:Ljava/lang/String; = "width"

.field private static final FULL_API_NAME:Ljava/lang/String; = "TiBlob"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.titanium.TiBlob"

.field private static final METHOD_append:Ljava/lang/String; = "append"

.field private static final METHOD_getHeight:Ljava/lang/String; = "getHeight"

.field private static final METHOD_getLength:Ljava/lang/String; = "getLength"

.field private static final METHOD_getMimeType:Ljava/lang/String; = "getMimeType"

.field private static final METHOD_getNativePath:Ljava/lang/String; = "getNativePath"

.field private static final METHOD_getText:Ljava/lang/String; = "getText"

.field private static final METHOD_getType:Ljava/lang/String; = "getType"

.field private static final METHOD_getWidth:Ljava/lang/String; = "getWidth"

.field private static final METHOD_toBase64:Ljava/lang/String; = "toBase64"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "TiBlob"

.field private static final TAG:Ljava/lang/String; = "TiBlobBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 62
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "nativePath"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "mimeType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "append"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getHeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNativePath"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "toBase64"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getWidth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLength"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getMimeType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 82
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    const-string v0, "TiBlob"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 25
    .parameter "name"

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 87
    .local v24, value:Ljava/lang/Object;
    if-eqz v24, :cond_0

    move-object/from16 v10, v24

    .line 496
    :goto_0
    return-object v10

    .line 96
    :cond_0
    const-string v10, "text"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 97
    new-instance v3, Lorg/appcelerator/titanium/TiBlobBindingGen$1;

    const-string v5, "text"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/appcelerator/titanium/TiBlobBindingGen$1;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;ZZZ)V

    .line 120
    .local v3, text_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 121
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "text"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v3

    .line 123
    goto :goto_0

    .line 126
    .end local v3           #text_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v10, "height"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 127
    new-instance v4, Lorg/appcelerator/titanium/TiBlobBindingGen$2;

    const-string v6, "height"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/appcelerator/titanium/TiBlobBindingGen$2;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;ZZZ)V

    .line 150
    .local v4, height_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 151
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "height"

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v4

    .line 153
    goto :goto_0

    .line 156
    .end local v4           #height_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v10, "nativePath"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 157
    new-instance v5, Lorg/appcelerator/titanium/TiBlobBindingGen$3;

    const-string v7, "nativePath"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/appcelerator/titanium/TiBlobBindingGen$3;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;ZZZ)V

    .line 180
    .local v5, nativePath_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 181
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "nativePath"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v5

    .line 183
    goto/16 :goto_0

    .line 186
    .end local v5           #nativePath_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v10, "width"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 187
    new-instance v6, Lorg/appcelerator/titanium/TiBlobBindingGen$4;

    const-string v8, "width"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/appcelerator/titanium/TiBlobBindingGen$4;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;ZZZ)V

    .line 210
    .local v6, width_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 211
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "width"

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v6

    .line 213
    goto/16 :goto_0

    .line 216
    .end local v6           #width_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v10, "length"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 217
    new-instance v7, Lorg/appcelerator/titanium/TiBlobBindingGen$5;

    const-string v9, "length"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/appcelerator/titanium/TiBlobBindingGen$5;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;ZZZ)V

    .line 240
    .local v7, length_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 241
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "length"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v7

    .line 243
    goto/16 :goto_0

    .line 246
    .end local v7           #length_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v10, "type"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 247
    new-instance v8, Lorg/appcelerator/titanium/TiBlobBindingGen$6;

    const-string v10, "type"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lorg/appcelerator/titanium/TiBlobBindingGen$6;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;ZZZ)V

    .line 270
    .local v8, type_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 271
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "type"

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v8

    .line 273
    goto/16 :goto_0

    .line 276
    .end local v8           #type_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v10, "mimeType"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 277
    new-instance v9, Lorg/appcelerator/titanium/TiBlobBindingGen$7;

    const-string v11, "mimeType"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lorg/appcelerator/titanium/TiBlobBindingGen$7;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;ZZZ)V

    .line 300
    .local v9, mimeType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 301
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "mimeType"

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 303
    goto/16 :goto_0

    .line 307
    .end local v9           #mimeType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v10, "append"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 308
    new-instance v15, Lorg/appcelerator/titanium/TiBlobBindingGen$8;

    const-string v10, "append"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiBlobBindingGen$8;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;)V

    .line 331
    .local v15, append_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "append"

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v15

    .line 332
    goto/16 :goto_0

    .line 335
    .end local v15           #append_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v10, "getText"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 336
    new-instance v20, Lorg/appcelerator/titanium/TiBlobBindingGen$9;

    const-string v10, "getText"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiBlobBindingGen$9;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;)V

    .line 351
    .local v20, getText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getText"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v20

    .line 352
    goto/16 :goto_0

    .line 355
    .end local v20           #getText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v10, "getType"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 356
    new-instance v21, Lorg/appcelerator/titanium/TiBlobBindingGen$10;

    const-string v10, "getType"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiBlobBindingGen$10;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;)V

    .line 371
    .local v21, getType_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getType"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v21

    .line 372
    goto/16 :goto_0

    .line 375
    .end local v21           #getType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v10, "getHeight"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 376
    new-instance v16, Lorg/appcelerator/titanium/TiBlobBindingGen$11;

    const-string v10, "getHeight"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiBlobBindingGen$11;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;)V

    .line 391
    .local v16, getHeight_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getHeight"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v16

    .line 392
    goto/16 :goto_0

    .line 395
    .end local v16           #getHeight_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v10, "getNativePath"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 396
    new-instance v19, Lorg/appcelerator/titanium/TiBlobBindingGen$12;

    const-string v10, "getNativePath"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiBlobBindingGen$12;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;)V

    .line 411
    .local v19, getNativePath_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getNativePath"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v19

    .line 412
    goto/16 :goto_0

    .line 415
    .end local v19           #getNativePath_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v10, "toBase64"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 416
    new-instance v23, Lorg/appcelerator/titanium/TiBlobBindingGen$13;

    const-string v10, "toBase64"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiBlobBindingGen$13;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;)V

    .line 431
    .local v23, toBase64_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "toBase64"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v23

    .line 432
    goto/16 :goto_0

    .line 435
    .end local v23           #toBase64_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v10, "getWidth"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 436
    new-instance v22, Lorg/appcelerator/titanium/TiBlobBindingGen$14;

    const-string v10, "getWidth"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiBlobBindingGen$14;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;)V

    .line 451
    .local v22, getWidth_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getWidth"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v22

    .line 452
    goto/16 :goto_0

    .line 455
    .end local v22           #getWidth_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v10, "getLength"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 456
    new-instance v17, Lorg/appcelerator/titanium/TiBlobBindingGen$15;

    const-string v10, "getLength"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiBlobBindingGen$15;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;)V

    .line 471
    .local v17, getLength_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getLength"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v17

    .line 472
    goto/16 :goto_0

    .line 475
    .end local v17           #getLength_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v10, "getMimeType"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 476
    new-instance v18, Lorg/appcelerator/titanium/TiBlobBindingGen$16;

    const-string v10, "getMimeType"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/TiBlobBindingGen$16;-><init>(Lorg/appcelerator/titanium/TiBlobBindingGen;Ljava/lang/String;)V

    .line 491
    .local v18, getMimeType_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/TiBlobBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getMimeType"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v18

    .line 492
    goto/16 :goto_0

    .line 496
    .end local v18           #getMimeType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    const-string v0, "org.appcelerator.titanium.TiBlob"

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
    .line 520
    const-class v0, Lorg/appcelerator/titanium/TiBlob;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const-string v0, "TiBlob"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method
