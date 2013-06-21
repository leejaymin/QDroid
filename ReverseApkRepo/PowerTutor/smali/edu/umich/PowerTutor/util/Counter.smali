.class public Ledu/umich/PowerTutor/util/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/util/Counter$SingleCounter;
    }
.end annotation


# static fields
.field public static final WINDOW_DAY:I = 0x2

.field public static final WINDOW_DESCS:[Ljava/lang/CharSequence; = null

.field private static final WINDOW_DURATIONS:[J = null

.field public static final WINDOW_HOUR:I = 0x1

.field public static final WINDOW_MINUTE:I = 0x0

.field public static final WINDOW_NAMES:[Ljava/lang/CharSequence; = null

.field public static final WINDOW_TOTAL:I = 0x3


# instance fields
.field private counters:[Ledu/umich/PowerTutor/util/Counter$SingleCounter;

.field private startTime:J

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 29
    new-array v0, v6, [Ljava/lang/CharSequence;

    const-string v1, "Last minute"

    aput-object v1, v0, v3

    .line 30
    const-string v1, "Last Hour"

    aput-object v1, v0, v4

    const-string v1, "Last Day"

    aput-object v1, v0, v5

    const-string v1, "Total"

    aput-object v1, v0, v2

    .line 29
    sput-object v0, Ledu/umich/PowerTutor/util/Counter;->WINDOW_NAMES:[Ljava/lang/CharSequence;

    .line 32
    new-array v0, v6, [Ljava/lang/CharSequence;

    const-string v1, "the last minute"

    aput-object v1, v0, v3

    .line 33
    const-string v1, "the last hour"

    aput-object v1, v0, v4

    const-string v1, "the last day"

    aput-object v1, v0, v5

    const-string v1, "all time"

    aput-object v1, v0, v2

    .line 32
    sput-object v0, Ledu/umich/PowerTutor/util/Counter;->WINDOW_DESCS:[Ljava/lang/CharSequence;

    .line 34
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    sput-object v0, Ledu/umich/PowerTutor/util/Counter;->WINDOW_DURATIONS:[J

    .line 24
    return-void

    .line 34
    nop

    :array_0
    .array-data 0x8
        0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0xeet 0x36t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x5ct 0x26t 0x5t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ledu/umich/PowerTutor/util/Counter;->total:J

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Ledu/umich/PowerTutor/util/Counter;->startTime:J

    .line 44
    sget-object v1, Ledu/umich/PowerTutor/util/Counter;->WINDOW_DURATIONS:[J

    array-length v1, v1

    new-array v1, v1, [Ledu/umich/PowerTutor/util/Counter$SingleCounter;

    iput-object v1, p0, Ledu/umich/PowerTutor/util/Counter;->counters:[Ledu/umich/PowerTutor/util/Counter$SingleCounter;

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/Counter;->counters:[Ledu/umich/PowerTutor/util/Counter$SingleCounter;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 48
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/Counter;->counters:[Ledu/umich/PowerTutor/util/Counter$SingleCounter;

    new-instance v2, Ledu/umich/PowerTutor/util/Counter$SingleCounter;

    invoke-direct {v2}, Ledu/umich/PowerTutor/util/Counter$SingleCounter;-><init>()V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(J)V
    .locals 8
    .parameter "x"

    .prologue
    .line 51
    iget-wide v3, p0, Ledu/umich/PowerTutor/util/Counter;->total:J

    add-long/2addr v3, p1

    iput-wide v3, p0, Ledu/umich/PowerTutor/util/Counter;->total:J

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Ledu/umich/PowerTutor/util/Counter;->startTime:J

    sub-long v1, v3, v5

    .line 53
    .local v1, now:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Ledu/umich/PowerTutor/util/Counter;->counters:[Ledu/umich/PowerTutor/util/Counter$SingleCounter;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 56
    return-void

    .line 54
    :cond_0
    iget-object v3, p0, Ledu/umich/PowerTutor/util/Counter;->counters:[Ledu/umich/PowerTutor/util/Counter$SingleCounter;

    aget-object v3, v3, v0

    const-wide/16 v4, 0x3c

    mul-long/2addr v4, v1

    sget-object v6, Ledu/umich/PowerTutor/util/Counter;->WINDOW_DURATIONS:[J

    aget-wide v6, v6, v0

    div-long/2addr v4, v6

    invoke-virtual {v3, p1, p2, v4, v5}, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->add(JJ)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)J
    .locals 9
    .parameter "window"

    .prologue
    .line 59
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 60
    iget-wide v2, p0, Ledu/umich/PowerTutor/util/Counter;->total:J

    .line 63
    :goto_0
    return-wide v2

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Ledu/umich/PowerTutor/util/Counter;->startTime:J

    sub-long v0, v2, v4

    .line 63
    .local v0, now:J
    iget-object v2, p0, Ledu/umich/PowerTutor/util/Counter;->counters:[Ledu/umich/PowerTutor/util/Counter$SingleCounter;

    aget-object v2, v2, p1

    .line 64
    const-wide/16 v3, 0x3c

    mul-long/2addr v3, v0

    sget-object v5, Ledu/umich/PowerTutor/util/Counter;->WINDOW_DURATIONS:[J

    aget-wide v5, v5, p1

    div-long/2addr v3, v5

    .line 65
    const-wide/high16 v5, 0x3ff0

    long-to-double v7, v0

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x404e

    mul-double/2addr v5, v7

    sget-object v7, Ledu/umich/PowerTutor/util/Counter;->WINDOW_DURATIONS:[J

    aget-wide v7, v7, p1

    long-to-double v7, v7

    rem-double/2addr v5, v7

    .line 66
    sget-object v7, Ledu/umich/PowerTutor/util/Counter;->WINDOW_DURATIONS:[J

    aget-wide v7, v7, p1

    long-to-double v7, v7

    .line 65
    div-double/2addr v5, v7

    .line 63
    invoke-virtual {v2, v3, v4, v5, v6}, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->get(JD)J

    move-result-wide v2

    goto :goto_0
.end method
