.class public final Lgn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lgn;

.field private static b:Lgo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lgn;->a:Lgn;

    .line 11
    sput-object v0, Lgn;->b:Lgo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lgo;->getInstance()Lgo;

    move-result-object v0

    sput-object v0, Lgn;->b:Lgo;

    .line 23
    return-void
.end method

.method public static a()Lgn;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lgn;->a:Lgn;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lgn;

    invoke-direct {v0}, Lgn;-><init>()V

    sput-object v0, Lgn;->a:Lgn;

    .line 17
    :cond_0
    sget-object v0, Lgn;->a:Lgn;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 28
    sget-object v1, Lgn;->b:Lgo;

    invoke-virtual {v1, p1}, Lgo;->getCurrentAutoSyncState(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lgf;->j:Z

    .line 29
    invoke-virtual {v0}, Lgf;->a()V

    .line 31
    sget-object v0, Lgn;->b:Lgo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgo;->toggleAutoSync(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 38
    sget-object v1, Lgn;->b:Lgo;

    iget-boolean v0, v0, Lgf;->j:Z

    invoke-virtual {v1, p1, v0}, Lgo;->toggleAutoSync(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
