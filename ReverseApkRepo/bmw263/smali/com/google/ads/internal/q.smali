.class public final Lcom/google/ads/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/internal/h;

.field private final b:Lcom/google/ads/internal/o;

.field private final c:Lcom/google/ads/internal/s;

.field private volatile d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/h;Lcom/google/ads/internal/o;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/google/ads/internal/r;

    invoke-direct {v0}, Lcom/google/ads/internal/r;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/internal/q;-><init>(Lcom/google/ads/internal/h;Lcom/google/ads/internal/o;Lcom/google/ads/internal/s;)V

    .line 132
    return-void
.end method

.method private constructor <init>(Lcom/google/ads/internal/h;Lcom/google/ads/internal/o;Lcom/google/ads/internal/s;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/q;->g:Ljava/lang/Thread;

    .line 146
    iput-object p1, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    .line 147
    iput-object p2, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    .line 148
    iput-object p3, p0, Lcom/google/ads/internal/q;->c:Lcom/google/ads/internal/s;

    .line 149
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 165
    const-string v1, "X-Afma-Debug-Dialog"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    invoke-virtual {v2, v1}, Lcom/google/ads/internal/h;->e(Ljava/lang/String;)V

    .line 166
    :cond_0
    const-string v1, "X-Afma-Tracking-Urls"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v5, v4}, Lcom/google/ads/internal/o;->b(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const-string v1, "X-Afma-Click-Tracking-Urls"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    invoke-virtual {v4, v3}, Lcom/google/ads/internal/h;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_2
    const-string v0, "X-Afma-Refresh-Rate"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/o;->a(F)V

    iget-object v0, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->p()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->f()V

    .line 169
    :cond_3
    :goto_2
    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    const/high16 v3, 0x447a

    mul-float/2addr v0, v3

    float-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/ads/internal/o;->a(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :cond_4
    :goto_3
    const-string v0, "X-Afma-Orientation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->a(I)V

    .line 171
    :cond_5
    :goto_4
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_2
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/internal/o;->b(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    :cond_6
    :goto_5
    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/h;->c(Ljava/lang/String;)V

    .line 173
    :cond_7
    const-string v0, "X-Afma-Mediation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/h;->a(Z)V

    .line 174
    :cond_8
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/h;->b(Ljava/lang/String;)V

    .line 175
    :cond_9
    const-string v0, "X-Afma-Ad-Size"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    :try_start_3
    const-string v1, "x"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v6, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse size header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 176
    :cond_a
    :goto_6
    return-void

    .line 168
    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get refresh value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->e()V

    goto/16 :goto_2

    .line 169
    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get timeout value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 170
    :cond_c
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->a(I)V

    goto/16 :goto_4

    .line 171
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got bad value of Doritos cookie cache life from header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Using default value instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 175
    :cond_d
    const/4 v2, 0x0

    :try_start_4
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v0

    iget-object v1, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    new-instance v3, Lcom/google/ads/g;

    invoke-direct {v3, v2, v0}, Lcom/google/ads/g;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/g;)V

    goto/16 :goto_6

    :catch_3
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse size header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto/16 :goto_6
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/q;->d:Z

    .line 158
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/q;->g:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 367
    iput-object p1, p0, Lcom/google/ads/internal/q;->f:Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/q;->d:Z

    .line 369
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/internal/q;->g:Ljava/lang/Thread;

    .line 370
    iget-object v0, p0, Lcom/google/ads/internal/q;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_0
    monitor-exit p0

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/google/ads/internal/q;->e:Z

    .line 322
    return-void
.end method

.method public final run()V
    .locals 5

    .prologue
    const/16 v4, 0x190

    .line 430
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/q;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/ads/internal/q;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/internal/q;->c:Lcom/google/ads/internal/s;

    invoke-interface {v1, v0}, Lcom/google/ads/internal/s;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "drt"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/ads/internal/q;->e:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    const-string v2, "X-Afma-drt-Cookie"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/ads/internal/q;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->g()Lcom/google/ads/aq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x12c

    if-gt v2, v0, :cond_4

    if-ge v0, v4, :cond_4

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get redirect location from a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " redirect."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/q;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 433
    const-string v1, "Received malformed ad url from javascript."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    sget-object v1, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/e;)V

    .line 444
    :cond_1
    :goto_3
    return-void

    .line 430
    :cond_2
    :try_start_3
    const-string v2, "Cookie"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 435
    :catch_1
    move-exception v0

    .line 437
    const-string v1, "IOException connecting to ad url."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    sget-object v1, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/e;)V

    goto :goto_3

    .line 430
    :cond_3
    :try_start_5
    invoke-direct {p0, v1}, Lcom/google/ads/internal/q;->a(Ljava/net/HttpURLConnection;)V

    iput-object v2, p0, Lcom/google/ads/internal/q;->f:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_6

    invoke-direct {p0, v1}, Lcom/google/ads/internal/q;->a(Ljava/net/HttpURLConnection;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response content is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response message is null or zero length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    sget-object v2, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/q;->d:Z

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    iget-object v3, p0, Lcom/google/ads/internal/q;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/ads/internal/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/q;->d:Z

    goto/16 :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    const-string v0, "Bad request"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    sget-object v2, Lcom/google/ads/e;->a:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/q;->d:Z

    goto/16 :goto_2

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/q;->d:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 439
    :catch_2
    move-exception v0

    .line 441
    const-string v1, "An unknown error occurred in AdResponseLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 442
    iget-object v0, p0, Lcom/google/ads/internal/q;->a:Lcom/google/ads/internal/h;

    sget-object v1, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/e;)V

    goto/16 :goto_3
.end method
