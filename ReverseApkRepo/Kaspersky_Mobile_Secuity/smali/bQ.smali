.class public final LbQ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:I

.field private d:J

.field private e:LbG;

.field private f:LbG;

.field private g:LbH;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LbQ;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, LbQ;->a:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LbQ;->b:Ljava/lang/Object;

    .line 60
    iput v1, p0, LbQ;->c:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LbQ;->d:J

    .line 63
    iput-object v2, p0, LbQ;->e:LbG;

    .line 64
    iput-object v2, p0, LbQ;->f:LbG;

    .line 66
    iput-object v2, p0, LbQ;->g:LbH;

    .line 69
    const-string v0, ""

    iput-object v0, p0, LbQ;->i:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .locals 10
    .parameter

    .prologue
    .line 133
    iget-object v9, p0, LbQ;->b:Ljava/lang/Object;

    monitor-enter v9

    .line 134
    :try_start_0
    new-instance v0, LbG;

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/high16 v6, 0x4270

    iget-wide v7, p0, LbQ;->d:J

    move v1, p1

    invoke-direct/range {v0 .. v8}, LbG;-><init>(ZJIIFJ)V

    iput-object v0, p0, LbQ;->e:LbG;

    .line 137
    new-instance v0, LbG;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/high16 v6, 0x42a0

    iget-wide v7, p0, LbQ;->d:J

    move v1, p1

    invoke-direct/range {v0 .. v8}, LbG;-><init>(ZJIIFJ)V

    iput-object v0, p0, LbQ;->f:LbG;

    .line 140
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private declared-synchronized b(Landroid/location/Location;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 318
    monitor-enter p0

    if-nez p1, :cond_0

    .line 372
    :goto_0
    monitor-exit p0

    return v0

    .line 331
    :cond_0
    :try_start_0
    invoke-virtual {p0}, LbQ;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 337
    goto :goto_0

    .line 339
    :cond_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 340
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 345
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v2, 0x7f0801b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 348
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 351
    :cond_3
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "SMS-Find:%.6f,%.6f;%s;%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    const-string v1, "+79851855100"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 353
    invoke-direct {p0}, LbQ;->h()V

    .line 355
    :cond_4
    iget-object v0, p0, LbQ;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 357
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 360
    :cond_5
    const-string v0, "Phone coordinates: latitude - %.6f, longitude - %.6f"

    .line 363
    :cond_6
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v1, p0, LbQ;->i:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lfp;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 365
    invoke-direct {p0}, LbQ;->h()V

    .line 372
    :cond_7
    invoke-virtual {p0}, LbQ;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto/16 :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 234
    sget-object v0, LbQ;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 235
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, LbQ;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, LbQ;->a:Z

    .line 121
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized i()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 212
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 213
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, LbQ;->c:I

    .line 214
    iget v1, p0, LbQ;->c:I

    if-lez v1, :cond_0

    move v1, v2

    .line 216
    :goto_0
    iget v2, p0, LbQ;->c:I

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_1

    .line 217
    iget v2, p0, LbQ;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LbQ;->c:I

    .line 221
    :goto_1
    const/16 v2, 0xc

    iget v3, p0, LbQ;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LfZ;->a(ILjava/lang/Object;)V

    .line 222
    invoke-virtual {v0}, LfZ;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return v1

    .line 214
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 219
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput v2, p0, LbQ;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 264
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 265
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 266
    iput-object p1, p0, LbQ;->i:Ljava/lang/String;

    .line 267
    const/4 v1, 0x4

    invoke-static {v1}, Lgj;->a(I)Z

    move-result v1

    .line 269
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 270
    sget-object v0, LbQ;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const-string v0, "KMS"

    const-string v1, "SmsFind already running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, LbQ;->g:LbH;

    if-eqz v0, :cond_1

    iget-object v0, p0, LbQ;->g:LbH;

    invoke-virtual {v0}, LbH;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :try_start_0
    iget-object v0, p0, LbQ;->g:LbH;

    invoke-virtual {v0}, LbH;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, LbQ;->g:LbH;

    .line 285
    :cond_1
    invoke-direct {p0}, LbQ;->i()Z

    move-result v0

    .line 290
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 291
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, LbQ;->d:J

    .line 292
    invoke-direct {p0, v0}, LbQ;->a(Z)V

    .line 294
    new-instance v1, LbH;

    iget-object v2, p0, LbQ;->b:Ljava/lang/Object;

    iget-object v3, p0, LbQ;->i:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, LbH;-><init>(LbQ;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, LbQ;->g:LbH;

    .line 295
    iget-object v1, p0, LbQ;->g:LbH;

    iget-object v2, p0, LbQ;->e:LbG;

    iget-object v3, p0, LbQ;->f:LbG;

    invoke-virtual {v1, v2, v3}, LbH;->a(LbG;LbG;)V

    .line 296
    iget-object v1, p0, LbQ;->g:LbH;

    invoke-virtual {v1, v0}, LbH;->a(Z)V

    .line 297
    iget-object v0, p0, LbQ;->g:LbH;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LbH;->setPriority(I)V

    .line 298
    iget-object v0, p0, LbQ;->g:LbH;

    invoke-virtual {v0}, LbH;->start()V

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 305
    :cond_2
    if-eqz v1, :cond_3

    .line 307
    const-string v0, "KMS"

    const-string v1, "SmsFind feature disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_3
    const-string v0, "KMS"

    const-string v1, "SmsFind feature is not allowed by current license"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0}, LbQ;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 86
    :cond_0
    iget-object v1, p0, LbQ;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v2, p0, LbQ;->e:LbG;

    if-eqz v2, :cond_1

    iget-object v2, p0, LbQ;->f:LbG;

    if-nez v2, :cond_2

    .line 93
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 97
    :cond_2
    :try_start_1
    iget-object v2, p0, LbQ;->e:LbG;

    invoke-virtual {v2}, LbG;->a()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, LbQ;->f:LbG;

    invoke-virtual {v2}, LbG;->a()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 98
    iget-object v0, p0, LbQ;->e:LbG;

    invoke-virtual {v0}, LbG;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v2, p0, LbQ;->f:LbG;

    invoke-virtual {v2}, LbG;->a()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 99
    iget-object v0, p0, LbQ;->e:LbG;

    invoke-virtual {v0}, LbG;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, LbQ;->a(Landroid/location/Location;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, LbQ;->f:LbG;

    invoke-virtual {v0}, LbG;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, LbQ;->a(Landroid/location/Location;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, p0, LbQ;->e:LbG;

    invoke-virtual {v2}, LbG;->a()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 105
    iget-object v0, p0, LbQ;->e:LbG;

    invoke-virtual {v0}, LbG;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, LbQ;->a(Landroid/location/Location;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 106
    :cond_5
    iget-object v2, p0, LbQ;->f:LbG;

    invoke-virtual {v2}, LbG;->a()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 107
    iget-object v0, p0, LbQ;->f:LbG;

    invoke-virtual {v0}, LbG;->a()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, LbQ;->a(Landroid/location/Location;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :cond_6
    monitor-exit v1

    goto :goto_0
.end method

.method public final declared-synchronized a(Landroid/location/Location;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    .line 152
    monitor-enter p0

    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 162
    :cond_1
    :try_start_0
    invoke-virtual {p0}, LbQ;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 166
    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 174
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 176
    :cond_3
    const-string v0, "Phone coordinates: latitude - %.6f, longitude - %.6f"

    .line 178
    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    invoke-direct {p0, p1}, LbQ;->b(Landroid/location/Location;)Z

    .line 189
    invoke-direct {p0}, LbQ;->h()V

    .line 190
    invoke-virtual {p0}, LbQ;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, LbQ;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, LbQ;->a:Z

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, LbQ;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-boolean v0, p0, LbQ;->a:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, LbQ;->c:I

    return v0
.end method

.method public final declared-synchronized e()V
    .locals 3

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 201
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 202
    invoke-virtual {v0}, LfZ;->a()V

    .line 207
    const/4 v0, 0x0

    iput v0, p0, LbQ;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, LbQ;->g:LbH;

    if-eqz v0, :cond_0

    iget-object v0, p0, LbQ;->g:LbH;

    invoke-virtual {v0}, LbH;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0}, LbQ;->i()Z

    move-result v0

    .line 251
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 252
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, LbQ;->d:J

    .line 254
    invoke-direct {p0, v0}, LbQ;->a(Z)V

    .line 255
    iget-object v1, p0, LbQ;->g:LbH;

    iget-object v2, p0, LbQ;->e:LbG;

    iget-object v3, p0, LbQ;->f:LbG;

    invoke-virtual {v1, v2, v3}, LbH;->a(LbG;LbG;)V

    .line 256
    iget-object v1, p0, LbQ;->g:LbH;

    invoke-virtual {v1, v0}, LbH;->a(Z)V

    .line 257
    iget-object v0, p0, LbQ;->g:LbH;

    invoke-virtual {v0}, LbH;->d()V

    .line 259
    :cond_0
    return-void
.end method
