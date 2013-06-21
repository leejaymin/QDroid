.class public Lti/modules/titanium/media/AudioPlayerProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "AudioPlayerProxyBindingGen.java"


# static fields
.field private static final CONST_STATE_BUFFERING:Ljava/lang/String; = "STATE_BUFFERING"

.field private static final CONST_STATE_INITIALIZED:Ljava/lang/String; = "STATE_INITIALIZED"

.field private static final CONST_STATE_PAUSED:Ljava/lang/String; = "STATE_PAUSED"

.field private static final CONST_STATE_PLAYING:Ljava/lang/String; = "STATE_PLAYING"

.field private static final CONST_STATE_STARTING:Ljava/lang/String; = "STATE_STARTING"

.field private static final CONST_STATE_STOPPED:Ljava/lang/String; = "STATE_STOPPED"

.field private static final CONST_STATE_STOPPING:Ljava/lang/String; = "STATE_STOPPING"

.field private static final CONST_STATE_WAITING_FOR_DATA:Ljava/lang/String; = "STATE_WAITING_FOR_DATA"

.field private static final CONST_STATE_WAITING_FOR_QUEUE:Ljava/lang/String; = "STATE_WAITING_FOR_QUEUE"

.field private static final DYNPROP_paused:Ljava/lang/String; = "paused"

.field private static final DYNPROP_playing:Ljava/lang/String; = "playing"

.field private static final DYNPROP_url:Ljava/lang/String; = "url"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Media.AudioPlayer"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.media.AudioPlayerProxy"

.field private static final METHOD_destroy:Ljava/lang/String; = "destroy"

.field private static final METHOD_isPaused:Ljava/lang/String; = "isPaused"

.field private static final METHOD_isPlaying:Ljava/lang/String; = "isPlaying"

.field private static final METHOD_pause:Ljava/lang/String; = "pause"

.field private static final METHOD_play:Ljava/lang/String; = "play"

.field private static final METHOD_release:Ljava/lang/String; = "release"

.field private static final METHOD_setUrl:Ljava/lang/String; = "setUrl"

.field private static final METHOD_start:Ljava/lang/String; = "start"

.field private static final METHOD_stop:Ljava/lang/String; = "stop"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "AudioPlayer"

.field private static final TAG:Ljava/lang/String; = "AudioPlayerProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 66
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATE_PAUSED"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATE_WAITING_FOR_DATA"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATE_PLAYING"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATE_BUFFERING"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATE_WAITING_FOR_QUEUE"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATE_STARTING"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATE_STOPPED"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATE_INITIALIZED"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATE_STOPPING"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "playing"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "paused"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "pause"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "destroy"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stop"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setUrl"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isPaused"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "start"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "play"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "release"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isPlaying"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 92
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const-string v0, "Media.AudioPlayer"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .parameter "name"

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 97
    .local v20, value:Ljava/lang/Object;
    if-eqz v20, :cond_0

    move-object/from16 v6, v20

    .line 393
    :goto_0
    return-object v6

    .line 106
    :cond_0
    const-string v6, "playing"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    new-instance v3, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$1;

    const-string v5, "playing"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$1;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 130
    .local v3, playing_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 131
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "playing"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    .line 133
    goto :goto_0

    .line 136
    .end local v3           #playing_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v6, "paused"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 137
    new-instance v4, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$2;

    const-string v6, "paused"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$2;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 160
    .local v4, paused_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 161
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "paused"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    .line 163
    goto :goto_0

    .line 166
    .end local v4           #paused_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v6, "url"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 167
    new-instance v5, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$3;

    const-string v7, "url"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$3;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 207
    .local v5, url_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 208
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "url"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 210
    goto/16 :goto_0

    .line 214
    .end local v5           #url_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v6, "pause"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    new-instance v14, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$4;

    const-string v6, "pause"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$4;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 228
    .local v14, pause_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "pause"

    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v14

    .line 229
    goto/16 :goto_0

    .line 232
    .end local v14           #pause_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v6, "destroy"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 233
    new-instance v11, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$5;

    const-string v6, "destroy"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$5;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 246
    .local v11, destroy_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "destroy"

    invoke-virtual {v6, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v11

    .line 247
    goto/16 :goto_0

    .line 250
    .end local v11           #destroy_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v6, "stop"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 251
    new-instance v19, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$6;

    const-string v6, "stop"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$6;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 264
    .local v19, stop_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "stop"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v19

    .line 265
    goto/16 :goto_0

    .line 268
    .end local v19           #stop_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v6, "setUrl"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 269
    new-instance v17, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$7;

    const-string v6, "setUrl"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$7;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 294
    .local v17, setUrl_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "setUrl"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v17

    .line 295
    goto/16 :goto_0

    .line 298
    .end local v17           #setUrl_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v6, "isPaused"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 299
    new-instance v12, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$8;

    const-string v6, "isPaused"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$8;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 314
    .local v12, isPaused_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "isPaused"

    invoke-virtual {v6, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v12

    .line 315
    goto/16 :goto_0

    .line 318
    .end local v12           #isPaused_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v6, "start"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 319
    new-instance v18, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$9;

    const-string v6, "start"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$9;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 332
    .local v18, start_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "start"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v18

    .line 333
    goto/16 :goto_0

    .line 336
    .end local v18           #start_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v6, "play"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 337
    new-instance v15, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$10;

    const-string v6, "play"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$10;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 350
    .local v15, play_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "play"

    invoke-virtual {v6, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    .line 351
    goto/16 :goto_0

    .line 354
    .end local v15           #play_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v6, "release"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 355
    new-instance v16, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$11;

    const-string v6, "release"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$11;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 368
    .local v16, release_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "release"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v16

    .line 369
    goto/16 :goto_0

    .line 372
    .end local v16           #release_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v6, "isPlaying"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 373
    new-instance v13, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$12;

    const-string v6, "isPlaying"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxyBindingGen$12;-><init>(Lti/modules/titanium/media/AudioPlayerProxyBindingGen;Ljava/lang/String;)V

    .line 388
    .local v13, isPlaying_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/AudioPlayerProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "isPlaying"

    invoke-virtual {v6, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v13

    .line 389
    goto/16 :goto_0

    .line 393
    .end local v13           #isPlaying_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    const-string v0, "ti.modules.titanium.media.AudioPlayerProxy"

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
    .line 417
    const-class v0, Lti/modules/titanium/media/AudioPlayerProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    const-string v0, "AudioPlayer"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method
