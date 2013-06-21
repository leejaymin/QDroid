.class final Lcom/scoreloop/client/android/core/server/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/server/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/server/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/scoreloop/client/android/core/server/e;

.field private c:Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;

.field private d:Ljava/lang/String;

.field private e:Ljava/net/URI;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/net/URL;[B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/scoreloop/client/android/core/server/a;->a:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    iput-object v1, p0, Lcom/scoreloop/client/android/core/server/a;->c:Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;

    .line 125
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/a;->e:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    if-eqz p3, :cond_0

    .line 131
    new-instance v0, Lcom/scoreloop/client/android/core/server/f;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/a;->e:Ljava/net/URI;

    invoke-direct {v0, p1, v1, p3}, Lcom/scoreloop/client/android/core/server/f;-><init>(Landroid/content/Context;Ljava/net/URI;[B)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/a;->b:Lcom/scoreloop/client/android/core/server/e;

    .line 135
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/server/e;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/a;->e:Ljava/net/URI;

    invoke-direct {v0, p1, v1}, Lcom/scoreloop/client/android/core/server/e;-><init>(Landroid/content/Context;Ljava/net/URI;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/a;->b:Lcom/scoreloop/client/android/core/server/e;

    goto :goto_0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/server/a;)Lcom/scoreloop/client/android/core/server/e;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/a;->b:Lcom/scoreloop/client/android/core/server/e;

    return-object v0
.end method

.method private a(Lcom/scoreloop/client/android/core/server/a$a;Lorg/json/JSONObject;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scoreloop/client/android/core/server/b;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 151
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 152
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    invoke-static {p1}, Lcom/scoreloop/client/android/core/server/a$a;->a(Lcom/scoreloop/client/android/core/server/a$a;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 157
    iget-object v3, p0, Lcom/scoreloop/client/android/core/server/a;->b:Lcom/scoreloop/client/android/core/server/e;

    invoke-virtual {v3, v2, v1}, Lcom/scoreloop/client/android/core/server/e;->a(Lorg/apache/http/client/methods/HttpPost;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 168
    new-instance v5, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    move v2, v0

    move v1, v0

    .line 169
    :goto_0
    if-ge v2, v4, :cond_4

    .line 174
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 175
    const-string v0, "channel"

    sget-object v7, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v8, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v5, v6, v0, v7, v8}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v7

    .line 176
    const-string v0, "data"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 177
    const-string v0, "id"

    sget-object v9, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v10, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v5, v6, v0, v9, v10}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v9

    .line 179
    const-string v0, "ext"

    sget-object v10, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v5, v6, v0, v10}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 181
    const-string v10, "status"

    sget-object v11, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v5, v0, v10, v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 182
    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    :cond_0
    const-string v10, "token"

    sget-object v11, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v5, v0, v10, v11}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/a;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    .line 193
    const-string v1, "/meta/handshake"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    :try_start_1
    const-string v1, "clientId"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/core/server/a;->a:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 169
    :cond_2
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    new-instance v0, Lcom/scoreloop/client/android/core/server/d;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/server/d;-><init>()V

    throw v0

    .line 194
    :catch_1
    move-exception v0

    new-instance v1, Lcom/scoreloop/client/android/core/server/d;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/server/d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 195
    :cond_3
    const-string v1, "/meta/connect"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    const-string v1, "/meta/disconnect"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/a;->c:Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/a;->c:Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;

    invoke-interface {v1, v9, v8, v0}, Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;->a(Ljava/lang/Integer;Ljava/lang/Object;I)V

    goto :goto_1

    .line 203
    :cond_4
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/a;->b:Lcom/scoreloop/client/android/core/server/e;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/e;->a(Landroid/content/Context;)V

    .line 332
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/a;->c:Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;

    .line 139
    return-void
.end method

.method final a(Lcom/scoreloop/client/android/core/server/a$a;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scoreloop/client/android/core/server/b;
        }
    .end annotation

    .prologue
    .line 273
    iget v0, p1, Lcom/scoreloop/client/android/core/server/a$a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/scoreloop/client/android/core/server/a$a;->b:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/scoreloop/client/android/core/server/a$a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/scoreloop/client/android/core/server/a$a;->c:Lorg/json/JSONObject;

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request\'s channel can\'t be null !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v4, p0, Lcom/scoreloop/client/android/core/server/a;->a:Ljava/lang/String;

    if-nez v4, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "channel"

    const-string v6, "/meta/handshake"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "version"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string v6, "request-response"

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v6, "supportedConnectionTypes"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "version"

    const-string v8, "3"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "api"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ext"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/scoreloop/client/android/core/server/a;->c:Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;

    invoke-interface {v5, v4}, Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/scoreloop/client/android/core/server/a;->a(Lcom/scoreloop/client/android/core/server/a$a;Lorg/json/JSONObject;)V

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v5, "clientId"

    iget-object v6, p0, Lcom/scoreloop/client/android/core/server/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "channel"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "id"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v1, "token"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/server/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "ext"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {p0, p1, v4}, Lcom/scoreloop/client/android/core/server/a;->a(Lcom/scoreloop/client/android/core/server/a$a;Lorg/json/JSONObject;)V

    .line 274
    return-void

    .line 273
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/scoreloop/client/android/core/server/b;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/server/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/a;->b:Lcom/scoreloop/client/android/core/server/e;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/e;->a(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/a;->b:Lcom/scoreloop/client/android/core/server/e;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/e;->b(Ljava/lang/String;)V

    .line 346
    return-void
.end method
