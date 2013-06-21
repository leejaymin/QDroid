.class public final Lccc71/pmw/b/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field private static b:Ljava/text/SimpleDateFormat;

.field private static f:Lccc71/pmw/b/z;


# instance fields
.field private c:J

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const/16 v0, 0xa

    sput v0, Lccc71/pmw/b/z;->a:I

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yy HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccc71/pmw/b/z;->b:Ljava/text/SimpleDateFormat;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/b/z;->f:Lccc71/pmw/b/z;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 83
    sub-long v2, v0, v2

    iput-wide v2, p0, Lccc71/pmw/b/z;->e:J

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 86
    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    neg-long v0, v0

    long-to-int v0, v0

    invoke-virtual {v2, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 87
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccc71/pmw/b/z;->d:J

    .line 93
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/uptime"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 94
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 97
    const-string v0, " +"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 100
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-long v0, v0

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 103
    const/16 v3, 0xd

    neg-long v0, v0

    long-to-int v0, v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 104
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccc71/pmw/b/z;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "process_monitor_widget"

    const-string v2, "Failed reading uptime: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_0
    const-string v0, "process_monitor_widget"

    const-string v1, "Failed to get kernel uptime, using Android uptime"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-wide v0, p0, Lccc71/pmw/b/z;->d:J

    iput-wide v0, p0, Lccc71/pmw/b/z;->c:J

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lccc71/pmw/b/z;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lccc71/pmw/b/z;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lccc71/pmw/b/z;->d:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lccc71/pmw/b/z;->c:J

    return-wide v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 68
    sget-object v0, Lccc71/pmw/b/z;->b:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lccc71/pmw/b/z;->d:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lccc71/pmw/b/z;->e:J

    return-wide v0
.end method
