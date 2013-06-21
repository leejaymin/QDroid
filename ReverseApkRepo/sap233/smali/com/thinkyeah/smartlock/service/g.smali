.class public Lcom/thinkyeah/smartlock/service/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/thinkyeah/common/c;

.field private static l:Lcom/thinkyeah/smartlock/service/g;


# instance fields
.field private b:Landroid/app/ActivityManager;

.field private c:Ljava/util/Timer;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/HashSet;

.field private h:Lcom/thinkyeah/smartlock/service/j;

.field private i:Ljava/io/BufferedReader;

.field private j:Ljava/lang/Process;

.field private k:Lcom/thinkyeah/smartlock/service/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/c;

    const-class v1, Lcom/thinkyeah/smartlock/service/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thinkyeah/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thinkyeah/smartlock/service/g;->a:Lcom/thinkyeah/common/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/thinkyeah/smartlock/service/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/g;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->g:Ljava/util/HashSet;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->b:Landroid/app/ActivityManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->g:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->g:Ljava/util/HashSet;

    const-string v1, "com.thinkyeah.smartlock.LaunchLockingActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->g:Ljava/util/HashSet;

    const-string v1, "com.android.internal.app.ChooserActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->g:Ljava/util/HashSet;

    const-string v1, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/thinkyeah/smartlock/service/g;->h:Lcom/thinkyeah/smartlock/service/j;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/thinkyeah/smartlock/service/j;)Lcom/thinkyeah/smartlock/service/g;
    .locals 2

    const-class v1, Lcom/thinkyeah/smartlock/service/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/thinkyeah/smartlock/service/g;->l:Lcom/thinkyeah/smartlock/service/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/thinkyeah/smartlock/service/g;

    invoke-direct {v0, p0, p1}, Lcom/thinkyeah/smartlock/service/g;-><init>(Landroid/content/Context;Lcom/thinkyeah/smartlock/service/j;)V

    sput-object v0, Lcom/thinkyeah/smartlock/service/g;->l:Lcom/thinkyeah/smartlock/service/g;

    :cond_0
    sget-object v0, Lcom/thinkyeah/smartlock/service/g;->l:Lcom/thinkyeah/smartlock/service/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/service/g;)Ljava/io/BufferedReader;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->i:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/service/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/service/g;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/service/g;)Lcom/thinkyeah/smartlock/service/j;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->h:Lcom/thinkyeah/smartlock/service/j;

    return-object v0
.end method

.method private declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/thinkyeah/smartlock/service/g;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c()Lcom/thinkyeah/common/c;
    .locals 1

    sget-object v0, Lcom/thinkyeah/smartlock/service/g;->a:Lcom/thinkyeah/common/c;

    return-object v0
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/service/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/service/g;->d()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->b:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/service/g;->g:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/thinkyeah/smartlock/service/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/thinkyeah/smartlock/service/g;->f:Z

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/thinkyeah/smartlock/service/g;->h:Lcom/thinkyeah/smartlock/service/j;

    invoke-interface {v2, v1}, Lcom/thinkyeah/smartlock/service/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/thinkyeah/smartlock/service/g;->f:Z

    iget-object v2, p0, Lcom/thinkyeah/smartlock/service/g;->h:Lcom/thinkyeah/smartlock/service/j;

    invoke-interface {v2, v1, v0}, Lcom/thinkyeah/smartlock/service/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object v1, p0, Lcom/thinkyeah/smartlock/service/g;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/thinkyeah/smartlock/service/g;->b(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->j:Ljava/lang/Process;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->j:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/thinkyeah/smartlock/service/g;->f:Z

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/thinkyeah/smartlock/service/g;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->b:Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/thinkyeah/smartlock/service/g;->f:Z

    :goto_0
    invoke-direct {p0, v1}, Lcom/thinkyeah/smartlock/service/g;->b(Z)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->c:Ljava/util/Timer;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->c:Ljava/util/Timer;

    new-instance v1, Lcom/thinkyeah/smartlock/service/h;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/service/h;-><init>(Lcom/thinkyeah/smartlock/service/g;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -v raw -s ActivityManager:I"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->j:Ljava/lang/Process;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/service/g;->j:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->i:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/thinkyeah/smartlock/service/i;

    invoke-direct {v0, p0, v6}, Lcom/thinkyeah/smartlock/service/i;-><init>(Lcom/thinkyeah/smartlock/service/g;B)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->k:Lcom/thinkyeah/smartlock/service/i;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->k:Lcom/thinkyeah/smartlock/service/i;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/service/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->e:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/thinkyeah/smartlock/service/g;->f:Z

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/thinkyeah/smartlock/service/g;->a:Lcom/thinkyeah/common/c;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/service/g;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
