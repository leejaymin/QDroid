.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;
.super Lcom/adobe/fre/FREContext;


# static fields
.field private static final FILL_COLOR:[Ljava/lang/Byte; = null

.field private static final MAX_ALLOC:I = 0xf4240

.field private static final TAG_TO_BITMAPDATA:Ljava/lang/String; = "toBitmapData"


# instance fields
.field protected iController:Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Byte;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->FILL_COLOR:[Ljava/lang/Byte;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    new-instance v0, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;

    const-string v1, "CameraRollController"

    invoke-direct {v0, v1}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->iController:Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->iController:Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->iController:Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;

    invoke-virtual {v0}, Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;->interrupt()V

    :cond_0
    return-void
.end method

.method public getController()Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->iController:Lcom/adobe/ttpixel/extension/cameraroll/CameraRollController;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "browseImages"

    new-instance v2, Lcom/adobe/ttpixel/extension/cameraroll/FnBrowseImages;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/cameraroll/FnBrowseImages;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getThumbnail"

    new-instance v2, Lcom/adobe/ttpixel/extension/cameraroll/FnGetThumbnail;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/cameraroll/FnGetThumbnail;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getImage"

    new-instance v2, Lcom/adobe/ttpixel/extension/cameraroll/FnGetImage;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/cameraroll/FnGetImage;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestImage"

    new-instance v2, Lcom/adobe/ttpixel/extension/cameraroll/FnRequestImage;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/cameraroll/FnRequestImage;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestThumbnail"

    new-instance v2, Lcom/adobe/ttpixel/extension/cameraroll/FnRequestThumbnail;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/cameraroll/FnRequestThumbnail;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "requestThumbnail"

    new-instance v2, Lcom/adobe/ttpixel/extension/cameraroll/FnRequestThumbnail;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/cameraroll/FnRequestThumbnail;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cancelPendingRequests"

    new-instance v2, Lcom/adobe/ttpixel/extension/cameraroll/FnCancelPendingRequests;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/cameraroll/FnCancelPendingRequests;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "addImage"

    new-instance v2, Lcom/adobe/ttpixel/extension/cameraroll/FnAddImage;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/cameraroll/FnAddImage;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toBitmapData(Landroid/graphics/Bitmap;)Lcom/adobe/fre/FREBitmapData;
    .locals 12

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v3, 0x1

    sget-object v6, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->FILL_COLOR:[Ljava/lang/Byte;

    invoke-static {v4, v5, v3, v6}, Lcom/adobe/fre/FREBitmapData;->newBitmapData(IIZ[Ljava/lang/Byte;)Lcom/adobe/fre/FREBitmapData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v6, :cond_1

    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v3

    :cond_1
    invoke-virtual {v2}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->prepareToDraw()V

    invoke-virtual {v2}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v2}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->copySwapColorChannels(Ljava/nio/Buffer;Ljava/nio/Buffer;)Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_0
    move v1, v0

    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    :try_start_4
    const-string v0, "toBitmapData"

    const-string v3, "BitmapData is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_5
    const-string v0, "toBitmapData"

    const-string v3, "Bitmap is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v11

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v2}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_5
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v11, v1

    move v1, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v11, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v11

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_3
.end method
