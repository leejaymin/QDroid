.class public final LbG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/location/Location;

.field private c:J

.field private d:Z

.field private e:Z

.field private f:J

.field private g:I

.field private h:I

.field private i:F


# direct methods
.method public constructor <init>(ZJIIFJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, LbG;->a:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, LbG;->b:Landroid/location/Location;

    .line 12
    iput-wide v2, p0, LbG;->c:J

    .line 13
    iput-boolean v1, p0, LbG;->d:Z

    .line 14
    iput-boolean v1, p0, LbG;->e:Z

    .line 15
    iput-wide v2, p0, LbG;->f:J

    .line 16
    iput v1, p0, LbG;->g:I

    .line 17
    iput v1, p0, LbG;->h:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, LbG;->i:F

    .line 24
    iput-boolean p1, p0, LbG;->d:Z

    .line 25
    iput-wide p2, p0, LbG;->f:J

    .line 26
    iput p4, p0, LbG;->g:I

    .line 27
    iput p5, p0, LbG;->h:I

    .line 28
    iput p6, p0, LbG;->i:F

    .line 29
    iput-wide p7, p0, LbG;->c:J

    .line 30
    return-void
.end method

.method private a(ILandroid/location/Location;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0x1d4c0

    .line 74
    iget v0, p0, LbG;->a:I

    if-ge v0, p1, :cond_4

    .line 76
    iget-object v0, p0, LbG;->b:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 78
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget v1, p0, LbG;->i:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 81
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, LbG;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, LbG;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, LbG;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 83
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, LbG;->b:Landroid/location/Location;

    .line 84
    invoke-direct {p0, p2}, LbG;->b(Landroid/location/Location;)V

    .line 105
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 107
    :goto_1
    return v0

    .line 88
    :cond_1
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-object v2, p0, LbG;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 90
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iget-object v3, p0, LbG;->b:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 91
    invoke-direct {p0, p2}, LbG;->c(Landroid/location/Location;)V

    goto :goto_0

    .line 92
    :cond_2
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 95
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, LbG;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 96
    invoke-direct {p0, p2}, LbG;->c(Landroid/location/Location;)V

    goto :goto_0

    .line 98
    :cond_3
    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 100
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget v1, p0, LbG;->i:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 101
    invoke-direct {p0, p2}, LbG;->c(Landroid/location/Location;)V

    goto :goto_0

    .line 107
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private b(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, LbG;->b:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 60
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, LbG;->c:J

    .line 61
    iget v0, p0, LbG;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LbG;->a:I

    .line 62
    return-void
.end method

.method private c(Landroid/location/Location;)V
    .locals 4
    .parameter

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, LbG;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, LbG;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, LbG;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, LbG;->b(Landroid/location/Location;)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, LbG;->b:Landroid/location/Location;

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/location/Location;)Z
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 115
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 124
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 155
    :goto_0
    monitor-exit p0

    return v0

    .line 139
    :cond_0
    :try_start_1
    iget-boolean v1, p0, LbG;->d:Z

    if-eqz v1, :cond_1

    .line 143
    iget v1, p0, LbG;->g:I

    invoke-direct {p0, v1, v0}, LbG;->a(ILandroid/location/Location;)Z

    move-result v0

    iput-boolean v0, p0, LbG;->e:Z

    .line 155
    :goto_1
    iget-boolean v0, p0, LbG;->e:Z

    goto :goto_0

    .line 148
    :cond_1
    iget v1, p0, LbG;->h:I

    invoke-direct {p0, v1, v0}, LbG;->a(ILandroid/location/Location;)Z

    move-result v0

    iput-boolean v0, p0, LbG;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, LbG;->e:Z

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    iput v0, p0, LbG;->a:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, LbG;->b:Landroid/location/Location;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LbG;->c:J

    .line 52
    return-void
.end method
