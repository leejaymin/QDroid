.class public Lti/modules/titanium/locale/LocaleModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "LocaleModuleBindingGen.java"


# static fields
.field private static final DYNPROP_currentCountry:Ljava/lang/String; = "currentCountry"

.field private static final DYNPROP_currentLanguage:Ljava/lang/String; = "currentLanguage"

.field private static final DYNPROP_currentLocale:Ljava/lang/String; = "currentLocale"

.field private static final DYNPROP_language:Ljava/lang/String; = "language"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Locale"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.locale.LocaleModule"

.field private static final METHOD_formatTelephoneNumber:Ljava/lang/String; = "formatTelephoneNumber"

.field private static final METHOD_getCurrencyCode:Ljava/lang/String; = "getCurrencyCode"

.field private static final METHOD_getCurrencySymbol:Ljava/lang/String; = "getCurrencySymbol"

.field private static final METHOD_getCurrentCountry:Ljava/lang/String; = "getCurrentCountry"

.field private static final METHOD_getCurrentLanguage:Ljava/lang/String; = "getCurrentLanguage"

.field private static final METHOD_getCurrentLocale:Ljava/lang/String; = "getCurrentLocale"

.field private static final METHOD_getLocaleCurrencySymbol:Ljava/lang/String; = "getLocaleCurrencySymbol"

.field private static final METHOD_getString:Ljava/lang/String; = "getString"

.field private static final METHOD_setLanguage:Ljava/lang/String; = "setLanguage"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Locale"

