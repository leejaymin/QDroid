.class public final Lcom/tequnique/camerax/a/i;
.super Lcom/tequnique/camerax/a/a;


# static fields
.field private static synthetic t:[I


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tequnique/camerax/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tequnique/camerax/a/a;-><init>(Lcom/tequnique/camerax/cj;)V

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/tequnique/camerax/a/i;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/tequnique/camerax/a/i;->n:Ljava/lang/String;

    iput-object p5, p0, Lcom/tequnique/camerax/a/i;->o:Ljava/lang/String;

    iput-object p4, p0, Lcom/tequnique/camerax/a/i;->q:Ljava/lang/String;

    return-void
.end method

.method private h()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/tequnique/camerax/a/j;

    new-instance v3, Lcom/tequnique/camerax/a/j;

    const-string v4, "client_id"

    iget-object v5, p0, Lcom/tequnique/camerax/a/i;->n:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    new-instance v3, Lcom/tequnique/camerax/a/j;

    const-string v4, "client_secret"

    iget-object v5, p0, Lcom/tequnique/camerax/a/i;->q:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const/4 v3, 0x2

    new-instance v4, Lcom/tequnique/camerax/a/j;

    const-string v5, "refresh_token"

    iget-object v6, p0, Lcom/tequnique/camerax/a/i;->m:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/tequnique/camerax/a/j;

    const-string v5, "grant_type"

    const-string v6, "refresh_token"

    invoke-direct {v4, v5, v6}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const-string v3, "https://accounts.google.com/o/oauth2/token"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v0}, Lcom/tequnique/camerax/a/i;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;[Lcom/tequnique/camerax/a/j;Z)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "access_token"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tequnique/camerax/a/i;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private i()Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://picasaweb.google.com/data/feed/api/user/default?oauth_token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tequnique/camerax/a/i;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&fields=entry(gphoto:id,media:group(media:title))&max-results=500&alt=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tequnique/camerax/a/a;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "feed"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "entry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "gphoto$id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "$t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "media$group"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "media$title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "$t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tequnique/camerax/a/i;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/a/i;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private j()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<entry xmlns=\'http://www.w3.org/2005/Atom\'    xmlns:media=\'http://search.yahoo.com/mrss/\'    xmlns:gphoto=\'http://schemas.google.com/photos/2007\'>  <title type=\'text\'>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tequnique/camerax/a/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</title>  <summary type=\'text\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/a/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</summary>  <gphoto:access>private</gphoto:access>  <category scheme=\'http://schemas.google.com/g/2005#kind\'    term=\'http://schemas.google.com/photos/2007#album\'></category></entry>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://picasaweb.google.com/data/feed/api/user/default?oauth_token="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tequnique/camerax/a/i;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&alt=json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const-string v3, "User-Agent"

    const-string v4, "Profile/MIDP-1.0 Confirguration/CLDC-1.0"

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/atom+xml"

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc9

    if-ne v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_1

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "gphoto$id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "$t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private k()Z
    .locals 13

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v12, -0x1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->d:Lcom/tequnique/camerax/cj;

    invoke-virtual {v0}, Lcom/tequnique/camerax/cj;->a()V

    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "https://picasaweb.google.com/data/feed/api/user/default/albumid/default?oauth_token="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tequnique/camerax/a/i;->r:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v5, p0, Lcom/tequnique/camerax/a/i;->k:Ljava/lang/String;

    invoke-static {v5}, Lcom/tequnique/camerax/a/c;->b(Ljava/lang/String;)J

    move-result-wide v5

    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    long-to-int v7, v5

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v7, "User-Agent"

    const-string v8, "Profile/MIDP-1.0 Confirguration/CLDC-1.0"

    invoke-virtual {v0, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Type"

    iget-object v8, p0, Lcom/tequnique/camerax/a/i;->k:Ljava/lang/String;

    invoke-static {v8}, Lcom/tequnique/camerax/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Content-Length"

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Slug"

    iget-object v8, p0, Lcom/tequnique/camerax/a/i;->i:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/tequnique/camerax/a/i;->d:Lcom/tequnique/camerax/cj;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10, v5, v6}, Lcom/tequnique/camerax/cj;->a(JJ)V

    const/16 v8, 0x4e20

    new-array v8, v8, [B

    new-instance v9, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/tequnique/camerax/a/i;->k:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v9, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ne v10, v12, :cond_3

    :cond_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ne v5, v12, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_3
    return v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "https://picasaweb.google.com/data/feed/api/user/default/albumid/"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tequnique/camerax/a/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "?oauth_token="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tequnique/camerax/a/i;->r:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v7, v8, v11, v10}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v10, v10

    add-long/2addr v3, v10

    iget-object v10, p0, Lcom/tequnique/camerax/a/i;->d:Lcom/tequnique/camerax/cj;

    invoke-virtual {v10, v3, v4, v5, v6}, Lcom/tequnique/camerax/cj;->a(JJ)V

    iget-boolean v10, p0, Lcom/tequnique/camerax/a/i;->g:Z

    if-nez v10, :cond_1

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

.method private static synthetic l()[I
    .locals 3

    sget-object v0, Lcom/tequnique/camerax/a/i;->t:[I

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
    sput-object v0, Lcom/tequnique/camerax/a/i;->t:[I

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

    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tequnique/camerax/a/i;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/a/i;->h:Z

    invoke-static {}, Lcom/tequnique/camerax/a/i;->l()[I

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/i;->a:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v3}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-boolean v0, p0, Lcom/tequnique/camerax/a/i;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lcom/tequnique/camerax/a/i;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/a/i;->h:Z

    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->e:Ljava/util/concurrent/locks/ReentrantLock;

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
    invoke-direct {p0}, Lcom/tequnique/camerax/a/i;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tequnique/camerax/a/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://accounts.google.com/o/oauth2/auth?client_id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tequnique/camerax/a/i;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&redirect_uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/i;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/tequnique/camerax/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&scope=http://picasaweb.google.com/data/&response_type=code&state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/i;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&access_type=offline&approval_prompt=force"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/i;->d:Lcom/tequnique/camerax/cj;

    invoke-virtual {v3, v0}, Lcom/tequnique/camerax/cj;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->d:Lcom/tequnique/camerax/cj;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/cj;->a(Z)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tequnique/camerax/a/i;->o:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?sid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/a/i;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->m:Ljava/lang/String;

    :cond_3
    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    sget-object v0, Lcom/tequnique/camerax/a/b;->b:Lcom/tequnique/camerax/a/b;

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->a:Lcom/tequnique/camerax/a/b;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->d:Lcom/tequnique/camerax/cj;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/cj;->a(Z)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->d:Lcom/tequnique/camerax/cj;

    invoke-direct {p0}, Lcom/tequnique/camerax/a/i;->i()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/cj;->b(Z)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/tequnique/camerax/a/i;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/a/i;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/a/i;->d:Lcom/tequnique/camerax/cj;

    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->j:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/tequnique/camerax/a/i;->j:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/tequnique/camerax/cj;->a(ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/tequnique/camerax/a/i;->d:Lcom/tequnique/camerax/cj;

    invoke-direct {p0}, Lcom/tequnique/camerax/a/i;->k()Z

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
