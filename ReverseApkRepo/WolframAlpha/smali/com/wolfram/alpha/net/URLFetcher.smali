.class public Lcom/wolfram/alpha/net/URLFetcher;
.super Ljava/lang/Object;
.source "URLFetcher.java"


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0xf4240

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private volatile bytes:[B

.field private volatile charSet:Ljava/lang/String;

.field private volatile downloadedFile:Ljava/io/File;

.field private volatile exception:Ljava/lang/Exception;

.field http:Lcom/wolfram/alpha/net/HttpProvider;

.field private volatile isFinished:Z

.field private outFile:Ljava/lang/String;

.field private proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

.field private volatile totalBytes:I

.field private volatile totalBytesDownloaded:I

.field private volatile trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

.field private url:Ljava/net/URL;

.field private volatile wasCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "com.wolfram.alpha.net.URLFetcher"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/alpha/net/URLFetcher;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Lcom/wolfram/alpha/net/ProxySettings;)V
    .locals 3
    .parameter "url"
    .parameter "outFile"
    .parameter "http"
    .parameter "proxySettings"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    .line 31
    iput-boolean v2, p0, Lcom/wolfram/alpha/net/URLFetcher;->isFinished:Z

    .line 32
    iput-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    .line 33
    iput-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->bytes:[B

    .line 34
    iput v1, p0, Lcom/wolfram/alpha/net/URLFetcher;->totalBytes:I

    .line 35
    iput v1, p0, Lcom/wolfram/alpha/net/URLFetcher;->totalBytesDownloaded:I

    .line 36
    iput-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->charSet:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->exception:Ljava/lang/Exception;

    .line 49
    iput-object p1, p0, Lcom/wolfram/alpha/net/URLFetcher;->url:Ljava/net/URL;

    .line 50
    iput-object p2, p0, Lcom/wolfram/alpha/net/URLFetcher;->outFile:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/wolfram/alpha/net/URLFetcher;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 52
    iput-object p4, p0, Lcom/wolfram/alpha/net/URLFetcher;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    .line 53
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    .line 60
    iget-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    invoke-interface {v0}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->setNoRetry()V

    .line 62
    :cond_0
    return-void
.end method

.method public fetch()V
    .locals 19

    .prologue
    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_0

    .line 203
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->isFinished:Z

    .line 205
    :goto_0
    return-void

    .line 127
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 128
    .local v12, start:J
    sget-object v15, Lcom/wolfram/alpha/net/URLFetcher;->logger:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Downloading url "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->url:Ljava/net/URL;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 130
    const/4 v11, 0x0

    .line 131
    .local v11, responseStream:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 132
    .local v9, outStream:Ljava/io/OutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->outFile:Ljava/lang/String;

    move-object v15, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    move v14, v15

    .line 135
    .local v14, useFile:Z
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->url:Ljava/net/URL;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->proxySettings:Lcom/wolfram/alpha/net/ProxySettings;

    move-object/from16 v17, v0

    invoke-interface/range {v15 .. v17}, Lcom/wolfram/alpha/net/HttpProvider;->createHttpTransaction(Ljava/net/URL;Lcom/wolfram/alpha/net/ProxySettings;)Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    invoke-interface {v15}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->execute()V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    invoke-interface {v15}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->getContentLength()J

    move-result-wide v3

    .line 138
    .local v3, contentLength:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    invoke-interface {v15}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->getCharSet()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->charSet:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    invoke-interface {v15}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->getResponseStream()Ljava/io/InputStream;

    move-result-object v11

    .line 142
    if-eqz v14, :cond_e

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->outFile:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_9

    .line 144
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->outFile:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    .line 150
    :goto_2
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    invoke-direct {v10, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v9           #outStream:Ljava/io/OutputStream;
    .local v10, outStream:Ljava/io/OutputStream;
    move-object v9, v10

    .line 159
    .end local v10           #outStream:Ljava/io/OutputStream;
    .restart local v9       #outStream:Ljava/io/OutputStream;
    :goto_3
    const/16 v15, 0x2000

    new-array v2, v15, [B

    .line 160
    .local v2, buf:[B
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->totalBytesDownloaded:I

    .line 161
    if-eqz v14, :cond_15

    const-wide v15, 0x7fffffffffffffffL

    move-wide v6, v15

    .line 164
    .local v6, maxBytesToDownload:J
    :cond_1
    :goto_4
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, numRead:I
    const/4 v15, -0x1

    if-eq v8, v15, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-nez v15, :cond_1c

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->totalBytesDownloaded:I

    move v15, v0

    add-int/2addr v15, v8

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->totalBytesDownloaded:I

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->totalBytesDownloaded:I

    move v15, v0

    int-to-long v15, v15

    cmp-long v15, v15, v6

    if-gtz v15, :cond_1

    .line 167
    const/4 v15, 0x0

    invoke-virtual {v9, v2, v15, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/wolfram/alpha/net/WAHttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 170
    .end local v2           #buf:[B
    .end local v3           #contentLength:J
    .end local v6           #maxBytesToDownload:J
    .end local v8           #numRead:I
    :catch_0
    move-exception v15

    move-object v5, v15

    .line 171
    .local v5, e:Lcom/wolfram/alpha/net/WAHttpException;
    :try_start_3
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->exception:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    if-eqz v11, :cond_2

    .line 178
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 179
    :cond_2
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    if-eqz v15, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    invoke-interface {v15}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->release()V

    .line 181
    :cond_3
    if-eqz v9, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-nez v15, :cond_4

    if-nez v14, :cond_4

    .line 183
    move-object v0, v9

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->bytes:[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    :cond_4
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 186
    :cond_5
    :goto_6
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    if-eqz v15, :cond_6

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 188
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    .line 192
    .end local v5           #e:Lcom/wolfram/alpha/net/WAHttpException;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->exception:Ljava/lang/Exception;

    move-object v15, v0

    if-eqz v15, :cond_7

    .line 193
    sget-object v15, Lcom/wolfram/alpha/net/URLFetcher;->logger:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception downloading URL "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->url:Ljava/net/URL;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->exception:Ljava/lang/Exception;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 196
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-eqz v15, :cond_1b

    .line 197
    sget-object v15, Lcom/wolfram/alpha/net/URLFetcher;->logger:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Download of URL "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->url:Ljava/net/URL;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " was cancelled by user. Elapsed millis: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    :goto_8
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->isFinished:Z

    goto/16 :goto_0

    .line 132
    .end local v14           #useFile:Z
    :cond_8
    const/4 v15, 0x0

    move v14, v15

    goto/16 :goto_1

    .line 147
    .restart local v3       #contentLength:J
    .restart local v14       #useFile:Z
    :cond_9
    :try_start_8
    const-string v15, "WolframAlphaAPI"

    const-string v16, ".tmp"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->outFile:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/wolfram/alpha/net/WAHttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 172
    .end local v3           #contentLength:J
    :catch_1
    move-exception v15

    move-object v5, v15

    .line 173
    .local v5, e:Ljava/io/IOException;
    :try_start_9
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->exception:Ljava/lang/Exception;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 177
    if-eqz v11, :cond_a

    .line 178
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 179
    :cond_a
    :goto_9
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    if-eqz v15, :cond_b

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    invoke-interface {v15}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->release()V

    .line 181
    :cond_b
    if-eqz v9, :cond_d

    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-nez v15, :cond_c

    if-nez v14, :cond_c

    .line 183
    move-object v0, v9

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->bytes:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 184
    :cond_c
    :try_start_c
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 186
    :cond_d
    :goto_a
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    if-eqz v15, :cond_6

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 188
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_7

    .line 203
    .end local v5           #e:Ljava/io/IOException;
    .end local v9           #outStream:Ljava/io/OutputStream;
    .end local v11           #responseStream:Ljava/io/InputStream;
    .end local v12           #start:J
    .end local v14           #useFile:Z
    :catchall_0
    move-exception v15

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->isFinished:Z

    throw v15

    .line 153
    .restart local v3       #contentLength:J
    .restart local v9       #outStream:Ljava/io/OutputStream;
    .restart local v11       #responseStream:Ljava/io/InputStream;
    .restart local v12       #start:J
    .restart local v14       #useFile:Z
    :cond_e
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-eqz v15, :cond_f

    const-wide/32 v15, 0xf4240

    cmp-long v15, v3, v15

    if-lez v15, :cond_14

    .line 154
    :cond_f
    :try_start_e
    new-instance v15, Lcom/wolfram/alpha/WAException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Content from URL "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->url:Ljava/net/URL;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is unknown or too large to be buffered in memory. Read into a file instead."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Lcom/wolfram/alpha/net/WAHttpException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 174
    .end local v3           #contentLength:J
    :catch_2
    move-exception v15

    move-object v5, v15

    .line 175
    .local v5, e:Ljava/lang/Exception;
    :try_start_f
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->exception:Ljava/lang/Exception;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 177
    if-eqz v11, :cond_10

    .line 178
    :try_start_10
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 179
    :cond_10
    :goto_b
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    if-eqz v15, :cond_11

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    invoke-interface {v15}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->release()V

    .line 181
    :cond_11
    if-eqz v9, :cond_13

    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-nez v15, :cond_12

    if-nez v14, :cond_12

    .line 183
    move-object v0, v9

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->bytes:[B
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 184
    :cond_12
    :try_start_12
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    .line 186
    :cond_13
    :goto_c
    :try_start_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    if-eqz v15, :cond_6

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 188
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_7

    .line 155
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #contentLength:J
    :cond_14
    :try_start_14
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    long-to-int v15, v3

    invoke-direct {v10, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Lcom/wolfram/alpha/net/WAHttpException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    .end local v9           #outStream:Ljava/io/OutputStream;
    .restart local v10       #outStream:Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10           #outStream:Ljava/io/OutputStream;
    .restart local v9       #outStream:Ljava/io/OutputStream;
    goto/16 :goto_3

    .restart local v2       #buf:[B
    :cond_15
    move-wide v6, v3

    .line 161
    goto/16 :goto_4

    .line 177
    .end local v2           #buf:[B
    .end local v3           #contentLength:J
    :catchall_1
    move-exception v15

    if-eqz v11, :cond_16

    .line 178
    :try_start_15
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    .line 179
    :cond_16
    :goto_d
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object/from16 v16, v0

    if-eqz v16, :cond_17

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->release()V

    .line 181
    :cond_17
    if-eqz v9, :cond_19

    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move/from16 v16, v0

    if-nez v16, :cond_18

    if-nez v14, :cond_18

    .line 183
    move-object v0, v9

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->bytes:[B
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 184
    :cond_18
    :try_start_17
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    .line 186
    :cond_19
    :goto_e
    :try_start_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1a

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 188
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    .line 177
    :cond_1a
    throw v15

    .line 200
    :cond_1b
    sget-object v15, Lcom/wolfram/alpha/net/URLFetcher;->logger:Ljava/util/logging/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Finished downloading URL "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->url:Ljava/net/URL;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". Elapsed millis: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_8

    .line 178
    :catch_3
    move-exception v16

    goto/16 :goto_d

    .line 184
    :catch_4
    move-exception v16

    goto :goto_e

    .line 178
    .local v5, e:Lcom/wolfram/alpha/net/WAHttpException;
    :catch_5
    move-exception v15

    goto/16 :goto_5

    .line 184
    :catch_6
    move-exception v15

    goto/16 :goto_6

    .line 178
    .local v5, e:Ljava/io/IOException;
    :catch_7
    move-exception v15

    goto/16 :goto_9

    .line 184
    :catch_8
    move-exception v15

    goto/16 :goto_a

    .line 178
    .local v5, e:Ljava/lang/Exception;
    :catch_9
    move-exception v15

    goto/16 :goto_b

    .line 184
    :catch_a
    move-exception v15

    goto/16 :goto_c

    .line 177
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #buf:[B
    .restart local v3       #contentLength:J
    .restart local v6       #maxBytesToDownload:J
    .restart local v8       #numRead:I
    :cond_1c
    if-eqz v11, :cond_1d

    .line 178
    :try_start_19
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b

    .line 179
    :cond_1d
    :goto_f
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    if-eqz v15, :cond_1e

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->trans:Lcom/wolfram/alpha/net/impl/HttpTransaction;

    move-object v15, v0

    invoke-interface {v15}, Lcom/wolfram/alpha/net/impl/HttpTransaction;->release()V

    .line 181
    :cond_1e
    if-eqz v9, :cond_20

    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-nez v15, :cond_1f

    if-nez v14, :cond_1f

    .line 183
    move-object v0, v9

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->bytes:[B
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 184
    :cond_1f
    :try_start_1b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    .line 186
    :cond_20
    :goto_10
    :try_start_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    move v15, v0

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    if-eqz v15, :cond_6

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 188
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_7

    .line 178
    :catch_b
    move-exception v15

    goto :goto_f

    .line 184
    :catch_c
    move-exception v15

    goto :goto_10
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->bytes:[B

    goto :goto_0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->downloadedFile:Ljava/io/File;

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->outFile:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()D
    .locals 5

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/wolfram/alpha/net/URLFetcher;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-wide/high16 v1, 0x3ff0

    .line 109
    :goto_0
    return-wide v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/wolfram/alpha/net/URLFetcher;->getTotalBytes()I

    move-result v0

    .line 107
    .local v0, totalBytes:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 108
    const-wide/high16 v1, -0x4010

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/wolfram/alpha/net/URLFetcher;->getTotalBytesDownloaded()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    goto :goto_0
.end method

.method public getTotalBytes()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->totalBytes:I

    return v0
.end method

.method public getTotalBytesDownloaded()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->totalBytesDownloaded:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->isFinished:Z

    return v0
.end method

.method public wasCancelled()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/wolfram/alpha/net/URLFetcher;->wasCancelled:Z

    return v0
.end method
