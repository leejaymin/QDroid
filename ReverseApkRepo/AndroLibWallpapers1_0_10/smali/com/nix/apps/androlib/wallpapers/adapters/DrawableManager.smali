.class public Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;
.super Ljava/lang/Object;
.source "DrawableManager.java"


# instance fields
.field private final drawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->drawableMap:Ljava/util/Map;

    .line 47
    return-void
.end method

.method private fetch(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "urlString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 141
    .local v0, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, request:Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 145
    .local v2, response:Lorg/apache/http/HttpResponse;
    const/4 v0, 0x0

    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    return-void
.end method

.method public fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "urlString"

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    move-object v3, p0

    .line 66
    :goto_0
    return-object v3

    .line 57
    .restart local p0
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 58
    .local v2, is:Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 60
    goto :goto_0

    .line 61
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/net/MalformedURLException;
    move-object v3, v4

    .line 63
    goto :goto_0

    .line 64
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/io/IOException;
    move-object v3, v4

    .line 66
    goto :goto_0
.end method

.method public fetchDrawableOnThread(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "urlString"
    .parameter "imageView"

    .prologue
    .line 71
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$1;

    invoke-direct {v0, p0, p2}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$1;-><init>(Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;Landroid/widget/ImageView;)V

    .line 95
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$2;-><init>(Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;Ljava/lang/String;Landroid/os/Handler;)V

    .line 109
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 110
    return-void
.end method

.method public fetchDrawableOnThreadSDK3(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "urlString"
    .parameter "imageView"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->drawableMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_0
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$3;

    invoke-direct {v0, p0, p2}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$3;-><init>(Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;Landroid/widget/ImageView;)V

    .line 126
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;-><init>(Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;Ljava/lang/String;Landroid/os/Handler;)V

    .line 135
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method
