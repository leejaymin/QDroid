.class Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FetchImageThread"
.end annotation


# instance fields
.field private bmImg:Landroid/graphics/Bitmap;

.field private handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V
    .locals 0
    .parameter "url"
    .parameter "h"

    .prologue
    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    .line 1280
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    .line 1281
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1286
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1289
    .local v0, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1290
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v4, "Cookie"

    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/mobclix/android/sdk/Mobclix;->getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 1294
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1297
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/mobclix/android/sdk/Mobclix;->syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V

    .line 1299
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->bmImg:Landroid/graphics/Bitmap;

    .line 1300
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1302
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    .end local v0           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->sendEmptyMessage(I)Z

    .line 1305
    return-void

    .line 1303
    :catch_0
    move-exception v4

    goto :goto_0
.end method
