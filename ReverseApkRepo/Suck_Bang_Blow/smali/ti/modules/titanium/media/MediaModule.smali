.class public Lti/modules/titanium/media/MediaModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "MediaModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    }
.end annotation

.annotation runtime Lorg/appcelerator/titanium/ContextSpecific;
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field public static final DEVICE_BUSY:I = 0x1

.field private static final LCAT:Ljava/lang/String; = "TiMedia"

.field public static final MEDIA_TYPE_PHOTO:Ljava/lang/String; = "public.image"

.field public static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "public.video"

.field public static final NO_CAMERA:I = 0x2

.field public static final NO_VIDEO:I = 0x3

.field private static final PHOTO_DCIM_CAMERA:Ljava/lang/String; = "/sdcard/dcim/Camera"

.field public static final UNKNOWN_ERROR:I = 0x0

.field public static final VIDEO_CONTROL_DEFAULT:I = 0x0

.field public static final VIDEO_SCALING_ASPECT_FILL:I = 0x0

.field public static final VIDEO_SCALING_MODE_FILL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/media/MediaModule;->DBG:Z

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lti/modules/titanium/media/MediaModule;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lti/modules/titanium/media/MediaModule;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/media/MediaModule;ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createDictForImage(II[B)Lorg/appcelerator/kroll/KrollDict;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const-string v7, "y"

    const-string v6, "x"

    const-string v5, "width"

    const-string v4, "height"

    .line 507
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 509
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v2, "y"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 515
    .local v0, cropRect:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v2, "y"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v2, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v2, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v2, "cropRect"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v2, "mediaType"

    const-string v3, "public.image"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v2, "media"

    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    const-string v4, "image/png"

    invoke-static {v3, p3, v4}, Lorg/appcelerator/titanium/TiBlob;->blobFromData(Lorg/appcelerator/titanium/TiContext;[BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-object v1
.end method

.method createDictForImage(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 12
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 468
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 470
    .local v1, d:Lorg/appcelerator/kroll/KrollDict;
    const/4 v7, -0x1

    .line 471
    .local v7, width:I
    const/4 v4, -0x1

    .line 474
    .local v4, height:I
    move-object v3, p1

    .line 475
    .local v3, fpath:Ljava/lang/String;
    :try_start_0
    const-string v8, "file://"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "content://"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 476
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 479
    .local v5, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 480
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 481
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 482
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    const-string v8, "x"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v8, "y"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v8, "width"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v8, "height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 493
    .local v0, cropRect:Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "x"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v8, "y"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v8, "width"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v8, "height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v8, "cropRect"

    invoke-virtual {v1, v8, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    .line 500
    .local v6, parts:[Ljava/lang/String;
    const-string v8, "mediaType"

    const-string v9, "public.image"

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v8, "media"

    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v9

    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v10

    invoke-static {v9, v10, p2}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    return-object v1

    .line 483
    .end local v0           #cropRect:Lorg/appcelerator/kroll/KrollDict;
    .end local v6           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 484
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v8, "TiMedia"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bitmap not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public openPhotoGallery(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .parameter "invocation"
    .parameter "options"

    .prologue
    .line 392
    const/4 v10, 0x0

    .line 393
    .local v10, successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    const/4 v3, 0x0

    .line 394
    .local v3, cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    const/4 v5, 0x0

    .line 396
    .local v5, errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    const-string v11, "success"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 397
    const-string v11, "success"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    check-cast v10, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 399
    .restart local v10       #successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_0
    const-string v11, "cancel"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 400
    const-string v11, "cancel"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    check-cast v3, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 402
    .restart local v3       #cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_1
    const-string v11, "error"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 403
    const-string v11, "error"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    check-cast v5, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 406
    .restart local v5       #errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_2
    move-object v8, v10

    .line 407
    .local v8, fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    move-object v6, v3

    .line 408
    .local v6, fCancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    move-object v7, v5

    .line 410
    .local v7, fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    sget-boolean v11, Lti/modules/titanium/media/MediaModule;->DBG:Z

    if-eqz v11, :cond_3

    .line 411
    const-string v11, "TiMedia"

    const-string v12, "openPhotoGallery called"

    invoke-static {v11, v12}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_3
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v11

    invoke-virtual {v11}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 415
    .local v1, activity:Landroid/app/Activity;
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/util/TiActivitySupport;

    move-object v2, v0

    .line 417
    .local v2, activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    new-instance v9, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-direct {v9, v11}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 418
    .local v9, galleryIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    invoke-virtual {v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.intent.action.PICK"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "image/*"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v11, "GALLERY"

    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 423
    invoke-interface {v2}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v4

    .line 424
    .local v4, code:I
    invoke-virtual {v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v11

    new-instance v12, Lti/modules/titanium/media/MediaModule$1;

    invoke-direct {v12, p0, v6, v8, v7}, Lti/modules/titanium/media/MediaModule$1;-><init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/kroll/KrollCallback;Lorg/appcelerator/titanium/kroll/KrollCallback;Lorg/appcelerator/titanium/kroll/KrollCallback;)V

    invoke-interface {v2, v11, v4, v12}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 459
    return-void
.end method

.method public previewImage(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .parameter "invocation"
    .parameter "options"

    .prologue
    .line 529
    sget-boolean v11, Lti/modules/titanium/media/MediaModule;->DBG:Z

    if-eqz v11, :cond_0

    .line 530
    const-string v11, "TiMedia"

    const-string v12, "previewImage"

    invoke-static {v11, v12}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    const/4 v10, 0x0

    .line 534
    .local v10, successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    const/4 v4, 0x0

    .line 535
    .local v4, errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    const/4 v8, 0x0

    .line 537
    .local v8, image:Lorg/appcelerator/titanium/TiBlob;
    const-string v11, "success"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 538
    const-string v11, "success"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    check-cast v10, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 540
    .restart local v10       #successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_1
    const-string v11, "error"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 541
    const-string v11, "error"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    check-cast v4, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 543
    .restart local v4       #errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_2
    const-string v11, "image"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 544
    const-string v11, "image"

    invoke-virtual {p2, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #image:Lorg/appcelerator/titanium/TiBlob;
    check-cast v8, Lorg/appcelerator/titanium/TiBlob;

    .line 547
    .restart local v8       #image:Lorg/appcelerator/titanium/TiBlob;
    :cond_3
    if-nez v8, :cond_4

    .line 548
    if-eqz v4, :cond_4

    .line 549
    const/4 v11, 0x0

    const-string v12, "Missing image property"

    invoke-virtual {p0, v11, v12}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    .line 553
    :cond_4
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiBlob;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 555
    .local v5, f:Lorg/appcelerator/titanium/io/TiBaseFile;
    move-object v7, v10

    .line 556
    .local v7, fSuccessCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    move-object v6, v4

    .line 558
    .local v6, fErrorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    sget-boolean v11, Lti/modules/titanium/media/MediaModule;->DBG:Z

    if-eqz v11, :cond_5

    .line 559
    const-string v11, "TiMedia"

    const-string v12, "openPhotoGallery called"

    invoke-static {v11, v12}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_5
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v11

    invoke-virtual {v11}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 563
    .local v1, activity:Landroid/app/Activity;
    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/util/TiActivitySupport;

    move-object v2, v0

    .line 565
    .local v2, activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    new-instance v9, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-direct {v9, v11}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 566
    .local v9, previewIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    invoke-virtual {v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.intent.action.VIEW"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    invoke-virtual {v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 569
    const-string v11, "PREVIEW"

    invoke-static {v11}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 571
    invoke-interface {v2}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v3

    .line 572
    .local v3, code:I
    invoke-virtual {v9}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v11

    new-instance v12, Lti/modules/titanium/media/MediaModule$2;

    invoke-direct {v12, p0, v7, v6}, Lti/modules/titanium/media/MediaModule$2;-><init>(Lti/modules/titanium/media/MediaModule;Lorg/appcelerator/titanium/kroll/KrollCallback;Lorg/appcelerator/titanium/kroll/KrollCallback;)V

    invoke-interface {v2, v11, v3, v12}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 592
    return-void
.end method

.method public saveToPhotoGallery(Ljava/lang/Object;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 464
    const-string v0, "TiMedia"

    const-string v1, "saveToPhotoGallery not yet implemented in Android"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method public showCamera(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 28
    .parameter "invocation"
    .parameter "options"

    .prologue
    .line 95
    const/16 v22, 0x0

    .line 96
    .local v22, successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    const/4 v8, 0x0

    .line 97
    .local v8, cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    const/4 v10, 0x0

    .line 99
    .local v10, errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    const-string v25, "success"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 100
    const-string v25, "success"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    check-cast v22, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 102
    .restart local v22       #successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_0
    const-string v25, "cancel"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 103
    const-string v25, "cancel"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    check-cast v8, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 105
    .restart local v8       #cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_1
    const-string v25, "error"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 106
    const-string v25, "error"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    check-cast v10, Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 109
    .restart local v10       #errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;
    :cond_2
    sget-boolean v25, Lti/modules/titanium/media/MediaModule;->DBG:Z

    if-eqz v25, :cond_3

    .line 110
    const-string v25, "TiMedia"

    const-string v26, "showCamera called"

    invoke-static/range {v25 .. v26}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3
    const/4 v6, 0x0

    .line 114
    .local v6, camera:Landroid/hardware/Camera;
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    .line 115
    if-eqz v6, :cond_4

    .line 116
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 v6, 0x0

    .line 129
    :cond_4
    const/16 v21, 0x0

    .line 130
    .local v21, saveToPhotoGallery:Z
    const-string v25, "saveToPhotoGallery"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 131
    const-string v25, "saveToPhotoGallery"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 134
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 135
    .local v4, activity:Landroid/app/Activity;
    move-object v0, v4

    check-cast v0, Lorg/appcelerator/titanium/util/TiActivitySupport;

    move-object v5, v0

    .line 137
    .local v5, activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/appcelerator/titanium/TiContext;->getTiFileHelper()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v24

    .line 139
    .local v24, tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    const/4 v12, 0x0

    .line 140
    .local v12, imageDir:Ljava/io/File;
    const/4 v14, 0x0

    .line 143
    .local v14, imageFile:Ljava/io/File;
    if-eqz v21, :cond_b

    .line 144
    :try_start_1
    new-instance v13, Ljava/io/File;

    const-string v25, "/sdcard/dcim/Camera"

    move-object v0, v13

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .end local v12           #imageDir:Ljava/io/File;
    .local v13, imageDir:Ljava/io/File;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_e

    .line 146
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v12, v13

    .line 162
    .end local v13           #imageDir:Ljava/io/File;
    .restart local v12       #imageDir:Ljava/io/File;
    :goto_0
    :try_start_3
    const-string v25, ".jpg"

    move-object/from16 v0, v24

    move-object v1, v12

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v14

    .line 172
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "file://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 173
    .local v15, imageUrl:Ljava/lang/String;
    new-instance v7, Lorg/appcelerator/titanium/util/TiIntentWrapper;

    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiIntentWrapper;-><init>(Landroid/content/Intent;)V

    .line 174
    .local v7, cameraIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "android.intent.category.DEFAULT"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v25, "CAMERA"

    invoke-static/range {v25 .. v25}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->createActivityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->setWindowId(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 179
    .local v18, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const/high16 v26, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 182
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v16, 0x0

    .line 184
    .local v16, isHTCCameraApp:Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    .line 186
    .local v20, rs:Landroid/content/pm/ResolveInfo;
    :try_start_4
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "HTC"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v25

    if-eqz v25, :cond_6

    .line 187
    const/16 v16, 0x1

    .line 195
    .end local v20           #rs:Landroid/content/pm/ResolveInfo;
    :cond_7
    if-nez v16, :cond_8

    .line 196
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "output"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    :cond_8
    new-instance v19, Lti/modules/titanium/media/MediaModule$CameraResultHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lti/modules/titanium/media/MediaModule$CameraResultHandler;-><init>(Lti/modules/titanium/media/MediaModule;)V

    .line 200
    .local v19, resultHandler:Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    move-object v0, v14

    move-object/from16 v1, v19

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageFile:Ljava/io/File;

    .line 201
    move-object v0, v15

    move-object/from16 v1, v19

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->imageUrl:Ljava/lang/String;

    .line 202
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->saveToPhotoGallery:Z

    .line 203
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->successCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 204
    move-object v0, v8

    move-object/from16 v1, v19

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cancelCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 205
    move-object v0, v10

    move-object/from16 v1, v19

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->errorCallback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 206
    move-object v0, v5

    move-object/from16 v1, v19

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 207
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiIntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lti/modules/titanium/media/MediaModule$CameraResultHandler;->cameraIntent:Landroid/content/Intent;

    .line 208
    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #activity:Landroid/app/Activity;
    .end local v5           #activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    .end local v7           #cameraIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #imageDir:Ljava/io/File;
    .end local v14           #imageFile:Ljava/io/File;
    .end local v15           #imageUrl:Ljava/lang/String;
    .end local v16           #isHTCCameraApp:Z
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #resultHandler:Lti/modules/titanium/media/MediaModule$CameraResultHandler;
    .end local v21           #saveToPhotoGallery:Z
    .end local v24           #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_9
    :goto_2
    return-void

    .line 119
    :catch_0
    move-exception v25

    move-object/from16 v23, v25

    .line 120
    .local v23, t:Ljava/lang/Throwable;
    if-eqz v6, :cond_a

    .line 121
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 123
    :cond_a
    if-eqz v10, :cond_9

    .line 124
    const/16 v25, 0x2

    const-string v26, "Camera not available."

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v25

    move-object v0, v10

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_2

    .line 149
    .end local v23           #t:Ljava/lang/Throwable;
    .restart local v4       #activity:Landroid/app/Activity;
    .restart local v5       #activitySupport:Lorg/appcelerator/titanium/util/TiActivitySupport;
    .restart local v12       #imageDir:Ljava/io/File;
    .restart local v14       #imageFile:Ljava/io/File;
    .restart local v21       #saveToPhotoGallery:Z
    .restart local v24       #tfh:Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_b
    :try_start_5
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v25

    if-eqz v25, :cond_d

    .line 150
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/media/MediaModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v17

    .line 151
    .local v17, name:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    const-string v25, "/sdcard/dcim/Camera"

    move-object v0, v13

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 152
    .end local v12           #imageDir:Ljava/io/File;
    .restart local v13       #imageDir:Ljava/io/File;
    :try_start_6
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_c

    .line 153
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 154
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_c

    .line 155
    const-string v25, "TiMedia"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Attempt to create \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\' failed silently."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_c
    move-object v12, v13

    .line 158
    .end local v13           #imageDir:Ljava/io/File;
    .restart local v12       #imageDir:Ljava/io/File;
    goto/16 :goto_0

    .line 159
    .end local v17           #name:Ljava/lang/String;
    :cond_d
    const/16 v25, 0x0

    :try_start_7
    invoke-virtual/range {v24 .. v25}, Lorg/appcelerator/titanium/util/TiFileHelper;->getDataDirectory(Z)Ljava/io/File;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v12

    goto/16 :goto_0

    .line 164
    :catch_1
    move-exception v25

    move-object/from16 v9, v25

    .line 165
    .local v9, e:Ljava/io/IOException;
    :goto_3
    const-string v25, "TiMedia"

    const-string v26, "Unable to create temp file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    if-eqz v10, :cond_9

    .line 167
    const/16 v25, 0x0

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/media/MediaModule;->createErrorResponse(ILjava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v25

    move-object v0, v10

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_2

    .line 190
    .end local v9           #e:Ljava/io/IOException;
    .restart local v3       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7       #cameraIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v15       #imageUrl:Ljava/lang/String;
    .restart local v16       #isHTCCameraApp:Z
    .restart local v18       #pm:Landroid/content/pm/PackageManager;
    .restart local v20       #rs:Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v25

    goto/16 :goto_1

    .line 164
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #cameraIntent:Lorg/appcelerator/titanium/util/TiIntentWrapper;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #imageDir:Ljava/io/File;
    .end local v15           #imageUrl:Ljava/lang/String;
    .end local v16           #isHTCCameraApp:Z
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #rs:Landroid/content/pm/ResolveInfo;
    .restart local v13       #imageDir:Ljava/io/File;
    :catch_3
    move-exception v25

    move-object/from16 v9, v25

    move-object v12, v13

    .end local v13           #imageDir:Ljava/io/File;
    .restart local v12       #imageDir:Ljava/io/File;
    goto :goto_3

    .end local v12           #imageDir:Ljava/io/File;
    .restart local v13       #imageDir:Ljava/io/File;
    :cond_e
    move-object v12, v13

    .end local v13           #imageDir:Ljava/io/File;
    .restart local v12       #imageDir:Ljava/io/File;
    goto/16 :goto_0
.end method

.method public takeScreenshot(Lorg/appcelerator/titanium/kroll/KrollCallback;)V
    .locals 6
    .parameter "callback"

    .prologue
    .line 597
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 598
    .local v0, a:Landroid/app/Activity;
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 599
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 604
    .local v2, w:Landroid/view/Window;
    :goto_1
    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 605
    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v2

    goto :goto_1

    .line 608
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 609
    .local v1, image:Lorg/appcelerator/kroll/KrollDict;
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 610
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p1, v3}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync([Ljava/lang/Object;)V

    .line 612
    :cond_2
    return-void
.end method

.method public vibrate([J)V
    .locals 3
    .parameter "pattern"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 83
    array-length v1, p1

    if-nez v1, :cond_0

    .line 84
    sget-object p1, Lti/modules/titanium/media/MediaModule;->DEFAULT_VIBRATE_PATTERN:[J

    .line 86
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/media/MediaModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 87
    .local v0, vibrator:Landroid/os/Vibrator;
    if-eqz v0, :cond_1

    .line 88
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 90
    :cond_1
    return-void
.end method
