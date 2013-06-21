.class Lmz;
.super Lec;


# instance fields
.field final synthetic 癤욱븳援:Lmv;


# direct methods
.method private constructor <init>(Lmv;)V
    .locals 0

    iput-object p1, p0, Lmz;->癤욱븳援:Lmv;

    invoke-direct {p0}, Lec;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmv;Lmz;)V
    .locals 0

    invoke-direct {p0, p1}, Lmz;-><init>(Lmv;)V

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lmz;->癤욱븳援([Landroid/net/Uri;)Lmy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lmy;

    invoke-virtual {p0, p1}, Lmz;->癤욱븳援(Lmy;)V

    return-void
.end method

.method protected varargs 癤욱븳援([Landroid/net/Uri;)Lmy;
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-object v3, p1, v1

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    invoke-static {v4}, Lem;->癤욱븳援(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v1, Lmv;->癤욱븳援:Ljava/lang/String;

    const-string v2, "no status."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_3

    sget-object v1, Lmv;->癤욱븳援:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request failed. status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    if-nez v5, :cond_4

    sget-object v1, Lmv;->癤욱븳援:Ljava/lang/String;

    const-string v2, "no response entity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gez v6, :cond_6

    const-wide/16 v1, 0x1000

    :cond_5
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    long-to-int v1, v1

    invoke-direct {v6, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v5, v6}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "href\\s*=\\s*\"(.+?)\""

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v1, Lmy;

    invoke-direct {v1, v3, v4, v2}, Lmy;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    const-wide/32 v6, 0x100000

    cmp-long v6, v1, v6

    if-lez v6, :cond_5

    sget-object v3, Lmv;->癤욱븳援:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Remote directory too large: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v1

    :cond_7
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected 癤욱븳援(Lmy;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lmz;->癤욱븳援:Lmv;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmv;->癤욱븳援(Lmv;Lmz;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmz;->癤욱븳援:Lmv;

    iget-boolean v2, p1, Lmy;->癤욱븳援:Z

    invoke-static {v1, v2}, Lmv;->癤욱븳援(Lmv;Z)V

    iget-object v1, p0, Lmz;->癤욱븳援:Lmv;

    iget-object v2, p1, Lmy;->궗:[Lna;

    invoke-static {v1, v2}, Lmv;->癤욱븳援(Lmv;[Lna;)V

    iget-object v1, p0, Lmz;->癤욱븳援:Lmv;

    iget-object v2, p1, Lmy;->먯꽌:[Lna;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/Uri;

    invoke-static {v1, v2}, Lmv;->癤욱븳援(Lmv;[Landroid/net/Uri;)V

    iget-object v3, p1, Lmy;->먯꽌:[Lna;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lmz;->癤욱븳援:Lmv;

    invoke-static {v0}, Lmv;->궗(Lmv;)Lmx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmz;->癤욱븳援:Lmv;

    invoke-static {v0}, Lmv;->궗(Lmv;)Lmx;

    move-result-object v0

    iget-object v1, p0, Lmz;->癤욱븳援:Lmv;

    invoke-interface {v0, v1}, Lmx;->癤욱븳援(Lmv;)V

    goto :goto_0

    :cond_2
    aget-object v5, v3, v0

    iget-object v2, p0, Lmz;->癤욱븳援:Lmv;

    invoke-static {v2}, Lmv;->癤욱븳援(Lmv;)[Landroid/net/Uri;

    move-result-object v6

    add-int/lit8 v2, v1, 0x1

    iget-object v5, v5, Lna;->癤욱븳援:Landroid/net/Uri;

    aput-object v5, v6, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1
.end method
