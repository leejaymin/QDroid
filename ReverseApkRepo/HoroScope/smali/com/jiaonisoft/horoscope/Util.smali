.class public Lcom/jiaonisoft/horoscope/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x1000

.field private static nid:I

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/jiaonisoft/horoscope/Util;->toast:Landroid/widget/Toast;

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/jiaonisoft/horoscope/Util;->nid:I

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetch(Ljava/lang/String;)[B
    .locals 10
    .parameter "url"

    .prologue
    .line 135
    const/4 v7, 0x0

    .line 136
    .local v7, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 137
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v0, 0x0

    .line 140
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 141
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v8, 0x1000

    invoke-direct {v3, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 142
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 143
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x1000

    :try_start_2
    new-array v4, v8, [B

    .line 145
    .local v4, buffer:[B
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, c:I
    const/4 v8, -0x1

    if-gt v5, v8, :cond_3

    .line 148
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    if-eqz v3, :cond_0

    .line 154
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 158
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 160
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 164
    :cond_1
    :goto_2
    if-eqz v1, :cond_9

    .line 166
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 171
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #buffer:[B
    .end local v5           #c:I
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    return-object v8

    .line 146
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #c:I
    :cond_3
    const/4 v8, 0x0

    :try_start_6
    invoke-virtual {v1, v4, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 149
    .end local v4           #buffer:[B
    .end local v5           #c:I
    :catch_0
    move-exception v8

    move-object v6, v8

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 150
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .local v6, e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v8, ""

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 152
    if-eqz v2, :cond_4

    .line 154
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 158
    :cond_4
    :goto_5
    if-eqz v7, :cond_5

    .line 160
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 164
    :cond_5
    :goto_6
    if-eqz v0, :cond_2

    .line 166
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 167
    :catch_1
    move-exception v8

    goto :goto_3

    .line 151
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 152
    :goto_7
    if-eqz v2, :cond_6

    .line 154
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 158
    :cond_6
    :goto_8
    if-eqz v7, :cond_7

    .line 160
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 164
    :cond_7
    :goto_9
    if-eqz v0, :cond_8

    .line 166
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 170
    :cond_8
    :goto_a
    throw v8

    .line 167
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #c:I
    :catch_2
    move-exception v8

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 155
    .end local v4           #buffer:[B
    .end local v5           #c:I
    .restart local v6       #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_5

    .line 161
    :catch_4
    move-exception v8

    goto :goto_6

    .line 155
    .end local v6           #e:Ljava/io/IOException;
    :catch_5
    move-exception v9

    goto :goto_8

    .line 161
    :catch_6
    move-exception v9

    goto :goto_9

    .line 167
    :catch_7
    move-exception v9

    goto :goto_a

    .line 155
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #c:I
    :catch_8
    move-exception v8

    goto :goto_1

    .line 161
    :catch_9
    move-exception v8

    goto :goto_2

    .line 151
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v5           #c:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_7

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_7

    .line 149
    :catch_a
    move-exception v8

    move-object v6, v8

    goto :goto_4

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v8

    move-object v6, v8

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #c:I
    :cond_9
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public static final getFromUrl(Ljava/lang/String;)[B
    .locals 13
    .parameter "url"

    .prologue
    .line 87
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 88
    .local v6, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 89
    .local v9, method:Lorg/apache/http/client/methods/HttpGet;
    const/4 v10, 0x0

    .line 90
    .local v10, response:Lorg/apache/http/HttpResponse;
    const/4 v8, 0x0

    .line 91
    .local v8, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 92
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v0, 0x0

    .line 95
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v6, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 96
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 97
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v11, 0x1000

    invoke-direct {v3, v8, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 98
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .local v3, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x1000

    invoke-direct {v1, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 99
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x1000

    :try_start_2
    new-array v4, v11, [B

    .line 101
    .local v4, buffer:[B
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    .local v5, c:I
    const/4 v11, -0x1

    if-gt v5, v11, :cond_3

    .line 104
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    if-eqz v3, :cond_0

    .line 110
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 114
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    .line 116
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 120
    :cond_1
    :goto_2
    if-eqz v1, :cond_9

    .line 122
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 127
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #buffer:[B
    .end local v5           #c:I
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    return-object v11

    .line 102
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #c:I
    :cond_3
    const/4 v11, 0x0

    :try_start_6
    invoke-virtual {v1, v4, v11, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 105
    .end local v4           #buffer:[B
    .end local v5           #c:I
    :catch_0
    move-exception v11

    move-object v7, v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 106
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .local v7, e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v11, ""

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 108
    if-eqz v2, :cond_4

    .line 110
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 114
    :cond_4
    :goto_5
    if-eqz v8, :cond_5

    .line 116
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 120
    :cond_5
    :goto_6
    if-eqz v0, :cond_2

    .line 122
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 123
    :catch_1
    move-exception v11

    goto :goto_3

    .line 107
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 108
    :goto_7
    if-eqz v2, :cond_6

    .line 110
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 114
    :cond_6
    :goto_8
    if-eqz v8, :cond_7

    .line 116
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 120
    :cond_7
    :goto_9
    if-eqz v0, :cond_8

    .line 122
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 126
    :cond_8
    :goto_a
    throw v11

    .line 123
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #c:I
    :catch_2
    move-exception v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 111
    .end local v4           #buffer:[B
    .end local v5           #c:I
    .restart local v7       #e:Ljava/io/IOException;
    :catch_3
    move-exception v11

    goto :goto_5

    .line 117
    :catch_4
    move-exception v11

    goto :goto_6

    .line 111
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v12

    goto :goto_8

    .line 117
    :catch_6
    move-exception v12

    goto :goto_9

    .line 123
    :catch_7
    move-exception v12

    goto :goto_a

    .line 111
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #c:I
    :catch_8
    move-exception v11

    goto :goto_1

    .line 117
    :catch_9
    move-exception v11

    goto :goto_2

    .line 107
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #buffer:[B
    .end local v5           #c:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_7

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_7

    .line 105
    :catch_a
    move-exception v11

    move-object v7, v11

    goto :goto_4

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v11

    move-object v7, v11

    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #buffer:[B
    .restart local v5       #c:I
    :cond_9
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public static getView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 70
    .line 71
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Landroid/view/LayoutInflater;

    .line 72
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getView(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 2
    .parameter "context"
    .parameter "viewgroup"
    .parameter "id"

    .prologue
    .line 76
    .line 77
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    check-cast v0, Landroid/view/LayoutInflater;

    .line 78
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    return-void
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 273
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    .line 275
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 277
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .parameter "context"
    .parameter "className"

    .prologue
    const/4 v6, 0x0

    .line 44
    .line 45
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    check-cast v0, Landroid/app/ActivityManager;

    .line 48
    .local v0, activityManager:Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 50
    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    move-object v5, v6

    .line 63
    :goto_0
    return-object v5

    .line 54
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    move-object v5, v6

    .line 63
    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 56
    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 58
    .local v4, serviceName:Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 59
    goto :goto_0

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final postToUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "url"
    .parameter "file"

    .prologue
    const-string v6, "binary/octet-stream"

    .line 175
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 176
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 178
    .local v4, method:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 179
    .local v5, response:Lorg/apache/http/HttpResponse;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, f:Ljava/io/File;
    new-instance v3, Lorg/apache/http/entity/FileEntity;

    const-string v6, "binary/octet-stream"

    invoke-direct {v3, v2, v6}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v3, fileEntity:Lorg/apache/http/entity/FileEntity;
    const-string v6, "binary/octet-stream"

    invoke-virtual {v3, v6}, Lorg/apache/http/entity/FileEntity;->setContentType(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fileEntity:Lorg/apache/http/entity/FileEntity;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 185
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final readFromResource(Landroid/content/Context;I)[B
    .locals 9
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 192
    const/4 v4, 0x0

    check-cast v4, [B

    .line 193
    .local v4, content:[B
    const/4 v6, 0x0

    .line 194
    .local v6, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 196
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 197
    const/16 v7, 0x400

    new-array v2, v7, [B

    .line 199
    .local v2, buffer:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 200
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, c:I
    const/4 v7, -0x1

    if-gt v3, v7, :cond_2

    .line 203
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 207
    if-eqz v6, :cond_0

    .line 209
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 213
    :cond_0
    :goto_1
    if-eqz v1, :cond_6

    .line 215
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    .line 220
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buffer:[B
    .end local v3           #c:I
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_2
    return-object v4

    .line 201
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #c:I
    :cond_2
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v1, v2, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 204
    .end local v3           #c:I
    :catch_0
    move-exception v7

    move-object v5, v7

    move-object v0, v1

    .line 205
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #buffer:[B
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .local v5, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    if-eqz v6, :cond_3

    .line 209
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 213
    :cond_3
    :goto_4
    if-eqz v0, :cond_1

    .line 215
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 216
    :catch_1
    move-exception v7

    goto :goto_2

    .line 206
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 207
    :goto_5
    if-eqz v6, :cond_4

    .line 209
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 213
    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    .line 215
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 219
    :cond_5
    :goto_7
    throw v7

    .line 216
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #c:I
    :catch_2
    move-exception v7

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 210
    .end local v2           #buffer:[B
    .end local v3           #c:I
    .restart local v5       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_4

    .end local v5           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 216
    :catch_5
    move-exception v8

    goto :goto_7

    .line 210
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #c:I
    :catch_6
    move-exception v7

    goto :goto_1

    .line 206
    .end local v3           #c:I
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 204
    .end local v2           #buffer:[B
    :catch_7
    move-exception v7

    move-object v5, v7

    goto :goto_3

    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v3       #c:I
    :cond_6
    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method public static setAlarm(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 7
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 242
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 243
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {p1, v1, p0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 256
    .local v6, sender:Landroid/app/PendingIntent;
    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 257
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "msg"
    .parameter "intent"

    .prologue
    .line 233
    .line 234
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 233
    check-cast v1, Landroid/app/NotificationManager;

    .line 235
    .local v1, notificationManager:Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f020007

    const-string v3, "msg"

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 235
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 237
    .local v0, notification:Landroid/app/Notification;
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 238
    sget v2, Lcom/jiaonisoft/horoscope/Util;->nid:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/jiaonisoft/horoscope/Util;->nid:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 239
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 224
    sget-object v0, Lcom/jiaonisoft/horoscope/Util;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/jiaonisoft/horoscope/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 227
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/jiaonisoft/horoscope/Util;->toast:Landroid/widget/Toast;

    .line 228
    sget-object v0, Lcom/jiaonisoft/horoscope/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    return-void
.end method
