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
    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    .line 1419
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    .line 1420
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1423
    const/4 v2, 0x0

    .line 1425
    .local v2, myFileUrl:Ljava/net/URL;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->imageUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    .end local v2           #myFileUrl:Ljava/net/URL;
    .local v3, myFileUrl:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1427
    .local v0, conn:Ljava/net/HttpURLConnection;
    const-string v4, "User-Agent"

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/Mobclix;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1429
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1430
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1432
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->bmImg:Landroid/graphics/Bitmap;

    .line 1433
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    iget-object v5, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1435
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #myFileUrl:Ljava/net/URL;
    .restart local v2       #myFileUrl:Ljava/net/URL;
    :goto_0
    iget-object v4, p0, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;->handler:Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;->sendEmptyMessage(I)Z

    .line 1436
    return-void

    .line 1434
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2           #myFileUrl:Ljava/net/URL;
    .restart local v3       #myFileUrl:Ljava/net/URL;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #myFileUrl:Ljava/net/URL;
    .restart local v2       #myFileUrl:Ljava/net/URL;
    goto :goto_0
.end method
