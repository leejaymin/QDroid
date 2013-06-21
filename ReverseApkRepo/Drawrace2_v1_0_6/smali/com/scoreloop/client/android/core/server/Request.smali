.class public Lcom/scoreloop/client/android/core/server/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/server/Request$State;
    }
.end annotation


# static fields
.field private static a:I

.field private static synthetic l:Z


# instance fields
.field private b:Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Exception;

.field private e:Lorg/json/JSONObject;

.field private final f:I

.field private g:Lcom/scoreloop/client/android/core/server/RequestMethod;

.field private h:Lcom/scoreloop/client/android/core/server/Response;

.field private i:Lcom/scoreloop/client/android/core/server/Request$State;

.field private j:J

.field private k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    const-class v0, Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/scoreloop/client/android/core/server/Request;->l:Z

    .line 29
    sput v1, Lcom/scoreloop/client/android/core/server/Request;->a:I

    return-void

    :cond_0
    move v0, v1

    .line 11
    goto :goto_0
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Request;->b:Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;

    .line 57
    sget-object v0, Lcom/scoreloop/client/android/core/server/Request$State;->IDLE:Lcom/scoreloop/client/android/core/server/Request$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    .line 58
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->g:Lcom/scoreloop/client/android/core/server/RequestMethod;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scoreloop/client/android/core/server/Request;->j:J

    .line 62
    sget v0, Lcom/scoreloop/client/android/core/server/Request;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/scoreloop/client/android/core/server/Request;->a:I

    iput v0, p0, Lcom/scoreloop/client/android/core/server/Request;->f:I

    .line 63
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/scoreloop/client/android/core/server/Request;->j:J

    .line 210
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/server/RequestMethod;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Request;->g:Lcom/scoreloop/client/android/core/server/RequestMethod;

    .line 177
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/server/Response;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    sget-boolean v0, Lcom/scoreloop/client/android/core/server/Request;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->EXECUTING:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/server/Request$State;->COMPLETED:Lcom/scoreloop/client/android/core/server/Request$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    .line 136
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Request;->h:Lcom/scoreloop/client/android/core/server/Response;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->d:Ljava/lang/Exception;

    .line 138
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 142
    sget-boolean v0, Lcom/scoreloop/client/android/core/server/Request;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->EXECUTING:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 144
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/server/Request$State;->FAILED:Lcom/scoreloop/client/android/core/server/Request$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->h:Lcom/scoreloop/client/android/core/server/Response;

    .line 146
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Request;->d:Ljava/lang/Exception;

    .line 147
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Request;->k:Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Request;->c:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Request;->e:Lorg/json/JSONObject;

    .line 173
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->g:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method

.method public final e()Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->b:Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->b:Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->b:Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;

    .line 75
    return-void
.end method

.method public final g()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->d:Ljava/lang/Exception;

    return-object v0
.end method

.method public final h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/scoreloop/client/android/core/server/Request;->f:I

    return v0
.end method

.method public final j()Lcom/scoreloop/client/android/core/server/Response;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->h:Lcom/scoreloop/client/android/core/server/Response;

    return-object v0
.end method

.method public final declared-synchronized k()Lcom/scoreloop/client/android/core/server/Request$State;
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/Request;->k()Lcom/scoreloop/client/android/core/server/Request$State;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->COMPLETED:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->CANCELLED:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->FAILED:Lcom/scoreloop/client/android/core/server/Request$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    sget-boolean v0, Lcom/scoreloop/client/android/core/server/Request;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->EXECUTING:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->ENQUEUED:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/server/Request$State;->CANCELLED:Lcom/scoreloop/client/android/core/server/Request$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    .line 127
    iput-object v2, p0, Lcom/scoreloop/client/android/core/server/Request;->h:Lcom/scoreloop/client/android/core/server/Response;

    .line 128
    iput-object v2, p0, Lcom/scoreloop/client/android/core/server/Request;->d:Ljava/lang/Exception;

    .line 129
    return-void
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 159
    sget-boolean v0, Lcom/scoreloop/client/android/core/server/Request;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->IDLE:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 161
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/server/Request$State;->ENQUEUED:Lcom/scoreloop/client/android/core/server/Request$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    .line 162
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 166
    sget-boolean v0, Lcom/scoreloop/client/android/core/server/Request;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->IDLE:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    sget-object v1, Lcom/scoreloop/client/android/core/server/Request$State;->ENQUEUED:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/server/Request$State;->EXECUTING:Lcom/scoreloop/client/android/core/server/Request$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/Request;->i:Lcom/scoreloop/client/android/core/server/Request$State;

    .line 169
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/Request;->g:Lcom/scoreloop/client/android/core/server/RequestMethod;

    sget-object v2, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    if-eq v1, v2, :cond_0

    .line 205
    :goto_0
    return-object v0

    .line 189
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/Request;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/Request;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 196
    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MD5("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 200
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 201
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 202
    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    goto :goto_0

    .line 191
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final r()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/server/Request;->j:J

    return-wide v0
.end method
