.class Lng;
.super Lec;


# instance fields
.field final synthetic 癤욱븳援:Lnb;

.field private final 궗:I


# direct methods
.method constructor <init>(Lnb;I)V
    .locals 0

    iput-object p1, p0, Lng;->癤욱븳援:Lnb;

    invoke-direct {p0}, Lec;-><init>()V

    iput p2, p0, Lng;->궗:I

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lng;->癤욱븳援([Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lng;->癤욱븳援(Ljava/util/List;)V

    return-void
.end method

.method protected varargs 癤욱븳援([Landroid/net/Uri;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    invoke-direct {v3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    array-length v4, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    aget-object v5, p1, v2

    invoke-virtual {p0}, Lng;->isCancelled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :try_start_4
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v6, "http"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "https"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v5}, Lem;->癤욱븳援(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-static {}, Lnb;->꾩떎()Ljava/lang/String;

    move-result-object v1

    const-string v5, "no status."

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_5

    invoke-static {}, Lnb;->꾩떎()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "request failed. status: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lnb;->꾩떎()Ljava/lang/String;

    move-result-object v1

    const-string v5, "no response entity."

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_4
    throw v0

    :cond_6
    :try_start_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    cmp-long v8, v6, v8

    if-lez v8, :cond_7

    invoke-static {}, Lnb;->꾩떎()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Remote subtitle too large: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-interface {v1, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v6, Lms;->ㅼ쬆:Ljava/lang/String;

    if-nez v6, :cond_8

    const/16 v6, 0x11

    invoke-static {v1, v6}, Lcom/mxtech/nio/Charset;->autoDecode([BI)Ljava/lang/String;

    move-result-object v1

    :goto_5
    new-instance v6, Lnd;

    invoke-direct {v6, v5, v1}, Lnd;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v6, Lcom/mxtech/nio/Charset;

    sget-object v7, Lms;->ㅼ쬆:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/mxtech/nio/Charset;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/mxtech/nio/Charset;->癤욱븳援([BI)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v1

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto/16 :goto_1
.end method

.method protected 癤욱븳援(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lng;->癤욱븳援:Lnb;

    invoke-static {v0}, Lnb;->弱밧(Lnb;)Lng;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lng;->癤욱븳援:Lnb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnb;->癤욱븳援(Lnb;Lng;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lng;->癤욱븳援:Lnb;

    invoke-static {v0}, Lnb;->쇰뒗(Lnb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lng;->癤욱븳援:Lnb;

    invoke-static {v0}, Lnb;->ㅼ꽑嫄(Lnb;)Lnc;

    move-result-object v0

    invoke-interface {v0, v1}, Lnc;->癤욱븳援(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    iget-object v3, v0, Lnd;->궗:Ljava/lang/String;

    iget-object v0, v0, Lnd;->癤욱븳援:Landroid/net/Uri;

    iget v4, p0, Lng;->궗:I

    iget-object v5, p0, Lng;->癤욱븳援:Lnb;

    invoke-static {v3, v0, v4, v5}, Lhs;->癤욱븳援(Ljava/lang/String;Landroid/net/Uri;ILhi;)[Lhg;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method
