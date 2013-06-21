.class public Lcom/shoutem/DeviceMediaHandler;
.super Ljava/lang/Object;
.source "DeviceMediaHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceMediaHandler"

.field private static mCompleteMethod:Ljava/lang/String;


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/String;

    const-string v1, "device://media/"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shoutem/DeviceMediaHandler;->mPrefix:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private handleShowCamera(Ljava/lang/String;ILandroid/webkit/WebView;)V
    .locals 10
    .parameter "data"
    .parameter "start"
    .parameter "view"

    .prologue
    .line 124
    const-string v6, ""

    .line 126
    .local v6, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 131
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 134
    .local v5, test:Lorg/json/JSONTokener;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, obj:Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lorg/json/JSONObject;

    if-ne v7, v8, :cond_1

    .line 136
    move-object v0, v4

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    .line 137
    .local v3, jobj:Lorg/json/JSONObject;
    const-string v7, "complete"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/shoutem/DeviceMediaHandler;->mCompleteMethod:Ljava/lang/String;

    .line 138
    const-string v7, "DeviceMediaHandler"

    const-string v8, "Calling photo capture intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v7, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v7}, Lcom/shoutem/n64635/HomeActivity;->startImageCaptureIntent()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .end local v3           #jobj:Lorg/json/JSONObject;
    .end local v4           #obj:Ljava/lang/Object;
    .end local v5           #test:Lorg/json/JSONTokener;
    :cond_0
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v2           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #obj:Ljava/lang/Object;
    .restart local v5       #test:Lorg/json/JSONTokener;
    :cond_1
    :try_start_2
    const-string v7, "model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 145
    .end local v4           #obj:Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 146
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleShowGallery(Ljava/lang/String;ILandroid/webkit/WebView;)V
    .locals 11
    .parameter "data"
    .parameter "start"
    .parameter "view"

    .prologue
    .line 95
    const-string v7, ""

    .line 97
    .local v7, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 102
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 105
    .local v5, test:Lorg/json/JSONTokener;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, obj:Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/json/JSONObject;

    if-ne v8, v9, :cond_1

    .line 107
    move-object v0, v4

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    .line 108
    .local v3, jobj:Lorg/json/JSONObject;
    const-string v8, "complete"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/shoutem/DeviceMediaHandler;->mCompleteMethod:Ljava/lang/String;

    .line 109
    const-string v8, "title"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, title:Ljava/lang/String;
    const-string v8, "DeviceMediaHandler"

    const-string v9, "Calling gallery intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v8, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v8, v6}, Lcom/shoutem/n64635/HomeActivity;->startGalleryIntent(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .end local v3           #jobj:Lorg/json/JSONObject;
    .end local v4           #obj:Ljava/lang/Object;
    .end local v5           #test:Lorg/json/JSONTokener;
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 114
    .end local v2           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #obj:Ljava/lang/Object;
    .restart local v5       #test:Lorg/json/JSONTokener;
    :cond_1
    :try_start_2
    const-string v8, "model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 117
    .end local v4           #obj:Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 118
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static onImageActivityError(I)V
    .locals 5
    .parameter "resultCode"

    .prologue
    .line 64
    const-string v1, "DeviceMediaHandler"

    const-string v2, "User cancelled the image capture action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v1, "javascript: %s(false)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/shoutem/DeviceMediaHandler;->mCompleteMethod:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, jsUrl:Ljava/lang/String;
    sget-object v1, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/shoutem/n64635/HomeActivity;->goUrl(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static onImageActivitySuccess(Ljava/io/File;)V
    .locals 14
    .parameter "imageFile"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 29
    const/16 v8, 0x320

    :try_start_0
    invoke-static {p0, v8}, Lcom/shoutem/GraphicUtils;->resizeBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 30
    .local v5, outBitmap:Landroid/graphics/Bitmap;
    const-string v8, "DeviceMediaHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scaled image to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p0}, Lcom/shoutem/GraphicUtils;->extractExifOrientation(Ljava/io/File;)I

    move-result v1

    .line 34
    .local v1, exifOrientation:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 35
    invoke-static {v1}, Lcom/shoutem/GraphicUtils;->getRotationAmount(I)I

    move-result v7

    .line 36
    .local v7, rotationAmount:I
    const-string v8, "DeviceMediaHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exif orientation is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " so I\'m rotating image by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " degrees"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v5, v7}, Lcom/shoutem/GraphicUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 43
    .end local v7           #rotationAmount:I
    :goto_0
    new-instance v6, Ljava/io/File;

    sget-object v8, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v8}, Lcom/shoutem/n64635/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "images"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    const-string v9, "camera_attach.jpg"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v6, outFile:Ljava/io/File;
    invoke-static {v5, v6}, Lcom/shoutem/GraphicUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 49
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, imageUrl:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-static {v6}, Lcom/shoutem/FileUtils;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/shoutem/Base64Coder;->encode([B)[C

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([C)V

    .line 52
    .local v2, imageDataArg:Ljava/lang/String;
    const-string v8, "javascript: %s(true, \'%s\', \'%s\')"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/shoutem/DeviceMediaHandler;->mCompleteMethod:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 60
    .end local v1           #exifOrientation:I
    .end local v2           #imageDataArg:Ljava/lang/String;
    .end local v3           #imageUrl:Ljava/lang/String;
    .end local v5           #outBitmap:Landroid/graphics/Bitmap;
    .end local v6           #outFile:Ljava/io/File;
    .local v4, jsUrl:Ljava/lang/String;
    :goto_1
    sget-object v8, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v8, v4}, Lcom/shoutem/n64635/HomeActivity;->goUrl(Ljava/lang/String;)V

    .line 61
    return-void

    .line 39
    .end local v4           #jsUrl:Ljava/lang/String;
    .restart local v1       #exifOrientation:I
    .restart local v5       #outBitmap:Landroid/graphics/Bitmap;
    :cond_0
    :try_start_1
    const-string v8, "DeviceMediaHandler"

    const-string v9, "No exif data found"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 54
    .end local v1           #exifOrientation:I
    .end local v5           #outBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/IOException;
    const-string v9, "DeviceMediaHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure reading from image file. File "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, " exists"

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v8, "javascript: %s(false)"

    new-array v9, v13, [Ljava/lang/Object;

    sget-object v10, Lcom/shoutem/DeviceMediaHandler;->mCompleteMethod:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #jsUrl:Ljava/lang/String;
    goto :goto_1

    .line 55
    .end local v4           #jsUrl:Ljava/lang/String;
    :cond_1
    const-string v8, "missing"

    goto :goto_2
.end method


# virtual methods
.method public handle(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "url"
    .parameter "view"

    .prologue
    .line 72
    iget-object v3, p0, Lcom/shoutem/DeviceMediaHandler;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/shoutem/DeviceMediaHandler;->mPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 78
    .local v2, startInd:I
    const/16 v3, 0x2f

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 79
    .local v0, endInd:I
    if-gez v0, :cond_1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 83
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, method:Ljava/lang/String;
    const-string v3, "showCamera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3, p2}, Lcom/shoutem/DeviceMediaHandler;->handleShowCamera(Ljava/lang/String;ILandroid/webkit/WebView;)V

    goto :goto_0

    .line 86
    :cond_2
    const-string v3, "showGallery"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3, p2}, Lcom/shoutem/DeviceMediaHandler;->handleShowGallery(Ljava/lang/String;ILandroid/webkit/WebView;)V

    goto :goto_0

    .line 89
    :cond_3
    const-string v3, "model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dont know how to handle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
