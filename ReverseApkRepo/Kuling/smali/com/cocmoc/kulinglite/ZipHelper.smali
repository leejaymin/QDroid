.class public Lcom/cocmoc/kulinglite/ZipHelper;
.super Ljava/lang/Object;
.source "ZipHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapInZip(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "zipUrlString"
    .parameter "bitmapUrlString"

    .prologue
    const-string v6, "Kuling"

    .line 21
    const/4 v0, 0x0

    .line 24
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 27
    .local v4, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_1

    .line 53
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :goto_1
    return-object v0

    .line 30
    .restart local v1       #e:Ljava/util/Enumeration;
    .restart local v4       #zip:Ljava/util/zip/ZipFile;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 33
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 39
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 42
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 44
    .local v1, e:Ljava/util/zip/ZipException;
    const-string v5, "Kuling"

    const-string v5, "ZipHelper: getBitmapInZip ZipException"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v1           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 48
    .local v1, e:Ljava/io/IOException;
    const-string v5, "Kuling"

    const-string v5, "ZipHelper: getBitmapInZip IOException"

    invoke-static {v6, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
