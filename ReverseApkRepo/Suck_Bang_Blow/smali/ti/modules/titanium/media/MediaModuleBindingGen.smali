.class public Lti/modules/titanium/media/MediaModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "MediaModuleBindingGen.java"


# static fields
.field private static final CONST_DEVICE_BUSY:Ljava/lang/String; = "DEVICE_BUSY"

.field private static final CONST_MEDIA_TYPE_PHOTO:Ljava/lang/String; = "MEDIA_TYPE_PHOTO"

.field private static final CONST_MEDIA_TYPE_VIDEO:Ljava/lang/String; = "MEDIA_TYPE_VIDEO"

.field private static final CONST_NO_CAMERA:Ljava/lang/String; = "NO_CAMERA"

.field private static final CONST_NO_VIDEO:Ljava/lang/String; = "NO_VIDEO"

.field private static final CONST_UNKNOWN_ERROR:Ljava/lang/String; = "UNKNOWN_ERROR"

.field private static final CONST_VIDEO_CONTROL_DEFAULT:Ljava/lang/String; = "VIDEO_CONTROL_DEFAULT"

.field private static final CONST_VIDEO_SCALING_ASPECT_FILL:Ljava/lang/String; = "VIDEO_SCALING_ASPECT_FILL"

.field private static final CONST_VIDEO_SCALING_MODE_FILL:Ljava/lang/String; = "VIDEO_SCALING_MODE_FILL"

.field private static final CREATE_AudioPlayer:Ljava/lang/String; = "createAudioPlayer"

.field private static final CREATE_Sound:Ljava/lang/String; = "createSound"

.field private static final CREATE_VideoPlayer:Ljava/lang/String; = "createVideoPlayer"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Media"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.media.MediaModule"

.field private static final METHOD_openPhotoGallery:Ljava/lang/String; = "openPhotoGallery"

.field private static final METHOD_previewImage:Ljava/lang/String; = "previewImage"

.field private static final METHOD_saveToPhotoGallery:Ljava/lang/String; = "saveToPhotoGallery"

.field private static final METHOD_showCamera:Ljava/lang/String; = "showCamera"

.field private static final METHOD_takeScreenshot:Ljava/lang/String; = "takeScreenshot"

.field private static final METHOD_vibrate:Ljava/lang/String; = "vibrate"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Media"

