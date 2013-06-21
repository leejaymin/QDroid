.class Lkr/co/medinbiz/widget/ultra/VidioView$1;
.super Ljava/lang/Object;
.source "VidioView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/VidioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/VidioView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/VidioView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 205
    const/16 v8, 0x1000

    new-array v2, v8, [B

    .line 207
    .local v2, data:[B
    :try_start_0
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$0(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/net/HttpURLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 208
    .local v5, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 209
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$1(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 210
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 211
    .local v1, bos:Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 212
    .local v7, n:I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->isRunning:Z
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$2(Lkr/co/medinbiz/widget/ultra/VidioView;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 215
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 216
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 217
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->isRunning:Z
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$2(Lkr/co/medinbiz/widget/ultra/VidioView;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 218
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$1(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_1
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$0(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/net/HttpURLConnection;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 232
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$0(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/net/HttpURLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 236
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #n:I
    :cond_2
    :goto_2
    return-void

    .line 213
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #n:I
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #n:I
    :catch_0
    move-exception v3

    .line 227
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$1(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 228
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$1(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :cond_4
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$0(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/net/HttpURLConnection;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 232
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$0(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/net/HttpURLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 220
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #n:I
    :cond_5
    :try_start_3
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$1(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->file:Ljava/io/File;
    invoke-static {v9}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$3(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 221
    .local v6, isRename:Z
    if-nez v6, :cond_1

    .line 222
    iget-object v8, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->tempFile:Ljava/io/File;
    invoke-static {v8}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$1(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 230
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #isRename:Z
    .end local v7           #n:I
    :catchall_0
    move-exception v8

    .line 231
    iget-object v9, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;
    invoke-static {v9}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$0(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/net/HttpURLConnection;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 232
    iget-object v9, p0, Lkr/co/medinbiz/widget/ultra/VidioView$1;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->conn:Ljava/net/HttpURLConnection;
    invoke-static {v9}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$0(Lkr/co/medinbiz/widget/ultra/VidioView;)Ljava/net/HttpURLConnection;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 234
    :cond_6
    throw v8
.end method
