.class public final LW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LW;


# instance fields
.field private b:Ljava/lang/Process;

.field private c:Ljava/util/HashSet;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LW;->c:Ljava/util/HashSet;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LW;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    return-void
.end method

.method private static declared-synchronized a()LW;
    .locals 2

    .prologue
    .line 25
    const-class v1, LW;

    monitor-enter v1

    :try_start_0
    sget-object v0, LW;->a:LW;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, LW;

    invoke-direct {v0}, LW;-><init>()V

    sput-object v0, LW;->a:LW;

    .line 29
    :cond_0
    sget-object v0, LW;->a:LW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LW;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    iput-object p1, p0, LW;->b:Ljava/lang/Process;

    return-object p1
.end method

.method static synthetic a(LW;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p1}, LW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 35
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 36
    if-gez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    if-ltz v2, :cond_0

    if-lt v2, v1, :cond_0

    .line 46
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(LW;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, LW;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(LV;)V
    .locals 4
    .parameter

    .prologue
    .line 150
    invoke-static {}, LW;->a()LW;

    move-result-object v0

    .line 151
    iget-object v1, v0, LW;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v2, v0, LW;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, v0, LW;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 156
    invoke-direct {v0}, LW;->b()V

    .line 158
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

.method static synthetic b(LW;)Ljava/lang/Process;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, LW;->b:Ljava/lang/Process;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, LX;

    invoke-direct {v0, p0}, LX;-><init>(LW;)V

    invoke-virtual {v0}, LX;->start()V

    .line 137
    return-void
.end method

.method public static b(LV;)V
    .locals 3
    .parameter

    .prologue
    .line 163
    invoke-static {}, LW;->a()LW;

    move-result-object v0

    .line 164
    iget-object v1, v0, LW;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v2, v0, LW;->c:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object v2, v0, LW;->c:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-direct {v0}, LW;->c()V

    .line 171
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

.method static synthetic c(LW;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, LW;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, LW;->b:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, LW;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    iget-object v0, p0, LW;->b:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 146
    :cond_0
    return-void
.end method
