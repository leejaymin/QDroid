.class public final Lcom/nix/apps/androlib/wallpapers/ImageViewEx;
.super Landroid/widget/ImageView;
.source "ImageViewEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Wallpapers"


# instance fields
.field final handler:Landroid/os/Handler;

.field private mRemote:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$1;-><init>(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method private ImageOperations(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "url"

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->ImageOperations(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private ImageOperations(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "url"
    .parameter "firstTry"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v8, "TAG"

    .line 103
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 104
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 105
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 106
    .local v4, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 110
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    const-string v5, "src"

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 116
    .local v2, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 117
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 118
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v5, v2

    .line 147
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #is:Ljava/io/InputStream;
    :goto_1
    return-object v5

    .line 111
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 112
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 113
    const/4 v2, 0x0

    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 125
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 126
    .local v3, e:Ljava/net/MalformedURLException;
    const-string v5, "TAG"

    const-string v5, "Malformed"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz p2, :cond_1

    .line 129
    invoke-direct {p0, p1, v6}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->ImageOperations(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v7

    .line 131
    goto :goto_1

    .line 133
    .end local v3           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 134
    .local v3, e:Ljava/io/IOException;
    const-string v5, "TAG"

    const-string v5, "IO"

    invoke-static {v8, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    if-eqz p2, :cond_2

    .line 137
    invoke-direct {p0, p1, v6}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->ImageOperations(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v7

    .line 139
    goto :goto_1

    .line 141
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    move-object v3, v5

    .line 142
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "TAG"

    const-string v5, "Ex"

    invoke-static {v8, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    if-eqz p2, :cond_3

    .line 145
    invoke-direct {p0, p1, v6}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->ImageOperations(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v7

    .line 147
    goto :goto_1
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setFromLocal()V

    return-void
.end method

.method static synthetic access$1(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->fetchDrawable(Ljava/lang/String;)V

    return-void
.end method

.method private final fetchDrawable(Ljava/lang/String;)V
    .locals 2
    .parameter "urlString"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->ImageOperations(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 86
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    return-void
.end method

.method private setFromLocal()V
    .locals 3

    .prologue
    .line 165
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 167
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->isSDKAPI4Mini()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-static {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageSetterSDK4;->setImage(Landroid/graphics/drawable/Drawable;Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    .line 179
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 172
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageSetterSDK3;->setImage(Landroid/graphics/drawable/Drawable;Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    goto :goto_0
.end method


# virtual methods
.method public loadImage()V
    .locals 3

    .prologue
    .line 38
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 40
    const-string v1, "Wallpapers"

    const-string v2, "Empty image in memory"

    invoke-static {v1, v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 42
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 44
    :cond_0
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$2;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$2;-><init>(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    .line 50
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    :goto_0
    return-void

    .line 53
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_1
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$3;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$3;-><init>(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    .line 61
    .restart local v0       #thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setRemoteURI(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 32
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    .line 35
    :cond_0
    return-void
.end method
