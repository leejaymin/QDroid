.class public Lcom/scoreloop/client/android/core/server/Server;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/server/Server$RequestResult;,
        Lcom/scoreloop/client/android/core/server/Server$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

.field private final c:Lcom/scoreloop/client/android/core/server/Server$a;

.field private d:Lcom/scoreloop/client/android/core/server/a;

.field private final e:Lcom/scoreloop/client/android/core/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/scoreloop/client/android/core/util/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/scoreloop/client/android/core/server/Request;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/scoreloop/client/android/core/server/Server;->a:Ljava/net/URL;

    .line 145
    new-instance v0, Lcom/scoreloop/client/android/core/util/Cache;

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/util/Cache;-><init>(B)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->e:Lcom/scoreloop/client/android/core/util/Cache;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/server/Server;->f:Z

    .line 149
    new-instance v0, Lcom/scoreloop/client/android/core/server/Server$a;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/server/Server$a;-><init>(Lcom/scoreloop/client/android/core/server/Server;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->c:Lcom/scoreloop/client/android/core/server/Server$a;

    .line 155
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 162
    const-string v2, "https://api.scoreloop.com/bayeux/android/v2"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 163
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 166
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 167
    const-string v3, "https://www.scoreloop.com/android/updates"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 168
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 171
    const/16 v0, 0x10

    new-array v4, v0, [B

    move v0, v1

    .line 172
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 173
    add-int/lit8 v5, v0, 0x6

    array-length v6, v2

    rem-int/2addr v5, v6

    aget-byte v5, v2, v5

    add-int/lit8 v6, v0, 0x3

    array-length v7, v3

    rem-int/2addr v6, v7

    aget-byte v6, v3, v6

    xor-int/2addr v5, v6

    xor-int/lit8 v5, v5, 0x3e

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/server/a;

    iget-object v5, p0, Lcom/scoreloop/client/android/core/server/Server;->a:Ljava/net/URL;

    invoke-direct {v0, p1, v5, v4}, Lcom/scoreloop/client/android/core/server/a;-><init>(Landroid/content/Context;Ljava/net/URL;[B)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->d:Lcom/scoreloop/client/android/core/server/a;

    move v0, v1

    .line 179
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 180
    aget-byte v4, v2, v0

    xor-int/lit8 v4, v4, 0x1a

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->d:Lcom/scoreloop/client/android/core/server/a;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/util/Base64;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/server/a;->b(Ljava/lang/String;)V

    .line 184
    :goto_2
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 185
    aget-byte v0, v3, v1

    xor-int/lit8 v0, v0, 0x35

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->d:Lcom/scoreloop/client/android/core/server/a;

    invoke-static {v3}, Lcom/scoreloop/client/android/core/util/Base64;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/server/a;->a(Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/Server;->c:Lcom/scoreloop/client/android/core/server/Server$a;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/server/Server;->d:Lcom/scoreloop/client/android/core/server/a;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;-><init>(Lcom/scoreloop/client/android/core/util/MainThreadHandler;Lcom/scoreloop/client/android/core/server/a;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->b:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    .line 199
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->b:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->start()V

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/server/Server;)Lcom/scoreloop/client/android/core/util/Cache;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->e:Lcom/scoreloop/client/android/core/util/Cache;

    return-object v0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/server/Server;)Lcom/scoreloop/client/android/core/server/ServerWorkerThread;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->b:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    return-object v0
.end method

.method public static b(Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 1
    .parameter

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/Request;->n()V

    .line 268
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/Request;->e()Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 270
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->b:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->b()V

    .line 316
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->d:Lcom/scoreloop/client/android/core/server/a;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/a;->a(Landroid/content/Context;)V

    .line 298
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->k()Lcom/scoreloop/client/android/core/server/Request$State;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/server/Request$State;->ENQUEUED:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->k()Lcom/scoreloop/client/android/core/server/Request$State;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/server/Request$State;->EXECUTING:Lcom/scoreloop/client/android/core/server/Request$State;

    if-ne v1, v2, :cond_1

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request already enqueued or executing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request channel is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_2
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->c()Lcom/scoreloop/client/android/core/server/RequestMethod;

    move-result-object v1

    if-nez v1, :cond_3

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request method is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_3
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 227
    if-nez v1, :cond_4

    .line 228
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 229
    invoke-virtual {p1, v1}, Lcom/scoreloop/client/android/core/server/Request;->a(Lorg/json/JSONObject;)V

    .line 232
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->h()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->c()Lcom/scoreloop/client/android/core/server/RequestMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/server/RequestMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->r()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    iget-boolean v1, p0, Lcom/scoreloop/client/android/core/server/Server;->f:Z

    if-eqz v1, :cond_6

    .line 240
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->e:Lcom/scoreloop/client/android/core/util/Cache;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/util/Cache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/server/Request;

    .line 245
    :cond_5
    :goto_0
    if-eqz v0, :cond_7

    .line 246
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->j()Lcom/scoreloop/client/android/core/server/Response;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/server/Request;->a(Lcom/scoreloop/client/android/core/server/Response;)V

    .line 249
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->c:Lcom/scoreloop/client/android/core/server/Server$a;

    new-instance v1, Lcom/scoreloop/client/android/core/server/Server$1;

    invoke-direct {v1, p1}, Lcom/scoreloop/client/android/core/server/Server$1;-><init>(Lcom/scoreloop/client/android/core/server/Request;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/server/Server$a;->post(Ljava/lang/Runnable;)Z

    .line 260
    :goto_1
    return-void

    .line 235
    :catch_0
    move-exception v0

    new-instance v0, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v0

    .line 242
    :cond_6
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/Server;->e:Lcom/scoreloop/client/android/core/util/Cache;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/Cache;->b()V

    goto :goto_0

    .line 257
    :cond_7
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->o()V

    .line 258
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->b:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->b:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->b:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->b(Lorg/json/JSONObject;)V

    .line 308
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server;->b:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->b()V

    .line 275
    return-void
.end method
