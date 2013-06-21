.class Lcom/trafficStats/test/TrafficStatsTest$TrafficeTest;
.super Ljava/lang/Thread;
.source "TrafficStatsTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trafficStats/test/TrafficStatsTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficeTest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trafficStats/test/TrafficStatsTest;


# direct methods
.method constructor <init>(Lcom/trafficStats/test/TrafficStatsTest;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/trafficStats/test/TrafficStatsTest$TrafficeTest;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 214
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    const-string v6, "168.188.128.26"

    const/16 v7, 0x115c

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 215
    .local v5, socket:Ljava/net/Socket;
    const-string v2, "end"

    .line 218
    .local v2, message:Ljava/lang/String;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 219
    .local v0, buf:[B
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 220
    .local v3, out:Ljava/io/OutputStream;
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    .local v4, out_end:Ljava/io/PrintWriter;
    :goto_0
    :try_start_1
    sget v6, Lcom/trafficStats/test/TrafficStatsTest;->THREAD_STATE:I

    if-eq v6, v9, :cond_0

    .line 228
    const/4 v6, 0x0

    const/16 v7, 0x9

    aput-byte v7, v0, v6

    .line 230
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    :try_start_2
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 242
    .end local v0           #buf:[B
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #out_end:Ljava/io/PrintWriter;
    .end local v5           #socket:Ljava/net/Socket;
    :goto_1
    return-void

    .line 224
    .restart local v0       #buf:[B
    .restart local v2       #message:Ljava/lang/String;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v4       #out_end:Ljava/io/PrintWriter;
    .restart local v5       #socket:Ljava/net/Socket;
    :cond_0
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 225
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "TCP"

    const-string v7, "S: Error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    :try_start_5
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 238
    .end local v0           #buf:[B
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #out_end:Ljava/io/PrintWriter;
    .end local v5           #socket:Ljava/net/Socket;
    :catch_1
    move-exception v1

    .line 239
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "TCP"

    const-string v7, "C: Error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 234
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buf:[B
    .restart local v2       #message:Ljava/lang/String;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v4       #out_end:Ljava/io/PrintWriter;
    .restart local v5       #socket:Ljava/net/Socket;
    :catchall_0
    move-exception v6

    .line 235
    :try_start_6
    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 237
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
.end method
