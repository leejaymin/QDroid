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
    .line 1329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    .line 1331
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    .line 1332
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1337
    :try_start_0
    new-instance v0, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;

    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;-><init>(Ljava/lang/String;)V

    .line 1338
    .local v0, httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;->execute()Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 1339
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1341
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->bmImg:Landroid/graphics/Bitmap;

    .line 1342
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1344
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    .end local v0           #httpClient:Lcom/mobclix/android/sdk/Mobclix$MobclixHttpClient;
    .end local v1           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->sendEmptyMessage(I)Z

    .line 1347
    return-void

    .line 1345
    :catch_0
    move-exception v3

    goto :goto_0
.end method