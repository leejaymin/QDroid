.class public final Lcom/adobe/air/CameraUI;
.super Ljava/lang/Object;
.source "CameraUI.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;


# static fields
.field public static final ERROR_ACTIVITY_DESTROYED:I = 0x4

.field public static final ERROR_CAMERA_BUSY:I = 0x1

.field public static final ERROR_CAMERA_ERROR:I = 0x2

.field public static final ERROR_CAMERA_UNAVAILABLE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "CameraUI"

.field private static final PHONE_STORAGE:Ljava/lang/String; = "phoneStorage"

.field public static final REQUESTED_MEDIA_TYPE_IMAGE:I = 0x1

.field public static final REQUESTED_MEDIA_TYPE_INVALID:I = 0x0

.field public static final REQUESTED_MEDIA_TYPE_VIDEO:I = 0x2

.field private static sCameraRollPath:Ljava/lang/String;

.field private static sCameraUI:Lcom/adobe/air/CameraUI;


# instance fields
.field private mCameraBusy:Z

.field private mImagePath:Ljava/lang/String;

.field private mLastClientId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    .line 83
    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 510
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 512
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    .line 565
    :goto_0
    return-object v0

    .line 521
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 532
    :goto_1
    if-nez v0, :cond_2

    .line 536
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "phoneStorage"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 546
    :goto_2
    if-eqz v1, :cond_1

    .line 550
    :try_start_2
    invoke-direct {p0, v1, p1}, Lcom/adobe/air/CameraUI;->getFileFromUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 560
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 565
    :cond_1
    :goto_3
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    .line 540
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 552
    :catch_2
    move-exception v0

    .line 560
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 555
    :catch_3
    move-exception v0

    .line 560
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 561
    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_2
.end method

.method public static declared-synchronized getCameraUI()Lcom/adobe/air/CameraUI;
    .locals 3

    .prologue
    .line 145
    const-class v1, Lcom/adobe/air/CameraUI;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/adobe/air/CameraUI;

    invoke-direct {v0}, Lcom/adobe/air/CameraUI;-><init>()V

    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    .line 149
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    sget-object v2, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 152
    :cond_0
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 239
    .line 242
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 244
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    if-eqz v1, :cond_1

    move v0, v6

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    and-int/2addr v0, v6

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    move v0, v7

    .line 255
    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    .line 249
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    if-eqz v1, :cond_5

    move v0, v6

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_4
    and-int/2addr v0, v6

    if-eqz v0, :cond_4

    .line 257
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    goto :goto_2

    :cond_5
    move v0, v7

    .line 255
    goto :goto_3

    :cond_6
    move v6, v7

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_5
    if-eqz v8, :cond_8

    move v0, v6

    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_7
    and-int/2addr v0, v6

    if-eqz v0, :cond_7

    .line 257
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    :cond_8
    move v0, v7

    .line 255
    goto :goto_6

    :cond_9
    move v6, v7

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    goto :goto_5
.end method

.method private getFileFromUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 213
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v0, v2

    .line 216
    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/air/CameraUI;->getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 217
    if-eqz v2, :cond_0

    .line 221
    :try_start_0
    const-string v0, "_data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 222
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 234
    :goto_0
    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 229
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 231
    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 230
    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private native nativeOnCameraCancel(J)V
.end method

.method private native nativeOnCameraError(JI)V
.end method

.method private native nativeOnCameraResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private onCameraCancel()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 113
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 115
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/CameraUI;->nativeOnCameraCancel(J)V

    .line 117
    iput-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 119
    :cond_0
    return-void
.end method

.method private onCameraError(I)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 103
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/air/CameraUI;->nativeOnCameraError(JI)V

    .line 107
    iput-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 109
    :cond_0
    return-void
.end method

.method private onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 123
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 125
    iget-wide v1, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/CameraUI;->nativeOnCameraResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-wide v6, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 129
    :cond_0
    return-void
.end method

