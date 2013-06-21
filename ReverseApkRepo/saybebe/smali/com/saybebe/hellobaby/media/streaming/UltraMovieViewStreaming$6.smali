.class Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;
.super Ljava/lang/Object;
.source "UltraMovieViewStreaming.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->downloadMovieFile()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;


# direct methods
.method constructor <init>(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 386
    const/4 v7, 0x0

    .line 388
    .local v7, total:I
    const/16 v8, 0x4000

    new-array v2, v8, [B

    .line 391
    .local v2, data:[B
    :try_start_0
    const-string v8, "UltraMovieView"

    const-string v9, "Download starts..."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v8, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    iget-object v9, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->videoUrl:Ljava/lang/String;
    invoke-static {v9}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$15(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->initConnection(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$16(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;Ljava/lang/String;)V

    .line 395
    iget-object v8, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->conn:Ljava/net/HttpURLConnection;
    invoke-static {v8}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$17(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Ljava/net/HttpURLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 396
    .local v5, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 397
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->file:Ljava/io/File;
    invoke-static {v8}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$18(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 398
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 399
    .local v1, bos:Ljava/io/BufferedOutputStream;
    const/4 v6, 0x0

    .line 400
    .local v6, n:I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    iget-object v8, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #getter for: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->isRunning:Z
    invoke-static {v8}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$19(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 405
    :cond_0
    const-string v8, "UltraMovieView"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Download completed (or interrupted). Total="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 407
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 408
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    iget-object v8, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #calls: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V
    invoke-static {v8}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$14(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    .line 416
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #n:I
    :goto_1
    return-void

    .line 401
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #n:I
    :cond_1
    add-int/2addr v7, v6

    .line 402
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v8, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 410
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #n:I
    :catch_0
    move-exception v3

    .line 411
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    iget-object v8, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #calls: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V
    invoke-static {v8}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$14(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    goto :goto_1

    .line 412
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 413
    iget-object v9, p0, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming$6;->this$0:Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;

    #calls: Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->closeConnection()V
    invoke-static {v9}, Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;->access$14(Lcom/saybebe/hellobaby/media/streaming/UltraMovieViewStreaming;)V

    .line 414
    throw v8
.end method
