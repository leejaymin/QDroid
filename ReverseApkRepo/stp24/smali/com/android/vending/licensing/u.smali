.class public final Lcom/android/vending/licensing/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/vending/licensing/q;


# instance fields
.field public a:Lcom/android/vending/licensing/r;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/android/vending/licensing/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/vending/licensing/p;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/vending/licensing/u;->f:J

    .line 76
    const-string v0, "com.android.vending.licensing.ServerManagedPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/android/vending/licensing/s;

    invoke-direct {v1, v0, p2}, Lcom/android/vending/licensing/s;-><init>(Landroid/content/SharedPreferences;Lcom/android/vending/licensing/p;)V

    iput-object v1, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    .line 79
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "lastResponse"

    sget-object v2, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    invoke-virtual {v2}, Lcom/android/vending/licensing/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/vending/licensing/r;->valueOf(Ljava/lang/String;)Lcom/android/vending/licensing/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/licensing/u;->a:Lcom/android/vending/licensing/r;

    .line 80
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "validityTimestamp"

    .line 81
    const-string v2, "0"

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/licensing/u;->b:J

    .line 82
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "retryUntil"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/licensing/u;->c:J

    .line 83
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "maxRetries"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/licensing/u;->d:J

    .line 84
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "retryCount"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/s;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/licensing/u;->e:J

    .line 85
    return-void
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/android/vending/licensing/u;->e:J

    .line 150
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 167
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/licensing/u;->b:J

    .line 176
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "validityTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/android/vending/licensing/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 171
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/licensing/u;->c:J

    .line 202
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "retryUntil"

    invoke-virtual {v0, v1, p1}, Lcom/android/vending/licensing/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 197
    :catch_0
    move-exception v0

    const-string p1, "0"

    .line 198
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 227
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/licensing/u;->d:J

    .line 228
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "maxRetries"

    invoke-virtual {v0, v1, p1}, Lcom/android/vending/licensing/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void

    .line 223
    :catch_0
    move-exception v0

    const-string p1, "0"

    .line 224
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter

    .prologue
    .line 263
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 265
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 266
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    :goto_1
    return-object v1

    .line 267
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 268
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 105
    sget-object v0, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    if-eq p1, v0, :cond_1

    .line 106
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/vending/licensing/u;->a(J)V

    .line 111
    :goto_0
    sget-object v0, Lcom/android/vending/licensing/r;->a:Lcom/android/vending/licensing/r;

    if-ne p1, v0, :cond_2

    .line 113
    iget-object v0, p2, Lcom/android/vending/licensing/t;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/vending/licensing/u;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 114
    iput-object p1, p0, Lcom/android/vending/licensing/u;->a:Lcom/android/vending/licensing/r;

    .line 115
    const-string v0, "VT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/u;->a(Ljava/lang/String;)V

    .line 116
    const-string v0, "GT"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/u;->b(Ljava/lang/String;)V

    .line 117
    const-string v0, "GR"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/u;->c(Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/vending/licensing/u;->f:J

    iput-object p1, p0, Lcom/android/vending/licensing/u;->a:Lcom/android/vending/licensing/r;

    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    const-string v1, "lastResponse"

    invoke-virtual {p1}, Lcom/android/vending/licensing/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/vending/licensing/u;->g:Lcom/android/vending/licensing/s;

    invoke-virtual {v0}, Lcom/android/vending/licensing/s;->a()V

    .line 127
    return-void

    .line 108
    :cond_1
    iget-wide v0, p0, Lcom/android/vending/licensing/u;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/vending/licensing/u;->a(J)V

    goto :goto_0

    .line 118
    :cond_2
    sget-object v0, Lcom/android/vending/licensing/r;->b:Lcom/android/vending/licensing/r;

    if-ne p1, v0, :cond_0

    .line 120
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/u;->a(Ljava/lang/String;)V

    .line 121
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/u;->b(Ljava/lang/String;)V

    .line 122
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/u;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 247
    iget-object v4, p0, Lcom/android/vending/licensing/u;->a:Lcom/android/vending/licensing/r;

    sget-object v5, Lcom/android/vending/licensing/r;->a:Lcom/android/vending/licensing/r;

    if-ne v4, v5, :cond_1

    .line 249
    iget-wide v4, p0, Lcom/android/vending/licensing/u;->b:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/android/vending/licensing/u;->a:Lcom/android/vending/licensing/r;

    sget-object v5, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    if-ne v4, v5, :cond_2

    .line 254
    iget-wide v4, p0, Lcom/android/vending/licensing/u;->f:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 257
    iget-wide v4, p0, Lcom/android/vending/licensing/u;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/vending/licensing/u;->e:J

    iget-wide v4, p0, Lcom/android/vending/licensing/u;->d:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 259
    goto :goto_0
.end method