.method private processImageSuccessResult()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 264
    new-instance v0, Ljava/lang/String;

    const-string v1, "image"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 267
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 268
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 275
    iget-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/adobe/air/CameraUI;->onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private processVideoSuccessResult(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 280
    .line 284
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "mime_type"

    aput-object v3, v0, v2

    const-string v2, "_display_name"

    aput-object v2, v0, v7

    .line 289
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/adobe/air/CameraUI;->getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 294
    if-eqz v4, :cond_6

    .line 299
    :try_start_0
    const-string v0, "_data"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 300
    const-string v2, "mime_type"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 301
    const-string v3, "_display_name"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 302
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 304
    if-eqz v3, :cond_5

    .line 306
    :try_start_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->toMediaType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 310
    if-nez v0, :cond_0

    .line 312
    :try_start_2
    new-instance v2, Ljava/lang/String;

    const-string v6, "video"

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v2

    .line 315
    :cond_0
    :try_start_3
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 316
    if-nez v2, :cond_4

    .line 318
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 326
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v2, v1

    move-object v1, v0

    .line 333
    :goto_1
    if-eqz v1, :cond_1

    const-string v0, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    :cond_2
    invoke-direct {p0, v3, v1, v2}, Lcom/adobe/air/CameraUI;->onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_2
    return-void

    .line 321
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v0, v1

    .line 326
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v3, v0

    .line 328
    goto :goto_1

    .line 326
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 327
    throw v0

    .line 339
    :cond_3
    invoke-direct {p0, v7}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    goto :goto_2

    .line 321
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v2, v1

    move-object v3, v1

    goto :goto_1
.end method

.method private stillPictureWork()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 571
    const/4 v2, 0x0

    .line 572
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 574
    if-nez v5, :cond_1

    .line 576
    const/4 v4, 0x4

    .line 620
    :cond_0
    :goto_0
    return v4

    .line 579
    :cond_1
    invoke-direct {p0, v5}, Lcom/adobe/air/CameraUI;->getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 588
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 589
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5}, Lcom/adobe/air/CameraUI;->getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".jpg"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 602
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    const-string v8, "output"

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 606
    const/4 v6, 0x3

    invoke-virtual {v5, v7, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 618
    :goto_1
    iput-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    move v4, v1

    .line 620
    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    move-object v0, v1

    move v1, v3

    .line 616
    goto :goto_1

    .line 611
    :catch_1
    move-exception v0

    move-object v0, v1

    move v1, v4

    .line 614
    goto :goto_1
.end method

.method private toMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    if-eqz p1, :cond_0

    .line 199
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    new-instance v0, Ljava/lang/String;

    const-string v1, "image"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/String;

    const-string v1, "video"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private videoCaptureWork()I
    .locals 5

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 481
    .line 484
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 486
    if-nez v2, :cond_0

    .line 505
    :goto_0
    return v0

    .line 493
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    const-string v3, "android.intent.extra.videoQuality"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 502
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public launch(JI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 427
    cmp-long v0, p1, v3

    if-nez v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    if-eqz v0, :cond_2

    .line 438
    invoke-direct {p0, p1, p2, v2}, Lcom/adobe/air/CameraUI;->nativeOnCameraError(JI)V

    goto :goto_0

    .line 444
    :cond_2
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 447
    invoke-direct {p0, v2}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    .line 450
    :cond_3
    iput-wide p1, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 452
    iput-boolean v2, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 455
    packed-switch p3, :pswitch_data_0

    .line 466
    const/4 v0, 0x3

    .line 470
    :goto_1
    if-eqz v0, :cond_0

    .line 473
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 474
    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    goto :goto_0

    .line 458
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->stillPictureWork()I

    move-result v0

    goto :goto_1

    .line 461
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->videoCaptureWork()I

    move-result v0

    goto :goto_1

    .line 455
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 355
    if-eq p1, v5, :cond_1

    if-eq p1, v6, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 367
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 374
    packed-switch p2, :pswitch_data_0

    .line 402
    iget-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 404
    iput-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 406
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    goto :goto_0

    .line 378
    :pswitch_0
    if-ne p1, v5, :cond_4

    .line 380
    iget-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 382
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->processImageSuccessResult()V

    .line 383
    iput-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_3
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->onCameraCancel()V

    goto :goto_0

    .line 389
    :cond_4
    if-ne p1, v6, :cond_0

    .line 391
    invoke-direct {p0, p3}, Lcom/adobe/air/CameraUI;->processVideoSuccessResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 395
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 397
    iput-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 399
    :cond_5
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->onCameraCancel()V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unregisterCallbacks(J)V
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 191
    :cond_0
    return-void
.end method
