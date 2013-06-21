.class public Lti/modules/titanium/TitaniumModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "TitaniumModuleBindingGen.java"


# static fields
.field private static final DYNPROP_buildDate:Ljava/lang/String; = "buildDate"

.field private static final DYNPROP_buildHash:Ljava/lang/String; = "buildHash"

.field private static final DYNPROP_buildTimestamp:Ljava/lang/String; = "buildTimestamp"

.field private static final DYNPROP_userAgent:Ljava/lang/String; = "userAgent"

.field private static final DYNPROP_version:Ljava/lang/String; = "version"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Titanium"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.TitaniumModule"

.field private static final METHOD_alert:Ljava/lang/String; = "alert"

.field private static final METHOD_clearInterval:Ljava/lang/String; = "clearInterval"

.field private static final METHOD_clearTimeout:Ljava/lang/String; = "clearTimeout"

.field private static final METHOD_getBuildDate:Ljava/lang/String; = "getBuildDate"

.field private static final METHOD_getBuildHash:Ljava/lang/String; = "getBuildHash"

.field private static final METHOD_getBuildTimestamp:Ljava/lang/String; = "getBuildTimestamp"

.field private static final METHOD_getUserAgent:Ljava/lang/String; = "getUserAgent"

.field private static final METHOD_getVersion:Ljava/lang/String; = "getVersion"

.field private static final METHOD_include:Ljava/lang/String; = "include"

.field private static final METHOD_localize:Ljava/lang/String; = "localize"

.field private static final METHOD_require:Ljava/lang/String; = "require"

.field private static final METHOD_setInterval:Ljava/lang/String; = "setInterval"

.field private static final METHOD_setTimeout:Ljava/lang/String; = "setTimeout"

.field private static final METHOD_stringFormat:Ljava/lang/String; = "stringFormat"

.field private static final METHOD_stringFormatCurrency:Ljava/lang/String; = "stringFormatCurrency"

.field private static final METHOD_stringFormatDate:Ljava/lang/String; = "stringFormatDate"

.field private static final METHOD_stringFormatDecimal:Ljava/lang/String; = "stringFormatDecimal"

.field private static final METHOD_stringFormatTime:Ljava/lang/String; = "stringFormatTime"

.field private static final METHOD_testThrow:Ljava/lang/String; = "testThrow"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Titanium"

.field private static final TAG:Ljava/lang/String; = "TitaniumModuleBindingGen"

.field private static final TOP_LEVEL_L:Ljava/lang/String; = "L"

.field private static final TOP_LEVEL_METHOD_alert:Ljava/lang/String; = "alert"

.field private static final TOP_LEVEL_METHOD_clearInterval:Ljava/lang/String; = "clearInterval"

.field private static final TOP_LEVEL_METHOD_clearTimeout:Ljava/lang/String; = "clearTimeout"

.field private static final TOP_LEVEL_METHOD_localize:Ljava/lang/String; = "localize"

.field private static final TOP_LEVEL_METHOD_require:Ljava/lang/String; = "require"

.field private static final TOP_LEVEL_METHOD_setInterval:Ljava/lang/String; = "setInterval"

.field private static final TOP_LEVEL_METHOD_setTimeout:Ljava/lang/String; = "setTimeout"

.field private static final TOP_LEVEL_METHOD_stringFormat:Ljava/lang/String; = "stringFormat"

.field private static final TOP_LEVEL_METHOD_stringFormatCurrency:Ljava/lang/String; = "stringFormatCurrency"

.field private static final TOP_LEVEL_METHOD_stringFormatDate:Ljava/lang/String; = "stringFormatDate"

.field private static final TOP_LEVEL_METHOD_stringFormatDecimal:Ljava/lang/String; = "stringFormatDecimal"

.field private static final TOP_LEVEL_METHOD_stringFormatTime:Ljava/lang/String; = "stringFormatTime"

.field private static final TOP_LEVEL_String_format:Ljava/lang/String; = "String.format"

.field private static final TOP_LEVEL_String_formatCurrency:Ljava/lang/String; = "String.formatCurrency"

