.class public Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "NotificationProxyBindingGen.java"


# static fields
.field private static final DYNPROP_audioStreamType:Ljava/lang/String; = "audioStreamType"

.field private static final DYNPROP_contentIntent:Ljava/lang/String; = "contentIntent"

.field private static final DYNPROP_contentView:Ljava/lang/String; = "contentView"

.field private static final DYNPROP_defaults:Ljava/lang/String; = "defaults"

.field private static final DYNPROP_deleteIntent:Ljava/lang/String; = "deleteIntent"

.field private static final DYNPROP_flags:Ljava/lang/String; = "flags"

.field private static final DYNPROP_icon:Ljava/lang/String; = "icon"

.field private static final DYNPROP_iconLevel:Ljava/lang/String; = "iconLevel"

.field private static final DYNPROP_ledARGB:Ljava/lang/String; = "ledARGB"

.field private static final DYNPROP_ledOffMS:Ljava/lang/String; = "ledOffMS"

.field private static final DYNPROP_ledOnMS:Ljava/lang/String; = "ledOnMS"

.field private static final DYNPROP_number:Ljava/lang/String; = "number"

.field private static final DYNPROP_sound:Ljava/lang/String; = "sound"

.field private static final DYNPROP_tickerText:Ljava/lang/String; = "tickerText"

.field private static final DYNPROP_vibratePattern:Ljava/lang/String; = "vibratePattern"

.field private static final DYNPROP_when:Ljava/lang/String; = "when"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Android.Notification"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.android.notificationmanager.NotificationProxy"

.field private static final METHOD_setAudioStreamType:Ljava/lang/String; = "setAudioStreamType"

.field private static final METHOD_setContentIntent:Ljava/lang/String; = "setContentIntent"

.field private static final METHOD_setContentView:Ljava/lang/String; = "setContentView"

.field private static final METHOD_setDefaults:Ljava/lang/String; = "setDefaults"

.field private static final METHOD_setDeleteIntent:Ljava/lang/String; = "setDeleteIntent"

.field private static final METHOD_setFlags:Ljava/lang/String; = "setFlags"

.field private static final METHOD_setIcon:Ljava/lang/String; = "setIcon"

.field private static final METHOD_setIconLevel:Ljava/lang/String; = "setIconLevel"

.field private static final METHOD_setLatestEventInfo:Ljava/lang/String; = "setLatestEventInfo"

.field private static final METHOD_setLedARGB:Ljava/lang/String; = "setLedARGB"

.field private static final METHOD_setLedOffMS:Ljava/lang/String; = "setLedOffMS"

.field private static final METHOD_setLedOnMS:Ljava/lang/String; = "setLedOnMS"

.field private static final METHOD_setNumber:Ljava/lang/String; = "setNumber"

.field private static final METHOD_setSound:Ljava/lang/String; = "setSound"

.field private static final METHOD_setTickerText:Ljava/lang/String; = "setTickerText"

.field private static final METHOD_setVibratePattern:Ljava/lang/String; = "setVibratePattern"

.field private static final METHOD_setWhen:Ljava/lang/String; = "setWhen"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Notification"