.field private static final TAG:Ljava/lang/String; = "MediaModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 63
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "MEDIA_TYPE_PHOTO"

    const-string v2, "public.image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "NO_CAMERA"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DEVICE_BUSY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "VIDEO_CONTROL_DEFAULT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "VIDEO_SCALING_MODE_FILL"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "MEDIA_TYPE_VIDEO"

    const-string v2, "public.video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "UNKNOWN_ERROR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "VIDEO_SCALING_ASPECT_FILL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "NO_VIDEO"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createAudioPlayer"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createSound"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createVideoPlayer"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "openPhotoGallery"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "previewImage"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "saveToPhotoGallery"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "takeScreenshot"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "vibrate"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "showCamera"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 86
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "Media"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "name"

    .prologue
    .line 90
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 91
    .local v9, value:Ljava/lang/Object;
    if-eqz v9, :cond_0

    move-object v11, v9

    .line 314
    :goto_0
    return-object v11

    .line 96
    :cond_0
    const-string v11, "createAudioPlayer"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 97
    new-instance v3, Lti/modules/titanium/media/MediaModuleBindingGen$1;

    invoke-direct {v3, p0}, Lti/modules/titanium/media/MediaModuleBindingGen$1;-><init>(Lti/modules/titanium/media/MediaModuleBindingGen;)V

    .line 102
    .local v3, creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    const-string v11, "createAudioPlayer"

    invoke-static {v11, v3}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createCreateMethod(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    .line 103
    .local v0, createAudioPlayer_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "createAudioPlayer"

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v0

    .line 104
    goto :goto_0

    .line 107
    .end local v0           #createAudioPlayer_method:Lorg/appcelerator/kroll/KrollMethod;
    .end local v3           #creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    :cond_1
    const-string v11, "createSound"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 108
    new-instance v3, Lti/modules/titanium/media/MediaModuleBindingGen$2;

    invoke-direct {v3, p0}, Lti/modules/titanium/media/MediaModuleBindingGen$2;-><init>(Lti/modules/titanium/media/MediaModuleBindingGen;)V

    .line 113
    .restart local v3       #creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    const-string v11, "createSound"

    invoke-static {v11, v3}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createCreateMethod(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    .line 114
    .local v1, createSound_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "createSound"

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v1

    .line 115
    goto :goto_0

    .line 118
    .end local v1           #createSound_method:Lorg/appcelerator/kroll/KrollMethod;
    .end local v3           #creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    :cond_2
    const-string v11, "createVideoPlayer"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 119
    new-instance v3, Lti/modules/titanium/media/MediaModuleBindingGen$3;

    invoke-direct {v3, p0}, Lti/modules/titanium/media/MediaModuleBindingGen$3;-><init>(Lti/modules/titanium/media/MediaModuleBindingGen;)V

    .line 124
    .restart local v3       #creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    const-string v11, "createVideoPlayer"

    invoke-static {v11, v3}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createCreateMethod(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v2

    .line 125
    .local v2, createVideoPlayer_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "createVideoPlayer"

    invoke-virtual {v11, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v2

    .line 126
    goto :goto_0

    .line 134
    .end local v2           #createVideoPlayer_method:Lorg/appcelerator/kroll/KrollMethod;
    .end local v3           #creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    :cond_3
    const-string v11, "openPhotoGallery"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 135
    new-instance v4, Lti/modules/titanium/media/MediaModuleBindingGen$4;

    const-string v11, "openPhotoGallery"

    invoke-direct {v4, p0, v11}, Lti/modules/titanium/media/MediaModuleBindingGen$4;-><init>(Lti/modules/titanium/media/MediaModuleBindingGen;Ljava/lang/String;)V

    .line 160
    .local v4, openPhotoGallery_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "openPhotoGallery"

    invoke-virtual {v11, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v4

    .line 161
    goto :goto_0

    .line 164
    .end local v4           #openPhotoGallery_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v11, "previewImage"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 165
    new-instance v5, Lti/modules/titanium/media/MediaModuleBindingGen$5;

    const-string v11, "previewImage"

    invoke-direct {v5, p0, v11}, Lti/modules/titanium/media/MediaModuleBindingGen$5;-><init>(Lti/modules/titanium/media/MediaModuleBindingGen;Ljava/lang/String;)V

    .line 190
    .local v5, previewImage_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "previewImage"

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v5

    .line 191
    goto/16 :goto_0

    .line 194
    .end local v5           #previewImage_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v11, "saveToPhotoGallery"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 195
    new-instance v6, Lti/modules/titanium/media/MediaModuleBindingGen$6;

    const-string v11, "saveToPhotoGallery"

    invoke-direct {v6, p0, v11}, Lti/modules/titanium/media/MediaModuleBindingGen$6;-><init>(Lti/modules/titanium/media/MediaModuleBindingGen;Ljava/lang/String;)V

    .line 218
    .local v6, saveToPhotoGallery_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "saveToPhotoGallery"

    invoke-virtual {v11, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v6

    .line 219
    goto/16 :goto_0

    .line 222
    .end local v6           #saveToPhotoGallery_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v11, "takeScreenshot"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 223
    new-instance v8, Lti/modules/titanium/media/MediaModuleBindingGen$7;

    const-string v11, "takeScreenshot"

    invoke-direct {v8, p0, v11}, Lti/modules/titanium/media/MediaModuleBindingGen$7;-><init>(Lti/modules/titanium/media/MediaModuleBindingGen;Ljava/lang/String;)V

    .line 246
    .local v8, takeScreenshot_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "takeScreenshot"

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v8

    .line 247
    goto/16 :goto_0

    .line 250
    .end local v8           #takeScreenshot_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v11, "vibrate"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 251
    new-instance v10, Lti/modules/titanium/media/MediaModuleBindingGen$8;

    const-string v11, "vibrate"

    invoke-direct {v10, p0, v11}, Lti/modules/titanium/media/MediaModuleBindingGen$8;-><init>(Lti/modules/titanium/media/MediaModuleBindingGen;Ljava/lang/String;)V

    .line 279
    .local v10, vibrate_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "vibrate"

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v10

    .line 280
    goto/16 :goto_0

    .line 283
    .end local v10           #vibrate_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v11, "showCamera"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 284
    new-instance v7, Lti/modules/titanium/media/MediaModuleBindingGen$9;

    const-string v11, "showCamera"

    invoke-direct {v7, p0, v11}, Lti/modules/titanium/media/MediaModuleBindingGen$9;-><init>(Lti/modules/titanium/media/MediaModuleBindingGen;Ljava/lang/String;)V

    .line 309
    .local v7, showCamera_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v11, p0, Lti/modules/titanium/media/MediaModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v12, "showCamera"

    invoke-virtual {v11, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v7

    .line 310
    goto/16 :goto_0

    .line 314
    .end local v7           #showCamera_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const-string v0, "ti.modules.titanium.media.MediaModule"

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
    .line 338
    const-class v0, Lti/modules/titanium/media/MediaModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const-string v0, "Media"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 334
    new-instance v0, Lti/modules/titanium/media/MediaModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/media/MediaModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
