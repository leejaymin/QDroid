.class public final Lcom/tequnique/camerax/a/d;
.super Lcom/tequnique/camerax/a/a;


# static fields
.field private static synthetic r:[I


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tequnique/camerax/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tequnique/camerax/a/a;-><init>(Lcom/tequnique/camerax/cj;)V

    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/tequnique/camerax/a/d;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/tequnique/camerax/a/d;->n:Ljava/lang/String;

    iput-object p4, p0, Lcom/tequnique/camerax/a/d;->o:Ljava/lang/String;

    return-void
.end method

.method private h()Z
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://graph.facebook.com/me/albums?access_token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tequnique/camerax/a/d;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&limit=100&fields=id,name,type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tequnique/camerax/a/a;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/tequnique/camerax/a/d;->b:Ljava/util/List;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/tequnique/camerax/a/d;->c:Ljava/util/List;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tequnique/camerax/a/j;

    new-instance v2, Lcom/tequnique/camerax/a/j;

    const-string v3, "access_token"

    iget-object v4, p0, Lcom/tequnique/camerax/a/d;->m:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v6

    const/4 v2, 0x1

    new-instance v3, Lcom/tequnique/camerax/a/j;

    const-string v4, "message"

    iget-object v5, p0, Lcom/tequnique/camerax/a/d;->l:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/tequnique/camerax/a/j;

    const-string v4, "name"

    iget-object v5, p0, Lcom/tequnique/camerax/a/d;->l:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2

    const-string v2, "https://graph.facebook.com/me/albums"

    invoke-static {v2, v0, v1, v6}, Lcom/tequnique/camerax/a/d;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;[Lcom/tequnique/camerax/a/j;Z)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private j()Z
    .locals 15

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v14, -0x1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    invoke-virtual {v0}, Lcom/tequnique/camerax/cj;->a()V

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "https://graph.facebook.com/me/photos"

    :goto_0
    iget-object v5, p0, Lcom/tequnique/camerax/a/d;->k:Ljava/lang/String;

    invoke-static {v5}, Lcom/tequnique/camerax/a/c;->b(Ljava/lang/String;)J

    move-result-wide v5

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    const-string v8, "access_token"

    iget-object v9, p0, Lcom/tequnique/camerax/a/d;->m:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "message"

    iget-object v9, p0, Lcom/tequnique/camerax/a/d;->i:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "----------V2ymHFg03ehbqgZCaKO6jy"

    const-string v9, "source"

    iget-object v10, p0, Lcom/tequnique/camerax/a/d;->k:Ljava/lang/String;

    invoke-static {v10}, Lcom/tequnique/camerax/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/tequnique/camerax/a/d;->k:Ljava/lang/String;

    invoke-static {v11}, Lcom/tequnique/camerax/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v7, v9, v10, v11}, Lcom/tequnique/camerax/a/d;->a(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\r\n--"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v9, v5

    long-to-int v11, v9

    invoke-virtual {v0, v11}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v11, "User-Agent"

    const-string v12, "Profile/MIDP-1.0 Confirguration/CLDC-1.0"

    invoke-virtual {v0, v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Content-Type"

    const-string v12, "multipart/form-data; boundary=----------V2ymHFg03ehbqgZCaKO6jy"

    invoke-virtual {v0, v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Content-Length"

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v11, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    iget-object v10, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12, v5, v6}, Lcom/tequnique/camerax/cj;->a(JJ)V

    const/16 v10, 0x4e20

    new-array v10, v10, [B

    new-instance v11, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcom/tequnique/camerax/a/d;->k:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/io/OutputStream;->write([B)V

    :goto_1
    invoke-virtual {v11, v10}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v14, :cond_3

    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/tequnique/camerax/a/d;->g:Z

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ne v5, v14, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_3
    return v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "https://graph.facebook.com/"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tequnique/camerax/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/photos"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v9, v10, v12, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v12, v7

    add-long/2addr v3, v12

    iget-object v7, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/tequnique/camerax/cj;->a(JJ)V

    iget-boolean v7, p0, Lcom/tequnique/camerax/a/d;->g:Z

    if-nez v7, :cond_1

    goto :goto_1

    :cond_4
    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static synthetic k()[I
    .locals 3

    sget-object v0, Lcom/tequnique/camerax/a/d;->r:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tequnique/camerax/a/b;->values()[Lcom/tequnique/camerax/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tequnique/camerax/a/b;->e:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tequnique/camerax/a/b;->b:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tequnique/camerax/a/b;->a:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tequnique/camerax/a/b;->d:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/tequnique/camerax/a/b;->c:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/tequnique/camerax/a/b;->i:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/tequnique/camerax/a/b;->h:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/tequnique/camerax/a/b;->f:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/tequnique/camerax/a/b;->g:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v1}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/tequnique/camerax/a/d;->r:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tequnique/camerax/a/d;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/a/d;->h:Z

    invoke-static {}, Lcom/tequnique/camerax/a/d;->k()[I

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/d;->a:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v3}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-boolean v0, p0, Lcom/tequnique/camerax/a/d;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lcom/tequnique/camerax/a/d;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/a/d;->h:Z

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void

    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://graph.facebook.com/me?access_token="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tequnique/camerax/a/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/tequnique/camerax/a/a;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tequnique/camerax/a/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://www.facebook.com/dialog/oauth?client_id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tequnique/camerax/a/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&redirect_uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/d;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/tequnique/camerax/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&scope=create_event,offline_access,publish_stream,read_stream,user_about_me,user_photos&state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    invoke-virtual {v3, v0}, Lcom/tequnique/camerax/cj;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/cj;->a(Z)V

    goto/16 :goto_1

    :cond_3
    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/cj;->a(Z)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tequnique/camerax/a/d;->o:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->m:Ljava/lang/String;

    :cond_4
    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    sget-object v0, Lcom/tequnique/camerax/a/b;->b:Lcom/tequnique/camerax/a/b;

    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->a:Lcom/tequnique/camerax/a/b;

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/cj;->a(Z)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    invoke-direct {p0}, Lcom/tequnique/camerax/a/d;->h()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/cj;->b(Z)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/tequnique/camerax/a/d;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/a/d;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->j:Ljava/lang/String;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/tequnique/camerax/a/d;->j:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/tequnique/camerax/cj;->a(ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/tequnique/camerax/a/d;->d:Lcom/tequnique/camerax/cj;

    invoke-direct {p0}, Lcom/tequnique/camerax/a/d;->j()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/cj;->c(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
