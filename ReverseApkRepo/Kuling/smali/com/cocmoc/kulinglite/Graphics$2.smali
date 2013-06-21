.class Lcom/cocmoc/kulinglite/Graphics$2;
.super Ljava/lang/Object;
.source "Graphics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Graphics;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Graphics;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Graphics;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Graphics$2;->this$0:Lcom/cocmoc/kulinglite/Graphics;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-string v8, "Kuling"

    .line 166
    :try_start_0
    const-string v6, "Kuling"

    const-string v7, "Graphics: Graphics.onStart.run() try1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :try_start_1
    const-string v6, "Kuling"

    const-string v7, "Graphics: Graphics.onStart.run() try2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/cocmoc/kulinglite/Graphics$2;->this$0:Lcom/cocmoc/kulinglite/Graphics;

    #getter for: Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;
    invoke-static {v6}, Lcom/cocmoc/kulinglite/Graphics;->access$1(Lcom/cocmoc/kulinglite/Graphics;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 171
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 172
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 173
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 174
    .local v3, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 175
    .local v0, bis:Ljava/io/BufferedInputStream;
    iget-object v6, p0, Lcom/cocmoc/kulinglite/Graphics$2;->this$0:Lcom/cocmoc/kulinglite/Graphics;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/cocmoc/kulinglite/Graphics;->bm:Landroid/graphics/Bitmap;

    .line 176
    const-string v6, "Kuling"

    const-string v7, "Graphics: Graphics.onStart.run() try5"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #url:Ljava/net/URL;
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/cocmoc/kulinglite/Graphics$2;->this$0:Lcom/cocmoc/kulinglite/Graphics;

    iget-object v6, v6, Lcom/cocmoc/kulinglite/Graphics;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/cocmoc/kulinglite/Graphics$2;->this$0:Lcom/cocmoc/kulinglite/Graphics;

    iget-object v7, v7, Lcom/cocmoc/kulinglite/Graphics;->handler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    :goto_1
    return-void

    .line 179
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 181
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const-string v6, "Kuling"

    const-string v7, "Graphics: Graphics.onStart.run() exception e"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 186
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 188
    .local v4, t:Ljava/lang/Throwable;
    const-string v6, "Kuling"

    const-string v6, "Graphics: Graphics.onStart.run() exception t"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