.field private static final TOP_LEVEL_String_formatDate:Ljava/lang/String; = "String.formatDate"

.field private static final TOP_LEVEL_String_formatDecimal:Ljava/lang/String; = "String.formatDecimal"

.field private static final TOP_LEVEL_String_formatTime:Ljava/lang/String; = "String.formatTime"

.field private static final TOP_LEVEL_Ti:Ljava/lang/String; = "Ti"

.field private static final TOP_LEVEL_Titanium:Ljava/lang/String; = "Titanium"

.field private static final TOP_LEVEL_alert:Ljava/lang/String; = "alert"

.field private static final TOP_LEVEL_clearInterval:Ljava/lang/String; = "clearInterval"

.field private static final TOP_LEVEL_clearTimeout:Ljava/lang/String; = "clearTimeout"

.field private static final TOP_LEVEL_require:Ljava/lang/String; = "require"

.field private static final TOP_LEVEL_setInterval:Ljava/lang/String; = "setInterval"

.field private static final TOP_LEVEL_setTimeout:Ljava/lang/String; = "setTimeout"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 96
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "userAgent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "buildHash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "buildDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "buildTimestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getBuildHash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "localize"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stringFormatDecimal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "alert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "testThrow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getBuildTimestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stringFormatDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "include"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stringFormatTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getBuildDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTimeout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "clearInterval"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getUserAgent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stringFormat"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "clearTimeout"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "require"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stringFormatCurrency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setInterval"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 7
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    const-string v6, "setInterval"

    const-string v5, "require"

    const-string v4, "clearTimeout"

    const-string v3, "clearInterval"

    const-string v2, "alert"

    .line 124
    const-string v0, "Ti"

    invoke-virtual {p1, v0, p2}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v0, "Titanium"

    invoke-virtual {p1, v0, p2}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v0, "String.formatTime"

    const-string v1, "stringFormatTime"

    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v0, "L"

    const-string v1, "localize"

    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v0, "String.formatDecimal"

    const-string v1, "stringFormatDecimal"

    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v0, "setTimeout"

    const-string v1, "setTimeout"

    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "alert"

    const-string v0, "alert"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v0, "clearInterval"

    const-string v0, "clearInterval"

    invoke-virtual {p2, v3}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v0, "clearTimeout"

    const-string v0, "clearTimeout"

    invoke-virtual {p2, v4}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v0, "String.format"

    const-string v1, "stringFormat"

    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v0, "require"

    const-string v0, "require"

    invoke-virtual {p2, v5}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v0, "String.formatDate"

    const-string v1, "stringFormatDate"

    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v0, "String.formatCurrency"

    const-string v1, "stringFormatCurrency"

    invoke-virtual {p2, v1}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v0, "setInterval"

    const-string v0, "setInterval"

    invoke-virtual {p2, v6}, Lorg/appcelerator/kroll/KrollProxy;->getBoundMethodForThis(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lorg/appcelerator/titanium/kroll/KrollBridge;->bindToTopLevel(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    const-string v0, "Titanium"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 33
    .parameter "name"

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .line 143
    .local v32, value:Ljava/lang/Object;
    if-eqz v32, :cond_0

    move-object/from16 v8, v32

    .line 855
    :goto_0
    return-object v8

    .line 152
    :cond_0
    const-string v8, "userAgent"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    new-instance v3, Lti/modules/titanium/TitaniumModuleBindingGen$1;

    const-string v5, "userAgent"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/TitaniumModuleBindingGen$1;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 176
    .local v3, userAgent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 177
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "userAgent"

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v3

    .line 179
    goto :goto_0

    .line 182
    .end local v3           #userAgent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v8, "buildHash"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 183
    new-instance v4, Lti/modules/titanium/TitaniumModuleBindingGen$2;

    const-string v6, "buildHash"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/TitaniumModuleBindingGen$2;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 206
    .local v4, buildHash_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 207
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "buildHash"

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v4

    .line 209
    goto :goto_0

    .line 212
    .end local v4           #buildHash_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v8, "buildDate"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 213
    new-instance v5, Lti/modules/titanium/TitaniumModuleBindingGen$3;

    const-string v7, "buildDate"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/TitaniumModuleBindingGen$3;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 236
    .local v5, buildDate_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 237
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "buildDate"

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v5

    .line 239
    goto/16 :goto_0

    .line 242
    .end local v5           #buildDate_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v8, "buildTimestamp"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 243
    new-instance v6, Lti/modules/titanium/TitaniumModuleBindingGen$4;

    const-string v8, "buildTimestamp"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/TitaniumModuleBindingGen$4;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 266
    .local v6, buildTimestamp_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 267
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "buildTimestamp"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v6

    .line 269
    goto/16 :goto_0

    .line 272
    .end local v6           #buildTimestamp_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v8, "version"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 273
    new-instance v7, Lti/modules/titanium/TitaniumModuleBindingGen$5;

    const-string v9, "version"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/TitaniumModuleBindingGen$5;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 296
    .local v7, version_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 297
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "version"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v7

    .line 299
    goto/16 :goto_0

    .line 303
    .end local v7           #version_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v8, "getBuildHash"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 304
    new-instance v17, Lti/modules/titanium/TitaniumModuleBindingGen$6;

    const-string v8, "getBuildHash"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$6;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 319
    .local v17, getBuildHash_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "getBuildHash"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v17

    .line 320
    goto/16 :goto_0

    .line 323
    .end local v17           #getBuildHash_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v8, "localize"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 324
    new-instance v22, Lti/modules/titanium/TitaniumModuleBindingGen$7;

    const-string v8, "localize"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$7;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 347
    .local v22, localize_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "localize"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v22

    .line 348
    goto/16 :goto_0

    .line 351
    .end local v22           #localize_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v8, "stringFormatDecimal"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 352
    new-instance v28, Lti/modules/titanium/TitaniumModuleBindingGen$8;

    const-string v8, "stringFormatDecimal"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$8;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 373
    .local v28, stringFormatDecimal_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "stringFormatDecimal"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v28

    .line 374
    goto/16 :goto_0

    .line 377
    .end local v28           #stringFormatDecimal_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v8, "alert"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 378
    new-instance v13, Lti/modules/titanium/TitaniumModuleBindingGen$9;

    const-string v8, "alert"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$9;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 403
    .local v13, alert_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "alert"

    invoke-virtual {v8, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v13

    .line 404
    goto/16 :goto_0

    .line 407
    .end local v13           #alert_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v8, "testThrow"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 408
    new-instance v31, Lti/modules/titanium/TitaniumModuleBindingGen$10;

    const-string v8, "testThrow"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$10;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 421
    .local v31, testThrow_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "testThrow"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v31

    .line 422
    goto/16 :goto_0

    .line 425
    .end local v31           #testThrow_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v8, "getBuildTimestamp"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 426
    new-instance v18, Lti/modules/titanium/TitaniumModuleBindingGen$11;

    const-string v8, "getBuildTimestamp"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$11;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 441
    .local v18, getBuildTimestamp_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "getBuildTimestamp"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v18

    .line 442
    goto/16 :goto_0

    .line 445
    .end local v18           #getBuildTimestamp_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v8, "stringFormatDate"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 446
    new-instance v27, Lti/modules/titanium/TitaniumModuleBindingGen$12;

    const-string v8, "stringFormatDate"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$12;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 486
    .local v27, stringFormatDate_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "stringFormatDate"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v27

    .line 487
    goto/16 :goto_0

    .line 490
    .end local v27           #stringFormatDate_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v8, "include"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 491
    new-instance v21, Lti/modules/titanium/TitaniumModuleBindingGen$13;

    const-string v8, "include"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$13;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 512
    .local v21, include_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "include"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v21

    .line 513
    goto/16 :goto_0

    .line 516
    .end local v21           #include_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v8, "stringFormatTime"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 517
    new-instance v29, Lti/modules/titanium/TitaniumModuleBindingGen$14;

    const-string v8, "stringFormatTime"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$14;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 542
    .local v29, stringFormatTime_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "stringFormatTime"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v29

    .line 543
    goto/16 :goto_0

    .line 546
    .end local v29           #stringFormatTime_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v8, "getVersion"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 547
    new-instance v20, Lti/modules/titanium/TitaniumModuleBindingGen$15;

    const-string v8, "getVersion"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$15;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 562
    .local v20, getVersion_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "getVersion"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v20

    .line 563
    goto/16 :goto_0

    .line 566
    .end local v20           #getVersion_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v8, "getBuildDate"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 567
    new-instance v16, Lti/modules/titanium/TitaniumModuleBindingGen$16;

    const-string v8, "getBuildDate"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$16;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 582
    .local v16, getBuildDate_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "getBuildDate"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v16

    .line 583
    goto/16 :goto_0

    .line 586
    .end local v16           #getBuildDate_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v8, "setTimeout"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 587
    new-instance v25, Lti/modules/titanium/TitaniumModuleBindingGen$17;

    const-string v8, "setTimeout"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$17;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 629
    .local v25, setTimeout_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "setTimeout"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v25

    .line 630
    goto/16 :goto_0

    .line 633
    .end local v25           #setTimeout_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v8, "clearInterval"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 634
    new-instance v14, Lti/modules/titanium/TitaniumModuleBindingGen$18;

    const-string v8, "clearInterval"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$18;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 657
    .local v14, clearInterval_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "clearInterval"

    invoke-virtual {v8, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v14

    .line 658
    goto/16 :goto_0

    .line 661
    .end local v14           #clearInterval_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v8, "getUserAgent"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 662
    new-instance v19, Lti/modules/titanium/TitaniumModuleBindingGen$19;

    const-string v8, "getUserAgent"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$19;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 677
    .local v19, getUserAgent_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "getUserAgent"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v19

    .line 678
    goto/16 :goto_0

    .line 681
    .end local v19           #getUserAgent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v8, "stringFormat"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 682
    new-instance v30, Lti/modules/titanium/TitaniumModuleBindingGen$20;

    const-string v8, "stringFormat"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$20;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 713
    .local v30, stringFormat_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "stringFormat"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v30

    .line 714
    goto/16 :goto_0

    .line 717
    .end local v30           #stringFormat_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    const-string v8, "clearTimeout"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 718
    new-instance v15, Lti/modules/titanium/TitaniumModuleBindingGen$21;

    const-string v8, "clearTimeout"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$21;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 741
    .local v15, clearTimeout_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "clearTimeout"

    invoke-virtual {v8, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v15

    .line 742
    goto/16 :goto_0

    .line 745
    .end local v15           #clearTimeout_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_15
    const-string v8, "require"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 746
    new-instance v23, Lti/modules/titanium/TitaniumModuleBindingGen$22;

    const-string v8, "require"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$22;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 773
    .local v23, require_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "require"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v23

    .line 774
    goto/16 :goto_0

    .line 777
    .end local v23           #require_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_16
    const-string v8, "stringFormatCurrency"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 778
    new-instance v26, Lti/modules/titanium/TitaniumModuleBindingGen$23;

    const-string v8, "stringFormatCurrency"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$23;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 803
    .local v26, stringFormatCurrency_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "stringFormatCurrency"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v26

    .line 804
    goto/16 :goto_0

    .line 807
    .end local v26           #stringFormatCurrency_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_17
    const-string v8, "setInterval"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 808
    new-instance v24, Lti/modules/titanium/TitaniumModuleBindingGen$24;

    const-string v8, "setInterval"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/TitaniumModuleBindingGen$24;-><init>(Lti/modules/titanium/TitaniumModuleBindingGen;Ljava/lang/String;)V

    .line 850
    .local v24, setInterval_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/TitaniumModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v8, v0

    const-string v9, "setInterval"

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v24

    .line 851
    goto/16 :goto_0

    .line 855
    .end local v24           #setInterval_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_18
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    const-string v0, "ti.modules.titanium.TitaniumModule"

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
    .line 879
    const-class v0, Lti/modules/titanium/TitaniumModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    const-string v0, "Titanium"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 875
    new-instance v0, Lti/modules/titanium/TitaniumModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/TitaniumModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
