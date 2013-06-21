.class public final Lcom/nix/apps/androlib/wallpapers/ImageViewEx;
.super Landroid/widget/ImageView;
.source "ImageViewEx.java"


# instance fields
.field final handler:Landroid/os/Handler;

.field private mRemote:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$1;-><init>(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->handler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method private ImageOperations(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "url"

    .prologue
    .line 92
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

    .line 96
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 97
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 98
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 99
    .local v4, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v0, bis:Ljava/io/BufferedInputStream;
    const-string v5, "src"

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 101
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 102
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 103
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v2

    .line 127
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #is:Ljava/io/InputStream;
    :goto_0
    return-object v5

    .line 105
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 106
    .local v3, e:Ljava/net/MalformedURLException;
    const-string v5, "TAG"

    const-string v5, "Malformed"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz p2, :cond_0

    .line 109
    invoke-direct {p0, p1, v6}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->ImageOperations(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v7

    .line 111
    goto :goto_0

    .line 113
    .end local v3           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 114
    .local v3, e:Ljava/io/IOException;
    const-string v5, "TAG"

    const-string v5, "IO"

    invoke-static {v8, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    if-eqz p2, :cond_1

    .line 117
    invoke-direct {p0, p1, v6}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->ImageOperations(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v7

    .line 119
    goto :goto_0

    .line 121
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 122
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "TAG"

    const-string v5, "Ex"

    invoke-static {v8, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    if-eqz p2, :cond_2

    .line 125
    invoke-direct {p0, p1, v6}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->ImageOperations(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v7

    .line 127
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setFromLocal()V

    return-void
.end method

.method static synthetic access$1(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->fetchDrawable(Ljava/lang/String;)V

    return-void
.end method

.method private final fetchDrawable(Ljava/lang/String;)V
    .locals 2
    .parameter "urlString"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->ImageOperations(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 79
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    return-void
.end method

.method private setFromLocal()V
    .locals 3

    .prologue
    .line 145
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 147
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->isSDKAPI4Mini()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-static {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageSetterSDK4;->setImage(Landroid/graphics/drawable/Drawable;Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    .line 159
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 152
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageSetterSDK3;->setImage(Landroid/graphics/drawable/Drawable;Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    goto :goto_0
.end method


# virtual methods
.method public loadImage()V
    .locals 3

    .prologue
    .line 37
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->drawableMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$2;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$2;-><init>(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    .line 43
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    :goto_0
    return-void

    .line 46
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->defaultMiniImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$3;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$3;-><init>(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    .line 54
    .restart local v0       #thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setRemoteURI(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 31
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->mRemote:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method
