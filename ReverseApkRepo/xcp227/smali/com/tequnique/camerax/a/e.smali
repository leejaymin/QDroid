.class public final Lcom/tequnique/camerax/a/e;
.super Lcom/tequnique/camerax/a/a;


# static fields
.field private static synthetic u:[I


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tequnique/camerax/cj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tequnique/camerax/a/a;-><init>(Lcom/tequnique/camerax/cj;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tequnique/camerax/a/e;->t:Ljava/lang/String;

    iput-object p2, p0, Lcom/tequnique/camerax/a/e;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/tequnique/camerax/a/e;->q:Ljava/lang/String;

    iput-object p4, p0, Lcom/tequnique/camerax/a/e;->m:Ljava/lang/String;

    iput-object p5, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    iput-object p6, p0, Lcom/tequnique/camerax/a/e;->o:Ljava/lang/String;

    return-void
.end method

.method private i()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/tequnique/camerax/a/h;

    iget-object v3, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/tequnique/camerax/a/h;-><init>(Ljava/lang/String;)V

    const-string v3, "POST"

    iput-object v3, v0, Lcom/tequnique/camerax/a/h;->a:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Lcom/tequnique/camerax/a/h;->b:Ljava/lang/String;

    const-string v3, "http://api.flickr.com/services/rest"

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/a/h;->c(Ljava/lang/String;)V

    const-string v3, "format"

    const-string v4, "json"

    invoke-virtual {v0, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "method"

    const-string v4, "flickr.test.login"

    invoke-virtual {v0, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "nojsoncallback"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_consumer_key"

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_nonce"

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;)V

    const-string v3, "oauth_signature_method"

    const-string v4, "HMAC-SHA1"

    invoke-virtual {v0, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_timestamp"

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/a/h;->b(Ljava/lang/String;)V

    const-string v3, "oauth_token"

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->p:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_version"

    const-string v4, "1.0"

    invoke-virtual {v0, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/a/h;->d(Ljava/lang/String;)V

    const-string v3, "http://api.flickr.com/services/rest?nojsoncallback=1&format=json&method=flickr.test.login"

    new-array v4, v2, [Lcom/tequnique/camerax/a/j;

    new-instance v5, Lcom/tequnique/camerax/a/j;

    const-string v6, "Authorization"

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v1

    const/4 v0, 0x0

    invoke-static {v3, v0, v4}, Lcom/tequnique/camerax/a/e;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;[Lcom/tequnique/camerax/a/j;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "user"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/a/e;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private j()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Lcom/tequnique/camerax/a/h;

    iget-object v3, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/tequnique/camerax/a/h;-><init>(Ljava/lang/String;)V

    const-string v3, "POST"

    iput-object v3, v2, Lcom/tequnique/camerax/a/h;->a:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v2, Lcom/tequnique/camerax/a/h;->b:Ljava/lang/String;

    const-string v3, "http://api.flickr.com/services/rest"

    invoke-virtual {v2, v3}, Lcom/tequnique/camerax/a/h;->c(Ljava/lang/String;)V

    const-string v3, "format"

    const-string v4, "json"

    invoke-virtual {v2, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "method"

    const-string v4, "flickr.photosets.getList"

    invoke-virtual {v2, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "nojsoncallback"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_consumer_key"

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->m:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_nonce"

    invoke-virtual {v2, v3}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;)V

    const-string v3, "oauth_signature_method"

    const-string v4, "HMAC-SHA1"

    invoke-virtual {v2, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_timestamp"

    invoke-virtual {v2, v3}, Lcom/tequnique/camerax/a/h;->b(Ljava/lang/String;)V

    const-string v3, "oauth_token"

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "oauth_version"

    const-string v4, "1.0"

    invoke-virtual {v2, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "user_id"

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->t:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tequnique/camerax/a/h;->d(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://api.flickr.com/services/rest?nojsoncallback=1&format=json&method=flickr.photosets.getList&user_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Lcom/tequnique/camerax/a/j;

    new-instance v5, Lcom/tequnique/camerax/a/j;

    const-string v6, "Authorization"

    invoke-virtual {v2}, Lcom/tequnique/camerax/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v0

    const/4 v2, 0x0

    invoke-static {v3, v2, v4}, Lcom/tequnique/camerax/a/e;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;[Lcom/tequnique/camerax/a/j;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "photosets"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "photoset"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v2, v0, :cond_1

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->b:Ljava/util/List;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->c:Ljava/util/List;

    const-string v0, "_content"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private k()Z
    .locals 15

    const-wide/16 v3, 0x0

    const/4 v14, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    invoke-virtual {v0}, Lcom/tequnique/camerax/cj;->a()V

    new-instance v5, Lcom/tequnique/camerax/a/h;

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/tequnique/camerax/a/h;-><init>(Ljava/lang/String;)V

    const-string v0, "POST"

    iput-object v0, v5, Lcom/tequnique/camerax/a/h;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v5, Lcom/tequnique/camerax/a/h;->b:Ljava/lang/String;

    const-string v0, "http://api.flickr.com/services/upload/"

    invoke-virtual {v5, v0}, Lcom/tequnique/camerax/a/h;->c(Ljava/lang/String;)V

    const-string v0, "description"

    iget-object v6, p0, Lcom/tequnique/camerax/a/e;->i:Ljava/lang/String;

    invoke-static {v6}, Lcom/tequnique/camerax/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "format"

    const-string v6, "json"

    invoke-virtual {v5, v0, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_public"

    const-string v6, "1"

    invoke-virtual {v5, v0, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nojsoncallback"

    const-string v6, "1"

    invoke-virtual {v5, v0, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_consumer_key"

    iget-object v6, p0, Lcom/tequnique/camerax/a/e;->m:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_nonce"

    invoke-virtual {v5, v0}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;)V

    const-string v0, "oauth_signature_method"

    const-string v6, "HMAC-SHA1"

    invoke-virtual {v5, v0, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_timestamp"

    invoke-virtual {v5, v0}, Lcom/tequnique/camerax/a/h;->b(Ljava/lang/String;)V

    const-string v0, "oauth_token"

    iget-object v6, p0, Lcom/tequnique/camerax/a/e;->p:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_version"

    const-string v6, "1.0"

    invoke-virtual {v5, v0, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    iget-object v6, p0, Lcom/tequnique/camerax/a/e;->i:Ljava/lang/String;

    invoke-static {v6}, Lcom/tequnique/camerax/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/tequnique/camerax/a/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tequnique/camerax/a/h;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v6, "description"

    iget-object v7, p0, Lcom/tequnique/camerax/a/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "title"

    iget-object v7, p0, Lcom/tequnique/camerax/a/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "is_public"

    const-string v7, "1"

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "format"

    const-string v7, "json"

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "nojsoncallback"

    const-string v7, "1"

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "----------V2ymHFg03ehbqgZCaKO6jy"

    const-string v7, "photo"

    iget-object v8, p0, Lcom/tequnique/camerax/a/e;->k:Ljava/lang/String;

    invoke-static {v8}, Lcom/tequnique/camerax/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/tequnique/camerax/a/e;->k:Ljava/lang/String;

    invoke-static {v9}, Lcom/tequnique/camerax/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v0, v7, v8, v9}, Lcom/tequnique/camerax/a/e;->a(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "\r\n--"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "--\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "http://api.flickr.com/services/upload/"

    :try_start_0
    iget-object v8, p0, Lcom/tequnique/camerax/a/e;->k:Ljava/lang/String;

    invoke-static {v8}, Lcom/tequnique/camerax/a/c;->b(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v10, v8

    long-to-int v12, v10

    invoke-virtual {v0, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v12, "User-Agent"

    const-string v13, "Profile/MIDP-1.0 Confirguration/CLDC-1.0"

    invoke-virtual {v0, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Content-Type"

    const-string v13, "multipart/form-data; boundary=----------V2ymHFg03ehbqgZCaKO6jy"

    invoke-virtual {v0, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Content-Length"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v12, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Authorization"

    invoke-virtual {v5}, Lcom/tequnique/camerax/a/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v10, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12, v8, v9}, Lcom/tequnique/camerax/cj;->a(JJ)V

    const/16 v10, 0x4e20

    new-array v10, v10, [B

    new-instance v11, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcom/tequnique/camerax/a/e;->k:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    invoke-virtual {v11, v10}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ne v7, v14, :cond_2

    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/tequnique/camerax/a/e;->g:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ne v6, v14, :cond_3

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "<photoid>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    const-string v4, "</photoid>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/tequnique/camerax/a/h;

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/tequnique/camerax/a/h;-><init>(Ljava/lang/String;)V

    const-string v4, "POST"

    iput-object v4, v3, Lcom/tequnique/camerax/a/h;->a:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v3, Lcom/tequnique/camerax/a/h;->b:Ljava/lang/String;

    const-string v4, "http://api.flickr.com/services/rest"

    invoke-virtual {v3, v4}, Lcom/tequnique/camerax/a/h;->c(Ljava/lang/String;)V

    const-string v4, "format"

    const-string v5, "json"

    invoke-virtual {v3, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "method"

    const-string v5, "flickr.photosets.addPhoto"

    invoke-virtual {v3, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "nojsoncallback"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth_consumer_key"

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth_nonce"

    invoke-virtual {v3, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;)V

    const-string v4, "oauth_signature_method"

    const-string v5, "HMAC-SHA1"

    invoke-virtual {v3, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth_timestamp"

    invoke-virtual {v3, v4}, Lcom/tequnique/camerax/a/h;->b(Ljava/lang/String;)V

    const-string v4, "oauth_token"

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->p:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth_version"

    const-string v5, "1.0"

    invoke-virtual {v3, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "photo_id"

    invoke-virtual {v3, v4, v0}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "photoset_id"

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tequnique/camerax/a/h;->d(Ljava/lang/String;)V

    const-string v4, "http://api.flickr.com/services/rest?nojsoncallback=1&format=json&method=flickr.photosets.addPhoto"

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/tequnique/camerax/a/j;

    const/4 v6, 0x0

    new-instance v7, Lcom/tequnique/camerax/a/j;

    const-string v8, "Authorization"

    invoke-virtual {v3}, Lcom/tequnique/camerax/a/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v8, v3}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tequnique/camerax/a/j;

    const/4 v6, 0x0

    new-instance v7, Lcom/tequnique/camerax/a/j;

    const-string v8, "photo_id"

    invoke-direct {v7, v8, v0}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v6

    const/4 v0, 0x1

    new-instance v6, Lcom/tequnique/camerax/a/j;

    const-string v7, "photoset_id"

    iget-object v8, p0, Lcom/tequnique/camerax/a/e;->j:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v0

    invoke-static {v4, v3, v5}, Lcom/tequnique/camerax/a/e;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;[Lcom/tequnique/camerax/a/j;)Ljava/lang/String;

    :cond_1
    move v0, v1

    :goto_2
    return v0

    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v5, v10, v12, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v12, v7

    add-long/2addr v3, v12

    iget-object v7, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    invoke-virtual {v7, v3, v4, v8, v9}, Lcom/tequnique/camerax/cj;->a(JJ)V

    iget-boolean v7, p0, Lcom/tequnique/camerax/a/e;->g:Z

    if-nez v7, :cond_0

    goto/16 :goto_0

    :cond_3
    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private static synthetic l()[I
    .locals 3

    sget-object v0, Lcom/tequnique/camerax/a/e;->u:[I

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
    sput-object v0, Lcom/tequnique/camerax/a/e;->u:[I

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

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final run()V
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tequnique/camerax/a/e;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/a/e;->h:Z

    invoke-static {}, Lcom/tequnique/camerax/a/e;->l()[I

    move-result-object v0

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->a:Lcom/tequnique/camerax/a/b;

    invoke-virtual {v4}, Lcom/tequnique/camerax/a/b;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-boolean v0, p0, Lcom/tequnique/camerax/a/e;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Lcom/tequnique/camerax/a/e;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/a/e;->h:Z

    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

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
    invoke-direct {p0}, Lcom/tequnique/camerax/a/e;->i()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/tequnique/camerax/a/h;

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/tequnique/camerax/a/h;-><init>(Ljava/lang/String;)V

    const-string v4, "POST"

    iput-object v4, v0, Lcom/tequnique/camerax/a/h;->a:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v0, Lcom/tequnique/camerax/a/h;->b:Ljava/lang/String;

    const-string v4, "http://www.flickr.com/services/oauth/request_token"

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/a/h;->c(Ljava/lang/String;)V

    const-string v4, "oauth_callback"

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth_consumer_key"

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth_nonce"

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;)V

    const-string v4, "oauth_signature_method"

    const-string v5, "HMAC-SHA1"

    invoke-virtual {v0, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth_timestamp"

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/a/h;->b(Ljava/lang/String;)V

    const-string v4, "oauth_version"

    const-string v5, "1.0"

    invoke-virtual {v0, v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/a/h;->d(Ljava/lang/String;)V

    const-string v4, "http://www.flickr.com/services/oauth/request_token"

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/tequnique/camerax/a/j;

    const/4 v6, 0x0

    new-instance v7, Lcom/tequnique/camerax/a/j;

    const-string v8, "Authorization"

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v0, 0x0

    invoke-static {v4, v0, v5}, Lcom/tequnique/camerax/a/e;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;[Lcom/tequnique/camerax/a/j;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    invoke-virtual {v4, v0}, Lcom/tequnique/camerax/cj;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x2a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tequnique/camerax/a/e;->r:Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/a/e;->s:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "http://www.flickr.com/services/oauth/authorize?perms=write&oauth_token="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->r:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/cj;->a(Z)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/cj;->a(Z)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->o:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?sid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/tequnique/camerax/a/e;->r:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    if-eqz v0, :cond_7

    sget-object v0, Lcom/tequnique/camerax/a/b;->b:Lcom/tequnique/camerax/a/b;

    iput-object v0, p0, Lcom/tequnique/camerax/a/e;->a:Lcom/tequnique/camerax/a/b;

    goto/16 :goto_0

    :cond_5
    new-instance v4, Lcom/tequnique/camerax/a/h;

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/tequnique/camerax/a/h;-><init>(Ljava/lang/String;)V

    const-string v5, "POST"

    iput-object v5, v4, Lcom/tequnique/camerax/a/h;->a:Ljava/lang/String;

    const-string v5, ""

    iput-object v5, v4, Lcom/tequnique/camerax/a/h;->b:Ljava/lang/String;

    const-string v5, "http://www.flickr.com/services/oauth/access_token"

    invoke-virtual {v4, v5}, Lcom/tequnique/camerax/a/h;->c(Ljava/lang/String;)V

    const-string v5, "oauth_consumer_key"

    iget-object v6, p0, Lcom/tequnique/camerax/a/e;->m:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "oauth_nonce"

    invoke-virtual {v4, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;)V

    const-string v5, "oauth_signature_method"

    const-string v6, "HMAC-SHA1"

    invoke-virtual {v4, v5, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "oauth_timestamp"

    invoke-virtual {v4, v5}, Lcom/tequnique/camerax/a/h;->b(Ljava/lang/String;)V

    const-string v5, "oauth_token"

    iget-object v6, p0, Lcom/tequnique/camerax/a/e;->r:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "oauth_verifier"

    invoke-virtual {v4, v5, v0}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth_version"

    const-string v5, "1.0"

    invoke-virtual {v4, v0, v5}, Lcom/tequnique/camerax/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->n:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tequnique/camerax/a/e;->s:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tequnique/camerax/a/h;->d(Ljava/lang/String;)V

    const-string v0, "http://www.flickr.com/services/oauth/access_token"

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/tequnique/camerax/a/j;

    const/4 v6, 0x0

    new-instance v7, Lcom/tequnique/camerax/a/j;

    const-string v8, "Authorization"

    invoke-virtual {v4}, Lcom/tequnique/camerax/a/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Lcom/tequnique/camerax/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/tequnique/camerax/a/e;->a(Ljava/lang/String;[Lcom/tequnique/camerax/a/j;[Lcom/tequnique/camerax/a/j;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    const-string v4, "&oauth_token="

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    const-string v5, "&username="

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "&oauth_token_secret="

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tequnique/camerax/a/e;->p:Ljava/lang/String;

    const-string v4, "&oauth_token_secret="

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    const-string v5, "&user_nsid="

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tequnique/camerax/a/e;->q:Ljava/lang/String;

    const-string v4, "&user_nsid="

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/a/e;->t:Ljava/lang/String;

    move v0, v2

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/cj;->a(Z)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    invoke-direct {p0}, Lcom/tequnique/camerax/a/e;->j()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/cj;->b(Z)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/tequnique/camerax/cj;->a(ZLjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/tequnique/camerax/a/e;->d:Lcom/tequnique/camerax/cj;

    invoke-direct {p0}, Lcom/tequnique/camerax/a/e;->k()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/cj;->c(Z)V
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