.field private static final TAG:Ljava/lang/String; = "NotificationProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 79
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "vibratePattern"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "flags"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "iconLevel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "contentView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "audioStreamType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "deleteIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "defaults"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "tickerText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ledARGB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "when"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ledOnMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "contentIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ledOffMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setDeleteIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setContentView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setIconLevel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setFlags"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setLedOnMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setDefaults"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTickerText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setLatestEventInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setLedARGB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setSound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setAudioStreamType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setVibratePattern"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setLedOffMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setWhen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setIcon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setContentIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 116
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1229
    const-string v0, "Android.Notification"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 42
    .parameter "name"

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .line 121
    .local v41, value:Ljava/lang/Object;
    if-eqz v41, :cond_0

    move-object/from16 v19, v41

    .line 1221
    :goto_0
    return-object v19

    .line 130
    :cond_0
    const-string v19, "vibratePattern"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 131
    new-instance v3, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$1;

    const-string v5, "vibratePattern"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$1;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 158
    .local v3, vibratePattern_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 159
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "vibratePattern"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v3

    .line 161
    goto :goto_0

    .line 164
    .end local v3           #vibratePattern_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v19, "icon"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 165
    new-instance v4, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$2;

    const-string v6, "icon"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$2;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 197
    .local v4, icon_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 198
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v4

    .line 200
    goto :goto_0

    .line 203
    .end local v4           #icon_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v19, "flags"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 204
    new-instance v5, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$3;

    const-string v7, "flags"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$3;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 234
    .local v5, flags_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 235
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "flags"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v5

    .line 237
    goto/16 :goto_0

    .line 240
    .end local v5           #flags_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v19, "iconLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 241
    new-instance v6, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$4;

    const-string v8, "iconLevel"

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$4;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 271
    .local v6, iconLevel_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 272
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "iconLevel"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v6

    .line 274
    goto/16 :goto_0

    .line 277
    .end local v6           #iconLevel_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v19, "contentView"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 278
    new-instance v7, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$5;

    const-string v9, "contentView"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$5;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 308
    .local v7, contentView_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 309
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "contentView"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v7

    .line 311
    goto/16 :goto_0

    .line 314
    .end local v7           #contentView_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v19, "number"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 315
    new-instance v8, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$6;

    const-string v10, "number"

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$6;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 345
    .local v8, number_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 346
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "number"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v8

    .line 348
    goto/16 :goto_0

    .line 351
    .end local v8           #number_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v19, "audioStreamType"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 352
    new-instance v9, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$7;

    const-string v11, "audioStreamType"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$7;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 382
    .local v9, audioStreamType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 383
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "audioStreamType"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v9

    .line 385
    goto/16 :goto_0

    .line 388
    .end local v9           #audioStreamType_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v19, "deleteIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 389
    new-instance v10, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$8;

    const-string v12, "deleteIntent"

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$8;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 419
    .local v10, deleteIntent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 420
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "deleteIntent"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v10

    .line 422
    goto/16 :goto_0

    .line 425
    .end local v10           #deleteIntent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_8
    const-string v19, "defaults"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 426
    new-instance v11, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$9;

    const-string v13, "defaults"

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$9;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 456
    .local v11, defaults_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 457
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "defaults"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v11

    .line 459
    goto/16 :goto_0

    .line 462
    .end local v11           #defaults_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_9
    const-string v19, "tickerText"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 463
    new-instance v12, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$10;

    const-string v14, "tickerText"

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$10;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 493
    .local v12, tickerText_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 494
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "tickerText"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v12

    .line 496
    goto/16 :goto_0

    .line 499
    .end local v12           #tickerText_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_a
    const-string v19, "ledARGB"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 500
    new-instance v13, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$11;

    const-string v15, "ledARGB"

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$11;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 530
    .local v13, ledARGB_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 531
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "ledARGB"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v13

    .line 533
    goto/16 :goto_0

    .line 536
    .end local v13           #ledARGB_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_b
    const-string v19, "sound"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 537
    new-instance v14, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$12;

    const-string v16, "sound"

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v19}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$12;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 569
    .local v14, sound_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 570
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "sound"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v14

    .line 572
    goto/16 :goto_0

    .line 575
    .end local v14           #sound_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_c
    const-string v19, "when"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 576
    new-instance v15, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$13;

    const-string v17, "when"

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v20}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$13;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 606
    .local v15, when_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 607
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "when"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v15

    .line 609
    goto/16 :goto_0

    .line 612
    .end local v15           #when_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_d
    const-string v19, "ledOnMS"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 613
    new-instance v16, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$14;

    const-string v18, "ledOnMS"

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$14;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 643
    .local v16, ledOnMS_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 644
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "ledOnMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v16

    .line 646
    goto/16 :goto_0

    .line 649
    .end local v16           #ledOnMS_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_e
    const-string v19, "contentIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 650
    new-instance v17, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$15;

    const-string v19, "contentIntent"

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v22}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$15;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 680
    .local v17, contentIntent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 681
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "contentIntent"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v17

    .line 683
    goto/16 :goto_0

    .line 686
    .end local v17           #contentIntent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_f
    const-string v19, "ledOffMS"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 687
    new-instance v18, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$16;

    const-string v20, "ledOffMS"

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v19, p0

    invoke-direct/range {v18 .. v23}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$16;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 717
    .local v18, ledOffMS_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 718
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "ledOffMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v18

    .line 720
    goto/16 :goto_0

    .line 724
    .end local v18           #ledOffMS_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_10
    const-string v19, "setDeleteIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 725
    new-instance v28, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$17;

    const-string v19, "setDeleteIntent"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$17;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 748
    .local v28, setDeleteIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setDeleteIntent"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v28

    .line 749
    goto/16 :goto_0

    .line 752
    .end local v28           #setDeleteIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v19, "setContentView"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 753
    new-instance v26, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$18;

    const-string v19, "setContentView"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$18;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 776
    .local v26, setContentView_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setContentView"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v26

    .line 777
    goto/16 :goto_0

    .line 780
    .end local v26           #setContentView_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v19, "setIconLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 781
    new-instance v30, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$19;

    const-string v19, "setIconLevel"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$19;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 804
    .local v30, setIconLevel_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setIconLevel"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v30

    .line 805
    goto/16 :goto_0

    .line 808
    .end local v30           #setIconLevel_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v19, "setFlags"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 809
    new-instance v29, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$20;

    const-string v19, "setFlags"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$20;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 832
    .local v29, setFlags_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setFlags"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v29

    .line 833
    goto/16 :goto_0

    .line 836
    .end local v29           #setFlags_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    const-string v19, "setLedOnMS"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 837
    new-instance v35, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$21;

    const-string v19, "setLedOnMS"

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$21;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 860
    .local v35, setLedOnMS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setLedOnMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v35

    .line 861
    goto/16 :goto_0

    .line 864
    .end local v35           #setLedOnMS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_15
    const-string v19, "setDefaults"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 865
    new-instance v27, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$22;

    const-string v19, "setDefaults"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$22;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 888
    .local v27, setDefaults_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setDefaults"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v27

    .line 889
    goto/16 :goto_0

    .line 892
    .end local v27           #setDefaults_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_16
    const-string v19, "setTickerText"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 893
    new-instance v38, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$23;

    const-string v19, "setTickerText"

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$23;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 916
    .local v38, setTickerText_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setTickerText"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v38

    .line 917
    goto/16 :goto_0

    .line 920
    .end local v38           #setTickerText_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_17
    const-string v19, "setLatestEventInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 921
    new-instance v32, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$24;

    const-string v19, "setLatestEventInfo"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$24;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 964
    .local v32, setLatestEventInfo_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setLatestEventInfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v32

    .line 965
    goto/16 :goto_0

    .line 968
    .end local v32           #setLatestEventInfo_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_18
    const-string v19, "setLedARGB"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 969
    new-instance v33, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$25;

    const-string v19, "setLedARGB"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$25;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 992
    .local v33, setLedARGB_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setLedARGB"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v33

    .line 993
    goto/16 :goto_0

    .line 996
    .end local v33           #setLedARGB_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_19
    const-string v19, "setSound"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 997
    new-instance v37, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$26;

    const-string v19, "setSound"

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$26;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 1022
    .local v37, setSound_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setSound"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v37

    .line 1023
    goto/16 :goto_0

    .line 1026
    .end local v37           #setSound_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1a
    const-string v19, "setAudioStreamType"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 1027
    new-instance v24, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$27;

    const-string v19, "setAudioStreamType"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$27;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 1050
    .local v24, setAudioStreamType_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setAudioStreamType"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v24

    .line 1051
    goto/16 :goto_0

    .line 1054
    .end local v24           #setAudioStreamType_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1b
    const-string v19, "setVibratePattern"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1055
    new-instance v39, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$28;

    const-string v19, "setVibratePattern"

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$28;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 1074
    .local v39, setVibratePattern_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setVibratePattern"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v39

    .line 1075
    goto/16 :goto_0

    .line 1078
    .end local v39           #setVibratePattern_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1c
    const-string v19, "setLedOffMS"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 1079
    new-instance v34, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$29;

    const-string v19, "setLedOffMS"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$29;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 1102
    .local v34, setLedOffMS_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setLedOffMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v34

    .line 1103
    goto/16 :goto_0

    .line 1106
    .end local v34           #setLedOffMS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1d
    const-string v19, "setWhen"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 1107
    new-instance v40, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$30;

    const-string v19, "setWhen"

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$30;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 1130
    .local v40, setWhen_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setWhen"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v40

    .line 1131
    goto/16 :goto_0

    .line 1134
    .end local v40           #setWhen_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1e
    const-string v19, "setNumber"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 1135
    new-instance v36, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$31;

    const-string v19, "setNumber"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$31;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 1158
    .local v36, setNumber_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setNumber"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v36

    .line 1159
    goto/16 :goto_0

    .line 1162
    .end local v36           #setNumber_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1f
    const-string v19, "setIcon"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 1163
    new-instance v31, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$32;

    const-string v19, "setIcon"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$32;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 1188
    .local v31, setIcon_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setIcon"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v31

    .line 1189
    goto/16 :goto_0

    .line 1192
    .end local v31           #setIcon_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_20
    const-string v19, "setContentIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 1193
    new-instance v25, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$33;

    const-string v19, "setContentIntent"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen$33;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;Ljava/lang/String;)V

    .line 1216
    .local v25, setContentIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/android/notificationmanager/NotificationProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setContentIntent"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v25

    .line 1217
    goto/16 :goto_0

    .line 1221
    .end local v25           #setContentIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_21
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    const-string v0, "ti.modules.titanium.android.notificationmanager.NotificationProxy"

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
    .line 1245
    const-class v0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1233
    const-string v0, "Notification"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 1249
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 1241
    const/4 v0, 0x0

    return-object v0
.end method
