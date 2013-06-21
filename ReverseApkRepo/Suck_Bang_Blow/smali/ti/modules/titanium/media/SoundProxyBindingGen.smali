.class public Lti/modules/titanium/media/SoundProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "SoundProxyBindingGen.java"


# static fields
.field private static final DYNPROP_duration:Ljava/lang/String; = "duration"

.field private static final DYNPROP_looping:Ljava/lang/String; = "looping"

.field private static final DYNPROP_paused:Ljava/lang/String; = "paused"

.field private static final DYNPROP_playing:Ljava/lang/String; = "playing"

.field private static final DYNPROP_time:Ljava/lang/String; = "time"

.field private static final DYNPROP_url:Ljava/lang/String; = "url"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Media.Sound"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.media.SoundProxy"

.field private static final METHOD_destroy:Ljava/lang/String; = "destroy"

.field private static final METHOD_getDuration:Ljava/lang/String; = "getDuration"

.field private static final METHOD_getTime:Ljava/lang/String; = "getTime"

.field private static final METHOD_isLooping:Ljava/lang/String; = "isLooping"

.field private static final METHOD_isPaused:Ljava/lang/String; = "isPaused"

.field private static final METHOD_isPlaying:Ljava/lang/String; = "isPlaying"

.field private static final METHOD_pause:Ljava/lang/String; = "pause"

.field private static final METHOD_play:Ljava/lang/String; = "play"

.field private static final METHOD_release:Ljava/lang/String; = "release"

.field private static final METHOD_reset:Ljava/lang/String; = "reset"

.field private static final METHOD_setLooping:Ljava/lang/String; = "setLooping"

.field private static final METHOD_setTime:Ljava/lang/String; = "setTime"

.field private static final METHOD_start:Ljava/lang/String; = "start"

.field private static final METHOD_stop:Ljava/lang/String; = "stop"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Sound"

