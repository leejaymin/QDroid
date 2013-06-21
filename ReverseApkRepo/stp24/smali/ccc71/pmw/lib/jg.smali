.class public final Lccc71/pmw/lib/jg;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/Runnable;

.field static b:Ljava/lang/Runnable;

.field private static c:Ljava/lang/Object;

.field private static d:Lccc71/pmw/lib/jg;


# instance fields
.field private e:I

.field private f:I

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/pmw/lib/jg;->c:Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    .line 72
    new-instance v0, Lccc71/pmw/lib/jh;

    invoke-direct {v0}, Lccc71/pmw/lib/jh;-><init>()V

    sput-object v0, Lccc71/pmw/lib/jg;->a:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lccc71/pmw/lib/ji;

    invoke-direct {v0}, Lccc71/pmw/lib/ji;-><init>()V

    sput-object v0, Lccc71/pmw/lib/jg;->b:Ljava/lang/Runnable;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14
    const/16 v0, 0x5dc

    iput v0, p0, Lccc71/pmw/lib/jg;->e:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lccc71/pmw/lib/jg;->f:I

    .line 9
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    iget v0, v0, Lccc71/pmw/lib/jg;->f:I

    div-int/lit16 v0, v0, 0x3e8

    .line 23
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method static synthetic a(Lccc71/pmw/lib/jg;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lccc71/pmw/lib/jg;->e:I

    return v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 35
    sget-object v1, Lccc71/pmw/lib/jg;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/pmw_monitor;->a:Lccc71/pmw/lib/pmw_monitor;

    if-nez v0, :cond_0

    .line 38
    monitor-exit v1

    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    if-nez v0, :cond_1

    .line 42
    const-string v0, "process_monitor_widget"

    const-string v2, "Registering pmw_monitor_handler"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lccc71/pmw/lib/jg;

    invoke-direct {v0}, Lccc71/pmw/lib/jg;-><init>()V

    .line 44
    sput-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->d(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lccc71/pmw/lib/jg;->f:I

    .line 45
    sget-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    iget v2, v0, Lccc71/pmw/lib/jg;->f:I

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, v0, Lccc71/pmw/lib/jg;->f:I

    .line 46
    sget-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    iput-object p0, v0, Lccc71/pmw/lib/jg;->g:Landroid/content/Context;

    .line 48
    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling every "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    iget v3, v3, Lccc71/pmw/lib/jg;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    sget-object v2, Lccc71/pmw/lib/jg;->b:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lccc71/pmw/lib/jg;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 53
    :cond_1
    :try_start_1
    const-string v0, "process_monitor_widget"

    const-string v2, "pmw_monitor_handler already registered, not registering again"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lccc71/pmw/lib/jg;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lccc71/pmw/lib/jg;->e:I

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/jg;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lccc71/pmw/lib/jg;->g:Landroid/content/Context;

    return-object v0
.end method

.method static b()V
    .locals 3

    .prologue
    .line 60
    sget-object v1, Lccc71/pmw/lib/jg;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    sget-object v2, Lccc71/pmw/lib/jg;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/jg;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    .line 67
    const-string v0, "process_monitor_widget"

    const-string v2, "UNregistered pmw_monitor_handler"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lccc71/pmw/lib/jg;)I
    .locals 1
    .parameter

    .prologue
    .line 15
    iget v0, p0, Lccc71/pmw/lib/jg;->f:I

    return v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lccc71/pmw/lib/jg;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d()Lccc71/pmw/lib/jg;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lccc71/pmw/lib/jg;->d:Lccc71/pmw/lib/jg;

    return-object v0
.end method
