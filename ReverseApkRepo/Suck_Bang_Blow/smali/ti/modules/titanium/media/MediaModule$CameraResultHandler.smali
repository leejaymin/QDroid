.class public Lti/modules/titanium/media/MediaModule$CameraResultHandler;
.super Ljava/lang/Object;
.source "MediaModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/MediaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraResultHandler"
.end annotation


# instance fields
.field protected activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

.field protected cameraIntent:Landroid/content/Intent;

.field protected cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field protected code:I

.field protected errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field protected imageFile:Ljava/io/File;

.field protected imageUrl:Ljava/lang/String;

.field protected saveToPhotoGallery:Z

.field protected successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field final synthetic this$0:Lti/modules/titanium/media/MediaModule;


# direct methods
.method protected constructor <init>(Lti/modules/titanium/media/MediaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 4
    .parameter "activity"
    .parameter "requestCode"
    .parameter "e"

    .prologue
    .line 378
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 381
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, msg:Ljava/lang/String;
    const-string v1, "TiMedia"

    invoke-static {v1, v0, p3}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iget-object v2, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    const/4 v3, 0x0

    #calls: Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v2, v3, v0}, Lti/modules/titanium/media/MediaModule;->access$300(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    .line 386
    :cond_1
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 32
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 231
    if-nez p3, :cond_2

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync()V

    .line 374
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    if-nez p4, :cond_4

    .line 240
    new-instance v31, Landroid/content/ContentValues;

    const/4 v5, 0x7

    move-object/from16 v0, v31

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 241
    .local v31, values:Landroid/content/ContentValues;
    const-string v5, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v5, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v5, "datetaken"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    const-string v5, "mime_type"

    const-string v6, "image/jpeg"

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 246
    const-string v5, "bucket_id"

    const-string v6, "/sdcard/dcim/Camera"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v5, "bucket_display_name"

    const-string v6, "Camera"

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_1
    const-string v5, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 257
    .local v23, imageUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    move-object v6, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image/jpeg"

    invoke-virtual {v6, v7, v8}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 260
    :catch_0
    move-exception v5

    move-object/from16 v22, v5

    .line 261
    .local v22, e:Ljava/lang/OutOfMemoryError;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough memory to get image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 262
    .local v27, msg:Ljava/lang/String;
    const-string v5, "TiMedia"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v27

    #calls: Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v0, v1, v2}, Lti/modules/titanium/media/MediaModule;->access$000(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 249
    .end local v22           #e:Ljava/lang/OutOfMemoryError;
    .end local v23           #imageUri:Landroid/net/Uri;
    .end local v27           #msg:Ljava/lang/String;
    :cond_3
    const-string v5, "bucket_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v5, "bucket_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 269
    .end local v31           #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v5, 0x6

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-string v6, "_display_name"

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-string v6, "mime_type"

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-string v6, "bucket_id"

    aput-object v6, v7, v5

    const/4 v5, 0x4

    const-string v6, "bucket_display_name"

    aput-object v6, v7, v5

    const/4 v5, 0x5

    const-string v6, "_data"

    aput-object v6, v7, v5

    .line 278
    .local v7, projection:[Ljava/lang/String;
    const/16 v29, 0x0

    .line 279
    .local v29, title:Ljava/lang/String;
    const/16 v20, 0x0

    .line 280
    .local v20, displayName:Ljava/lang/String;
    const/16 v26, 0x0

    .line 281
    .local v26, mimeType:Ljava/lang/String;
    const/16 v16, 0x0

    .line 282
    .local v16, bucketId:Ljava/lang/String;
    const/4 v15, 0x0

    .line 283
    .local v15, bucketDisplayName:Ljava/lang/String;
    const/16 v19, 0x0

    .line 285
    .local v19, dataPath:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 286
    .local v18, c:Landroid/database/Cursor;
    if-eqz v18, :cond_6

    .line 288
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 290
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 291
    const/4 v5, 0x2

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 292
    const/4 v5, 0x3

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 293
    const/4 v5, 0x4

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 294
    const/4 v5, 0x5

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 296
    invoke-static {}, Lti/modules/titanium/media/MediaModule;->access$100()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 297
    const-string v5, "TiMedia"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Image { title: "

    .end local v7           #projection:[Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " displayName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mimeType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bucketId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bucketDisplayName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " }"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    :cond_5
    if-eqz v18, :cond_6

    .line 304
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 305
    const/16 v18, 0x0

    .line 310
    :cond_6
    move-object/from16 v25, v19

    .line 312
    .local v25, localImageUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    move v5, v0

    if-nez v5, :cond_9

    .line 316
    :try_start_2
    new-instance v30, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 318
    .local v30, url:Ljava/net/URL;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v28, src:Ljava/io/File;
    new-instance v21, Ljava/io/File;

    invoke-virtual/range {v30 .. v30}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 321
    .local v21, dst:Ljava/io/File;
    const/4 v11, 0x0

    .line 322
    .local v11, bis:Ljava/io/BufferedInputStream;
    const/4 v13, 0x0

    .line 325
    .local v13, bos:Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x1fa0

    invoke-direct {v12, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 326
    .end local v11           #bis:Ljava/io/BufferedInputStream;
    .local v12, bis:Ljava/io/BufferedInputStream;
    :try_start_4
    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x1fa0

    invoke-direct {v14, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 328
    .end local v13           #bos:Ljava/io/BufferedOutputStream;
    .local v14, bos:Ljava/io/BufferedOutputStream;
    const/16 v5, 0x1fa0

    :try_start_5
    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 329
    .local v17, buf:[B
    const/16 v24, 0x0

    .line 331
    .local v24, len:I
    :goto_2
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v24

    const/4 v5, -0x1

    move/from16 v0, v24

    move v1, v5

    if-eq v0, v1, :cond_b

    .line 332
    const/4 v5, 0x0

    move-object v0, v14

    move-object/from16 v1, v17

    move v2, v5

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 335
    .end local v17           #buf:[B
    .end local v24           #len:I
    :catchall_0
    move-exception v5

    move-object v13, v14

    .end local v14           #bos:Ljava/io/BufferedOutputStream;
    .restart local v13       #bos:Ljava/io/BufferedOutputStream;
    move-object v11, v12

    .end local v12           #bis:Ljava/io/BufferedInputStream;
    .restart local v11       #bis:Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v11, :cond_7

    .line 336
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 338
    :cond_7
    if-eqz v13, :cond_8

    .line 339
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V

    :cond_8
    throw v5
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 354
    .end local v11           #bis:Ljava/io/BufferedInputStream;
    .end local v13           #bos:Ljava/io/BufferedOutputStream;
    .end local v21           #dst:Ljava/io/File;
    .end local v28           #src:Ljava/io/File;
    .end local v30           #url:Ljava/net/URL;
    :catch_1
    move-exception v5

    move-object/from16 v22, v5

    .line 355
    .local v22, e:Ljava/net/MalformedURLException;
    const-string v5, "TiMedia"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URL not moving image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v22           #e:Ljava/net/MalformedURLException;
    :cond_9
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    move-object v6, v0

    const-string v7, "image/jpeg"

    move-object v0, v6

    move-object/from16 v1, v25

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/media/MediaModule;->createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 365
    :catch_2
    move-exception v5

    move-object/from16 v22, v5

    .line 366
    .local v22, e:Ljava/lang/OutOfMemoryError;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough memory to get image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 367
    .restart local v27       #msg:Ljava/lang/String;
    const-string v5, "TiMedia"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->this$0:Lti/modules/titanium/media/MediaModule;

    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v27

    #calls: Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v0, v1, v2}, Lti/modules/titanium/media/MediaModule;->access$200(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 303
    .end local v22           #e:Ljava/lang/OutOfMemoryError;
    .end local v25           #localImageUrl:Ljava/lang/String;
    .end local v27           #msg:Ljava/lang/String;
    :catchall_1
    move-exception v5

    if-eqz v18, :cond_a

    .line 304
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 305
    const/16 v18, 0x0

    :cond_a
    throw v5

    .line 335
    .restart local v12       #bis:Ljava/io/BufferedInputStream;
    .restart local v14       #bos:Ljava/io/BufferedOutputStream;
    .restart local v17       #buf:[B
    .restart local v21       #dst:Ljava/io/File;
    .restart local v24       #len:I
    .restart local v25       #localImageUrl:Ljava/lang/String;
    .restart local v28       #src:Ljava/io/File;
    .restart local v30       #url:Ljava/net/URL;
    :cond_b
    if-eqz v12, :cond_c

    .line 336
    :try_start_8
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 338
    :cond_c
    if-eqz v14, :cond_d

    .line 339
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 344
    :cond_d
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .restart local v31       #values:Landroid/content/ContentValues;
    const-string v5, "bucket_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string v5, "bucket_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v5, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v31

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 351
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    move-object/from16 v25, v0
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_4

    .line 356
    .end local v12           #bis:Ljava/io/BufferedInputStream;
    .end local v14           #bos:Ljava/io/BufferedOutputStream;
    .end local v17           #buf:[B
    .end local v21           #dst:Ljava/io/File;
    .end local v24           #len:I
    .end local v28           #src:Ljava/io/File;
    .end local v30           #url:Ljava/net/URL;
    .end local v31           #values:Landroid/content/ContentValues;
    :catch_3
    move-exception v5

    move-object/from16 v22, v5

    .line 357
    .local v22, e:Ljava/io/IOException;
    const-string v5, "TiMedia"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to move file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 335
    .end local v22           #e:Ljava/io/IOException;
    .restart local v11       #bis:Ljava/io/BufferedInputStream;
    .restart local v13       #bos:Ljava/io/BufferedOutputStream;
    .restart local v21       #dst:Ljava/io/File;
    .restart local v28       #src:Ljava/io/File;
    .restart local v30       #url:Ljava/net/URL;
    :catchall_2
    move-exception v5

    goto/16 :goto_3

    .end local v11           #bis:Ljava/io/BufferedInputStream;
    .restart local v12       #bis:Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v5

    move-object v11, v12

    .end local v12           #bis:Ljava/io/BufferedInputStream;
    .restart local v11       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_3
.end method

.method public run()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    invoke-interface {v0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    .line 225
    iget-object v0, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    iget-object v1, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cameraIntent:Landroid/content/Intent;

    iget v2, p0, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->code:I

    invoke-interface {v0, v1, v2, p0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 226
    return-void
.end method
