.class public final Lay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lay;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Laz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lay;->a:Lay;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lay;->b:Landroid/content/Context;

    .line 19
    new-instance v0, Laz;

    invoke-direct {v0, p0}, Laz;-><init>(Lay;)V

    iput-object v0, p0, Lay;->c:Laz;

    .line 29
    return-void
.end method

.method public static declared-synchronized a()Lay;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lay;->a:Lay;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lay;

    invoke-direct {v0}, Lay;-><init>()V

    sput-object v0, Lay;->a:Lay;

    .line 25
    :cond_0
    sget-object v0, Lay;->a:Lay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lay;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 33
    iput-object p1, p0, Lay;->b:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 40
    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 51
    iget-object v1, p0, Lay;->b:Landroid/content/Context;

    iget-object v2, p0, Lay;->c:Laz;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lay;->b:Landroid/content/Context;

    iget-object v3, p0, Lay;->c:Laz;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lay;->c:Laz;

    invoke-virtual {v1, v0}, Laz;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lax;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lay;->c:Laz;

    invoke-virtual {v0, p1}, Laz;->a(Lax;)V

    .line 74
    return-void
.end method

.method public final b(Lax;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lay;->c:Laz;

    invoke-virtual {v0, p1}, Laz;->b(Lax;)V

    .line 78
    return-void
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lay;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lay;->b:Landroid/content/Context;

    iget-object v1, p0, Lay;->c:Laz;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    :cond_0
    return-void
.end method