.field private static final TAG:Ljava/lang/String; = "SoundProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 66
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "playing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "paused"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "looping"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stop"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isPaused"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "play"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setLooping"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getDuration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isPlaying"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "destroy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "pause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isLooping"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "reset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "release"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 90
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    const-string v0, "Media.Sound"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 29
    .parameter "name"

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .line 95
    .local v28, value:Ljava/lang/Object;
    if-eqz v28, :cond_0

    move-object/from16 v9, v28

    .line 615
    :goto_0
    return-object v9

    .line 104
    :cond_0
    const-string v9, "playing"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 105
    new-instance v3, Lti/modules/titanium/media/SoundProxyBindingGen$1;

    const-string v5, "playing"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/media/SoundProxyBindingGen$1;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 128
    .local v3, playing_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 129
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "playing"

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v3

    .line 131
    goto :goto_0

    .line 134
    .end local v3           #playing_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v9, "duration"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 135
    new-instance v4, Lti/modules/titanium/media/SoundProxyBindingGen$2;

    const-string v6, "duration"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/media/SoundProxyBindingGen$2;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 158
    .local v4, duration_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 159
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "duration"

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v4

    .line 161
    goto :goto_0

    .line 164
    .end local v4           #duration_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v9, "time"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 165
    new-instance v5, Lti/modules/titanium/media/SoundProxyBindingGen$3;

    const-string v7, "time"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/media/SoundProxyBindingGen$3;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 203
    .local v5, time_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 204
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "time"

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v5

    .line 206
    goto/16 :goto_0

    .line 209
    .end local v5           #time_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v9, "paused"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 210
    new-instance v6, Lti/modules/titanium/media/SoundProxyBindingGen$4;

    const-string v8, "paused"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/media/SoundProxyBindingGen$4;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 233
    .local v6, paused_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 234
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "paused"

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v6

    .line 236
    goto/16 :goto_0

    .line 239
    .end local v6           #paused_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v9, "looping"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 240
    new-instance v7, Lti/modules/titanium/media/SoundProxyBindingGen$5;

    const-string v9, "looping"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/media/SoundProxyBindingGen$5;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 278
    .local v7, looping_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 279
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "looping"

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v7

    .line 281
    goto/16 :goto_0

    .line 284
    .end local v7           #looping_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v9, "url"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 285
    new-instance v8, Lti/modules/titanium/media/SoundProxyBindingGen$6;

    const-string v10, "url"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lti/modules/titanium/media/SoundProxyBindingGen$6;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 325
    .local v8, url_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 326
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "url"

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v8

    .line 328
    goto/16 :goto_0

    .line 332
    .end local v8           #url_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v9, "setTime"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 333
    new-instance v25, Lti/modules/titanium/media/SoundProxyBindingGen$7;

    const-string v9, "setTime"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$7;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 356
    .local v25, setTime_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "setTime"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v25

    .line 357
    goto/16 :goto_0

    .line 360
    .end local v25           #setTime_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v9, "stop"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 361
    new-instance v27, Lti/modules/titanium/media/SoundProxyBindingGen$8;

    const-string v9, "stop"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$8;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 374
    .local v27, stop_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "stop"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v27

    .line 375
    goto/16 :goto_0

    .line 378
    .end local v27           #stop_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v9, "isPaused"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 379
    new-instance v18, Lti/modules/titanium/media/SoundProxyBindingGen$9;

    const-string v9, "isPaused"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$9;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 394
    .local v18, isPaused_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "isPaused"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v18

    .line 395
    goto/16 :goto_0

    .line 398
    .end local v18           #isPaused_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v9, "play"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 399
    new-instance v21, Lti/modules/titanium/media/SoundProxyBindingGen$10;

    const-string v9, "play"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$10;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 412
    .local v21, play_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "play"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v21

    .line 413
    goto/16 :goto_0

    .line 416
    .end local v21           #play_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v9, "setLooping"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 417
    new-instance v24, Lti/modules/titanium/media/SoundProxyBindingGen$11;

    const-string v9, "setLooping"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$11;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 440
    .local v24, setLooping_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "setLooping"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v24

    .line 441
    goto/16 :goto_0

    .line 444
    .end local v24           #setLooping_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v9, "getDuration"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 445
    new-instance v15, Lti/modules/titanium/media/SoundProxyBindingGen$12;

    const-string v9, "getDuration"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$12;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 460
    .local v15, getDuration_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "getDuration"

    invoke-virtual {v9, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v15

    .line 461
    goto/16 :goto_0

    .line 464
    .end local v15           #getDuration_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v9, "isPlaying"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 465
    new-instance v19, Lti/modules/titanium/media/SoundProxyBindingGen$13;

    const-string v9, "isPlaying"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$13;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 480
    .local v19, isPlaying_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "isPlaying"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v19

    .line 481
    goto/16 :goto_0

    .line 484
    .end local v19           #isPlaying_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v9, "destroy"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 485
    new-instance v14, Lti/modules/titanium/media/SoundProxyBindingGen$14;

    const-string v9, "destroy"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$14;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 498
    .local v14, destroy_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "destroy"

    invoke-virtual {v9, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v14

    .line 499
    goto/16 :goto_0

    .line 502
    .end local v14           #destroy_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v9, "pause"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 503
    new-instance v20, Lti/modules/titanium/media/SoundProxyBindingGen$15;

    const-string v9, "pause"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$15;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 516
    .local v20, pause_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "pause"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v20

    .line 517
    goto/16 :goto_0

    .line 520
    .end local v20           #pause_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v9, "getTime"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 521
    new-instance v16, Lti/modules/titanium/media/SoundProxyBindingGen$16;

    const-string v9, "getTime"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$16;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 536
    .local v16, getTime_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "getTime"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v16

    .line 537
    goto/16 :goto_0

    .line 540
    .end local v16           #getTime_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v9, "start"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 541
    new-instance v26, Lti/modules/titanium/media/SoundProxyBindingGen$17;

    const-string v9, "start"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$17;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 554
    .local v26, start_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "start"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v26

    .line 555
    goto/16 :goto_0

    .line 558
    .end local v26           #start_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v9, "isLooping"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 559
    new-instance v17, Lti/modules/titanium/media/SoundProxyBindingGen$18;

    const-string v9, "isLooping"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$18;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 574
    .local v17, isLooping_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "isLooping"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v17

    .line 575
    goto/16 :goto_0

    .line 578
    .end local v17           #isLooping_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v9, "reset"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 579
    new-instance v23, Lti/modules/titanium/media/SoundProxyBindingGen$19;

    const-string v9, "reset"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$19;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 592
    .local v23, reset_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "reset"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v23

    .line 593
    goto/16 :goto_0

    .line 596
    .end local v23           #reset_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v9, "release"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 597
    new-instance v22, Lti/modules/titanium/media/SoundProxyBindingGen$20;

    const-string v9, "release"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/SoundProxyBindingGen$20;-><init>(Lti/modules/titanium/media/SoundProxyBindingGen;Ljava/lang/String;)V

    .line 610
    .local v22, release_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/SoundProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v9, v0

    const-string v10, "release"

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v22

    .line 611
    goto/16 :goto_0

    .line 615
    .end local v22           #release_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const-string v0, "ti.modules.titanium.media.SoundProxy"

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
    .line 639
    const-class v0, Lti/modules/titanium/media/SoundProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    const-string v0, "Sound"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 635
    const/4 v0, 0x0

    return-object v0
.end method
