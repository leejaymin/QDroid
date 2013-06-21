.class public Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$1;,
        Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaUtil"

.field private static final REPL_ASSET_DIR:Ljava/lang/String; = "/sdcard/AppInventor/assets/"

.field private static final tempFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static cacheMediaTempFile(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/File;
    .locals 4
    .parameter "form"
    .parameter "mediaPath"
    .parameter "mediaSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "MediaUtil"

    .line 188
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 189
    .local v0, tempFile:Ljava/io/File;
    if-nez v0, :cond_0

    .line 190
    const-string v1, "MediaUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copying media "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to temp file..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->copyMediaToTempFile(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v0

    .line 192
    const-string v1, "MediaUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished copying media "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to temp file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->tempFileMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    return-object v0
.end method

.method public static copyMediaToTempFile(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "form"
    .parameter "mediaPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->determineMediaSource(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 156
    .local v0, mediaSource:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    invoke-static {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->copyMediaToTempFile(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static copyMediaToTempFile(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/File;
    .locals 6
    .parameter "form"
    .parameter "mediaPath"
    .parameter "mediaSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "MediaUtil"

    const-string v3, "Could not copy media "

    .line 161
    invoke-static {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->openMedia(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v2

    .line 162
    .local v2, in:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 164
    .local v1, file:Ljava/io/File;
    :try_start_0
    const-string v3, "AI_Media_"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/FileUtil;->writeStreamToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v1

    .line 169
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 170
    .local v0, e:Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 171
    :try_start_1
    const-string v3, "MediaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to temp file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 179
    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v3

    .line 175
    .restart local v0       #e:Ljava/io/IOException;
    :cond_0
    :try_start_2
    const-string v3, "MediaUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not copy media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to temp file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static determineMediaSource(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    .locals 1
    .parameter "form"
    .parameter "mediaPath"

    .prologue
    .line 84
    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->SDCARD:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    .line 111
    :goto_0
    return-object v0

    .line 87
    :cond_0
    const-string v0, "content://contacts/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->CONTENT_URI:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    goto :goto_0

    .line 95
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->FILE_URL:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    goto :goto_0

    .line 101
    :cond_3
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->URL:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 107
    instance-of v0, p0, Lcom/google/devtools/simple/runtime/components/android/ReplForm;

    if-eqz v0, :cond_4

    .line 108
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->REPL_ASSET:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    goto :goto_0

    .line 111
    :cond_4
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->ASSET:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    goto :goto_0
.end method

.method static fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "mediaPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "Unable to determine file path of file url "

    .line 56
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 57
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 58
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine file path of file url "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 60
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine file path of file url "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getBitmapOptions(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 8
    .parameter "form"
    .parameter "is"

    .prologue
    .line 246
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    const/4 v7, 0x0

    invoke-static {p1, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 249
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 250
    .local v2, imageWidth:I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 253
    .local v1, imageHeight:I
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/google/devtools/simple/runtime/components/android/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 255
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 256
    .local v6, screenWidth:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 258
    .local v5, screenHeight:I
    const/4 v4, 0x1

    .line 259
    .local v4, sampleSize:I
    :goto_0
    div-int v7, v2, v4

    if-gt v7, v6, :cond_0

    div-int v7, v1, v4

    if-le v7, v5, :cond_1

    .line 260
    :cond_0
    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 262
    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 263
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 264
    return-object v3
.end method

.method public static getDrawable(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "form"
    .parameter "mediaPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v8

    .line 240
    :goto_0
    return-object v5

    .line 215
    :cond_1
    invoke-static {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->determineMediaSource(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    move-result-object v3

    .line 219
    .local v3, mediaSource:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    :try_start_0
    invoke-static {p0, p1, v3}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->openMedia(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    .local v1, is1:Ljava/io/InputStream;
    :try_start_1
    invoke-static {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->getBitmapOptions(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 233
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 236
    invoke-static {p0, p1, v3}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->openMedia(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v2

    .line 238
    .local v2, is2:Ljava/io/InputStream;
    :try_start_2
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    invoke-static {v2, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 220
    .end local v1           #is1:Ljava/io/InputStream;
    .end local v2           #is2:Ljava/io/InputStream;
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/io/IOException;
    sget-object v5, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    if-ne v3, v5, :cond_2

    .line 223
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080066

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 226
    :cond_2
    throw v0

    .line 233
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #is1:Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v5

    .line 240
    .restart local v2       #is2:Ljava/io/InputStream;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v5
.end method

.method public static loadMediaPlayer(Landroid/media/MediaPlayer;Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)V
    .locals 12
    .parameter "mediaPlayer"
    .parameter "form"
    .parameter "mediaPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v11, "."

    .line 325
    invoke-static {p1, p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->determineMediaSource(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    move-result-object v7

    .line 326
    .local v7, mediaSource:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$1;->$SwitchMap$com$google$devtools$simple$runtime$components$android$util$MediaUtil$MediaSource:[I

    invoke-virtual {v7}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->ordinal()I

    move-result v9

    aget v0, v0, v9

    packed-switch v0, :pswitch_data_0

    .line 363
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load audio or video "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 330
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 331
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 332
    .local v2, offset:J
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .local v4, length:J
    move-object v0, p0

    .line 333
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 358
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v2           #offset:J
    .end local v4           #length:J
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 335
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0

    .line 340
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :pswitch_1
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :pswitch_3
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :pswitch_4
    invoke-static {p1, p2, v7}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->cacheMediaTempFile(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v8

    .line 353
    .local v8, tempFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    .end local v8           #tempFile:Ljava/io/File;
    :pswitch_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 361
    :pswitch_6
    new-instance v0, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load audio or video for contact "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static loadSoundPool(Landroid/media/SoundPool;Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)I
    .locals 6
    .parameter "soundPool"
    .parameter "form"
    .parameter "mediaPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v5, "."

    .line 283
    invoke-static {p1, p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->determineMediaSource(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 284
    .local v0, mediaSource:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$1;->$SwitchMap$com$google$devtools$simple$runtime$components$android$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 306
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load audio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    .line 300
    :goto_0
    return v2

    .line 289
    :pswitch_1
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 292
    :pswitch_2
    invoke-virtual {p0, p2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 295
    :pswitch_3
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 299
    :pswitch_4
    invoke-static {p1, p2, v0}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->cacheMediaTempFile(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 300
    .local v1, tempFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 303
    .end local v1           #tempFile:Ljava/io/File;
    :pswitch_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load audio for contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static loadVideoView(Landroid/widget/VideoView;Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)V
    .locals 6
    .parameter "videoView"
    .parameter "form"
    .parameter "mediaPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "."

    .line 381
    invoke-static {p1, p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->determineMediaSource(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;

    move-result-object v0

    .line 382
    .local v0, mediaSource:Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;
    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$1;->$SwitchMap$com$google$devtools$simple$runtime$components$android$util$MediaUtil$MediaSource:[I

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 408
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :pswitch_0
    invoke-static {p1, p2, v0}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->cacheMediaTempFile(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/File;

    move-result-object v1

    .line 386
    .local v1, tempFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 403
    .end local v1           #tempFile:Ljava/io/File;
    :goto_0
    return-void

    .line 390
    :pswitch_1
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_3
    invoke-static {p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :pswitch_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 406
    :pswitch_5
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load video for contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static openMedia(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;)Ljava/io/InputStream;
    .locals 5
    .parameter "form"
    .parameter "mediaPath"
    .parameter "mediaSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "."

    .line 116
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$1;->$SwitchMap$com$google$devtools$simple$runtime$components$android$util$MediaUtil$MediaSource:[I

    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil$MediaSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 143
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 121
    :pswitch_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->replAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 131
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 135
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 137
    .local v0, is:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 138
    goto :goto_0

    .line 141
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open contact photo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static replAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "assetName"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/AppInventor/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
