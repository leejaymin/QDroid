.class public Lti/modules/titanium/ui/ImageViewProxyBindingGen;
.super Lti/modules/titanium/ui/ViewProxyBindingGen;
.source "ImageViewProxyBindingGen.java"


# static fields
.field private static final DYNPROP_animating:Ljava/lang/String; = "animating"

.field private static final DYNPROP_reverse:Ljava/lang/String; = "reverse"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.ImageView"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.ImageViewProxy"

.field private static final METHOD_getAnimating:Ljava/lang/String; = "getAnimating"

.field private static final METHOD_getReverse:Ljava/lang/String; = "getReverse"

.field private static final METHOD_pause:Ljava/lang/String; = "pause"

.field private static final METHOD_resume:Ljava/lang/String; = "resume"

.field private static final METHOD_setReverse:Ljava/lang/String; = "setReverse"

.field private static final METHOD_start:Ljava/lang/String; = "start"

.field private static final METHOD_stop:Ljava/lang/String; = "stop"

.field private static final METHOD_toBlob:Ljava/lang/String; = "toBlob"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "ImageView"

.field private static final TAG:Ljava/lang/String; = "ImageViewProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxyBindingGen;-><init>()V

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "animating"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "reverse"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "pause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stop"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "resume"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setReverse"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAnimating"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getReverse"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "toBlob"

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
    .line 330
    const-string v0, "UI.ImageView"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 19
    .parameter "name"

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 75
    .local v18, value:Ljava/lang/Object;
    if-eqz v18, :cond_0

    move-object/from16 v5, v18

    .line 322
    :goto_0
    return-object v5

    .line 84
    :cond_0
    const-string v5, "animating"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    new-instance v3, Lti/modules/titanium/ui/ImageViewProxyBindingGen$1;

    const-string v5, "animating"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 108
    .local v3, animating_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 109
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "animating"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 111
    goto :goto_0

    .line 114
    .end local v3           #animating_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v5, "reverse"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    new-instance v4, Lti/modules/titanium/ui/ImageViewProxyBindingGen$2;

    const-string v6, "reverse"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 153
    .local v4, reverse_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 154
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "reverse"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 156
    goto :goto_0

    .line 160
    .end local v4           #reverse_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v5, "pause"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    new-instance v12, Lti/modules/titanium/ui/ImageViewProxyBindingGen$3;

    const-string v5, "pause"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;)V

    .line 174
    .local v12, pause_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "pause"

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v12

    .line 175
    goto/16 :goto_0

    .line 178
    .end local v12           #pause_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "stop"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    new-instance v16, Lti/modules/titanium/ui/ImageViewProxyBindingGen$4;

    const-string v5, "stop"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$4;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;)V

    .line 192
    .local v16, stop_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "stop"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v16

    .line 193
    goto/16 :goto_0

    .line 196
    .end local v16           #stop_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v5, "resume"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 197
    new-instance v13, Lti/modules/titanium/ui/ImageViewProxyBindingGen$5;

    const-string v5, "resume"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$5;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;)V

    .line 210
    .local v13, resume_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "resume"

    invoke-virtual {v5, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v13

    .line 211
    goto/16 :goto_0

    .line 214
    .end local v13           #resume_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v5, "setReverse"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 215
    new-instance v14, Lti/modules/titanium/ui/ImageViewProxyBindingGen$6;

    const-string v5, "setReverse"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$6;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;)V

    .line 238
    .local v14, setReverse_method:Lorg/appcelerator/kroll/KrollMethod;
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lorg/appcelerator/kroll/KrollMethod;->setRunOnUiThread(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "setReverse"

    invoke-virtual {v5, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v14

    .line 240
    goto/16 :goto_0

    .line 243
    .end local v14           #setReverse_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v5, "getAnimating"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 244
    new-instance v10, Lti/modules/titanium/ui/ImageViewProxyBindingGen$7;

    const-string v5, "getAnimating"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$7;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;)V

    .line 259
    .local v10, getAnimating_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getAnimating"

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v10

    .line 260
    goto/16 :goto_0

    .line 263
    .end local v10           #getAnimating_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v5, "start"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 264
    new-instance v15, Lti/modules/titanium/ui/ImageViewProxyBindingGen$8;

    const-string v5, "start"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$8;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;)V

    .line 277
    .local v15, start_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "start"

    invoke-virtual {v5, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v15

    .line 278
    goto/16 :goto_0

    .line 281
    .end local v15           #start_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v5, "getReverse"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 282
    new-instance v11, Lti/modules/titanium/ui/ImageViewProxyBindingGen$9;

    const-string v5, "getReverse"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$9;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;)V

    .line 297
    .local v11, getReverse_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "getReverse"

    invoke-virtual {v5, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v11

    .line 298
    goto/16 :goto_0

    .line 301
    .end local v11           #getReverse_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v5, "toBlob"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 302
    new-instance v17, Lti/modules/titanium/ui/ImageViewProxyBindingGen$10;

    const-string v5, "toBlob"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ImageViewProxyBindingGen$10;-><init>(Lti/modules/titanium/ui/ImageViewProxyBindingGen;Ljava/lang/String;)V

    .line 317
    .local v17, toBlob_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ImageViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v5, v0

    const-string v6, "toBlob"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 318
    goto/16 :goto_0

    .line 322
    .end local v17           #toBlob_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    invoke-super/range {p0 .. p1}, Lti/modules/titanium/ui/ViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    const-string v0, "ti.modules.titanium.ui.ImageViewProxy"

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
    .line 346
    const-class v0, Lti/modules/titanium/ui/ImageViewProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "ImageView"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 342
    const/4 v0, 0x0

    return-object v0
.end method
