.class public final Lcom/thinkyeah/common/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/thinkyeah/common/c;


# instance fields
.field private b:Lcom/thinkyeah/common/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/c;

    const-string v1, "Feedback"

    invoke-direct {v0, v1}, Lcom/thinkyeah/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thinkyeah/common/d;->a:Lcom/thinkyeah/common/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/thinkyeah/common/e;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    return-void
.end method

.method public final a()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "productName"

    iget-object v3, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    iget-object v3, v3, Lcom/thinkyeah/common/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "productVersion"

    iget-object v3, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    iget-object v3, v3, Lcom/thinkyeah/common/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "advice"

    iget-object v3, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    iget-object v3, v3, Lcom/thinkyeah/common/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userName"

    iget-object v3, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    iget-object v3, v3, Lcom/thinkyeah/common/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userMail"

    iget-object v3, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    iget-object v3, v3, Lcom/thinkyeah/common/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "currentLanguage"

    iget-object v3, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    iget-object v3, v3, Lcom/thinkyeah/common/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "model"

    iget-object v3, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    iget-object v3, v3, Lcom/thinkyeah/common/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "versionRelease"

    iget-object v3, p0, Lcom/thinkyeah/common/d;->b:Lcom/thinkyeah/common/e;

    iget-object v3, v3, Lcom/thinkyeah/common/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://www.thinkyeah.com/feedback/index.php"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "Status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/thinkyeah/common/d;->a:Lcom/thinkyeah/common/c;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/thinkyeah/common/d;->a:Lcom/thinkyeah/common/c;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v2, Lcom/thinkyeah/common/d;->a:Lcom/thinkyeah/common/c;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    sget-object v2, Lcom/thinkyeah/common/d;->a:Lcom/thinkyeah/common/c;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    sget-object v2, Lcom/thinkyeah/common/d;->a:Lcom/thinkyeah/common/c;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0
.end method
