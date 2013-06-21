.class final Lcom/scoreloop/client/android/core/socialprovider/twitter/b;
.super Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;
.source "SourceFile"


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;-><init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;Lcom/scoreloop/client/android/core/model/Session;)V

    .line 28
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->b(Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a()Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;->a(Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 122
    new-instance v0, Lcom/scoreloop/client/android/core/util/OAuthBuilder;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;-><init>()V

    .line 123
    const-string v1, "1fKnfLmiZ2hDnn3mxr1Gg"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;->a(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;->b(Ljava/lang/String;)V

    .line 126
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://twitter.com/oauth/access_token"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;->a(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const-string v1, "gPm0dGnuOkwLtZ8mr3y8AjUSdVjF1d0yXJFeQm0xExY"

    invoke-virtual {v0, v1, p2}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 132
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->b(Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method protected final a(Lorg/apache/http/HttpResponse;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 51
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a(ILjava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 60
    :try_start_0
    invoke-static {p1}, Lcom/scoreloop/client/android/core/util/HTTPUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 63
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 64
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 65
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "serious error parsing twitter response, this should not happen"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :catch_0
    move-exception v0

    const-string v0, "invalid result to token request"

    invoke-direct {p0, v1, v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a(ILjava/lang/String;)V

    .line 79
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "responseParameters must be nil"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    .line 69
    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 70
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    const-string v0, "invalid result to token request"

    invoke-direct {p0, v1, v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 83
    :cond_3
    iput-object v2, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a:Lorg/json/JSONObject;

    .line 85
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a()Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;->a(Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;)V

    goto :goto_0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/scoreloop/client/android/core/util/OAuthBuilder;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;-><init>()V

    .line 32
    const-string v1, "1fKnfLmiZ2hDnn3mxr1Gg"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;->a(Ljava/lang/String;)V

    .line 34
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://twitter.com/oauth/request_token"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;->a(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const-string v1, "gPm0dGnuOkwLtZ8mr3y8AjUSdVjF1d0yXJFeQm0xExY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/util/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 41
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a:Lorg/json/JSONObject;

    const-string v1, "oauth_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a:Lorg/json/JSONObject;

    const-string v1, "oauth_token_secret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a:Lorg/json/JSONObject;

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
