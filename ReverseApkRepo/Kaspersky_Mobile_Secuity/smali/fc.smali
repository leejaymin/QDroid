.class final Lfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p2}, Lcom/kms/free/kmsshared/IExportSettingsService$Stub;->a(Landroid/os/IBinder;)Lcom/kms/free/kmsshared/IExportSettingsService;

    move-result-object v0

    invoke-static {v0}, Lfb;->a(Lcom/kms/free/kmsshared/IExportSettingsService;)Lcom/kms/free/kmsshared/IExportSettingsService;

    .line 33
    invoke-static {}, Lfb;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 34
    :try_start_0
    invoke-static {}, Lfb;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    return-void
.end method
