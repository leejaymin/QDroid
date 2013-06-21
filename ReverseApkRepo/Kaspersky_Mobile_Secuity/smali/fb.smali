.class public final Lfb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/kms/free/kmsshared/IExportSettingsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kms/free/kmsshared/IExportSettingsService;)Lcom/kms/free/kmsshared/IExportSettingsService;
    .locals 0
    .parameter

    .prologue
    .line 13
    sput-object p0, Lfb;->b:Lcom/kms/free/kmsshared/IExportSettingsService;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lfb;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 21
    new-instance v1, Lfc;

    invoke-direct {v1}, Lfc;-><init>()V

    .line 38
    sget-object v2, Lfb;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 39
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    const-string v3, "com.kms.free"

    const-string v4, "com.kms.free.kmsshared.ExportSettingsService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :try_start_1
    sget-object v0, Lfb;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :try_start_3
    sget-object v0, Lfb;->b:Lcom/kms/free/kmsshared/IExportSettingsService;

    invoke-interface {v0}, Lcom/kms/free/kmsshared/IExportSettingsService;->d()V

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 67
    :goto_1
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 63
    :catch_1
    move-exception v0

    .line 65
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