.field private static final TAG:Ljava/lang/String; = "LocaleModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 59
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "currentLocale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "currentLanguage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "language"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "currentCountry"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getCurrencyCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getCurrentLanguage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getCurrencySymbol"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getCurrentCountry"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getCurrentLocale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLocaleCurrencySymbol"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setLanguage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getString"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "formatTelephoneNumber"

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
    .line 482
    const-string v0, "Locale"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 22
    .parameter "name"

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 81
    .local v21, value:Ljava/lang/Object;
    if-eqz v21, :cond_0

    move-object/from16 v7, v21

    .line 474
    :goto_0
    return-object v7

    .line 90
    :cond_0
    const-string v7, "currentLocale"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 91
    new-instance v3, Lti/modules/titanium/locale/LocaleModuleBindingGen$1;

    const-string v5, "currentLocale"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/locale/LocaleModuleBindingGen$1;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 114
    .local v3, currentLocale_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 115
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "currentLocale"

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v3

    .line 117
    goto :goto_0

    .line 120
    .end local v3           #currentLocale_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v7, "currentLanguage"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    new-instance v4, Lti/modules/titanium/locale/LocaleModuleBindingGen$2;

    const-string v6, "currentLanguage"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/locale/LocaleModuleBindingGen$2;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 144
    .local v4, currentLanguage_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 145
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "currentLanguage"

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    .line 147
    goto :goto_0

    .line 150
    .end local v4           #currentLanguage_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v7, "language"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 151
    new-instance v5, Lti/modules/titanium/locale/LocaleModuleBindingGen$3;

    const-string v7, "language"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/locale/LocaleModuleBindingGen$3;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 181
    .local v5, language_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 182
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "language"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v5

    .line 184
    goto/16 :goto_0

    .line 187
    .end local v5           #language_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v7, "currentCountry"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 188
    new-instance v6, Lti/modules/titanium/locale/LocaleModuleBindingGen$4;

    const-string v8, "currentCountry"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/locale/LocaleModuleBindingGen$4;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 211
    .local v6, currentCountry_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 212
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "currentCountry"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    .line 214
    goto/16 :goto_0

    .line 218
    .end local v6           #currentCountry_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v7, "getCurrencyCode"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 219
    new-instance v13, Lti/modules/titanium/locale/LocaleModuleBindingGen$5;

    const-string v7, "getCurrencyCode"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/locale/LocaleModuleBindingGen$5;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;)V

    .line 244
    .local v13, getCurrencyCode_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getCurrencyCode"

    invoke-virtual {v7, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v13

    .line 245
    goto/16 :goto_0

    .line 248
    .end local v13           #getCurrencyCode_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v7, "getCurrentLanguage"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 249
    new-instance v16, Lti/modules/titanium/locale/LocaleModuleBindingGen$6;

    const-string v7, "getCurrentLanguage"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/locale/LocaleModuleBindingGen$6;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;)V

    .line 264
    .local v16, getCurrentLanguage_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getCurrentLanguage"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v16

    .line 265
    goto/16 :goto_0

    .line 268
    .end local v16           #getCurrentLanguage_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v7, "getCurrencySymbol"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 269
    new-instance v14, Lti/modules/titanium/locale/LocaleModuleBindingGen$7;

    const-string v7, "getCurrencySymbol"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/locale/LocaleModuleBindingGen$7;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;)V

    .line 294
    .local v14, getCurrencySymbol_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getCurrencySymbol"

    invoke-virtual {v7, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v14

    .line 295
    goto/16 :goto_0

    .line 298
    .end local v14           #getCurrencySymbol_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v7, "getCurrentCountry"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 299
    new-instance v15, Lti/modules/titanium/locale/LocaleModuleBindingGen$8;

    const-string v7, "getCurrentCountry"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/locale/LocaleModuleBindingGen$8;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;)V

    .line 314
    .local v15, getCurrentCountry_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getCurrentCountry"

    invoke-virtual {v7, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v15

    .line 315
    goto/16 :goto_0

    .line 318
    .end local v15           #getCurrentCountry_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v7, "getCurrentLocale"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 319
    new-instance v17, Lti/modules/titanium/locale/LocaleModuleBindingGen$9;

    const-string v7, "getCurrentLocale"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/locale/LocaleModuleBindingGen$9;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;)V

    .line 334
    .local v17, getCurrentLocale_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getCurrentLocale"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v17

    .line 335
    goto/16 :goto_0

    .line 338
    .end local v17           #getCurrentLocale_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v7, "getLocaleCurrencySymbol"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 339
    new-instance v18, Lti/modules/titanium/locale/LocaleModuleBindingGen$10;

    const-string v7, "getLocaleCurrencySymbol"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/locale/LocaleModuleBindingGen$10;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;)V

    .line 364
    .local v18, getLocaleCurrencySymbol_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getLocaleCurrencySymbol"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v18

    .line 365
    goto/16 :goto_0

    .line 368
    .end local v18           #getLocaleCurrencySymbol_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v7, "setLanguage"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 369
    new-instance v20, Lti/modules/titanium/locale/LocaleModuleBindingGen$11;

    const-string v7, "setLanguage"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/locale/LocaleModuleBindingGen$11;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;)V

    .line 392
    .local v20, setLanguage_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "setLanguage"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v20

    .line 393
    goto/16 :goto_0

    .line 396
    .end local v20           #setLanguage_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v7, "getString"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 397
    new-instance v19, Lti/modules/titanium/locale/LocaleModuleBindingGen$12;

    const-string v7, "getString"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/locale/LocaleModuleBindingGen$12;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;)V

    .line 439
    .local v19, getString_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "getString"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v19

    .line 440
    goto/16 :goto_0

    .line 443
    .end local v19           #getString_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v7, "formatTelephoneNumber"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 444
    new-instance v12, Lti/modules/titanium/locale/LocaleModuleBindingGen$13;

    const-string v7, "formatTelephoneNumber"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/locale/LocaleModuleBindingGen$13;-><init>(Lti/modules/titanium/locale/LocaleModuleBindingGen;Ljava/lang/String;)V

    .line 469
    .local v12, formatTelephoneNumber_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/locale/LocaleModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v7, v0

    const-string v8, "formatTelephoneNumber"

    invoke-virtual {v7, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v12

    .line 470
    goto/16 :goto_0

    .line 474
    .end local v12           #formatTelephoneNumber_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    const-string v0, "ti.modules.titanium.locale.LocaleModule"

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
    .line 498
    const-class v0, Lti/modules/titanium/locale/LocaleModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    const-string v0, "Locale"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 494
    new-instance v0, Lti/modules/titanium/locale/LocaleModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/locale/LocaleModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
