.class public final LfQ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/kms/free/kmsshared/IExportSettingsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LfQ;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kms/free/kmsshared/IExportSettingsService;)Lcom/kms/free/kmsshared/IExportSettingsService;
    .locals 0
    .parameter

    .prologue
    .line 22
    sput-object p0, LfQ;->b:Lcom/kms/free/kmsshared/IExportSettingsService;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    sget-object v0, LfQ;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 30
    new-instance v1, LfR;

    invoke-direct {v1}, LfR;-><init>()V

    .line 50
    sget-object v2, LfQ;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 51
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    const-string v3, "com.kms.free"

    const-string v4, "com.kms.free.kmsshared.ExportSettingsService"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    sget-object v0, LfQ;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    sget-object v0, LfQ;->b:Lcom/kms/free/kmsshared/IExportSettingsService;

    invoke-interface {v0}, Lcom/kms/free/kmsshared/IExportSettingsService;->a()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {}, LfS;->a()LfS;

    move-result-object v2

    invoke-virtual {v2, v0}, LfS;->a(Ljava/lang/String;)V

    .line 74
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 75
    sget-object v0, LfQ;->b:Lcom/kms/free/kmsshared/IExportSettingsService;

    invoke-interface {v0}, Lcom/kms/free/kmsshared/IExportSettingsService;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/free/antispam/AntiSpamItem;

    .line 76
    new-instance v4, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v4, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/free/antispam/AntiSpamItem;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 89
    :goto_2
    return-void

    .line 63
    :catch_1
    move-exception v0

    .line 64
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 79
    :cond_0
    :try_start_5
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 80
    sget-object v0, LfQ;->b:Lcom/kms/free/kmsshared/IExportSettingsService;

    invoke-interface {v0}, Lcom/kms/free/kmsshared/IExportSettingsService;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/free/antispam/AntiSpamItem;

    .line 81
    new-instance v5, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v5, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/free/antispam/AntiSpamItem;)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 83
    :cond_1
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kms/antispam/AntiSpamStorage;->importItems(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method
