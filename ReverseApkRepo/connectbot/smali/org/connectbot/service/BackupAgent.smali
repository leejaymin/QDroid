.class public Lorg/connectbot/service/BackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "BackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v1, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 57
    monitor-exit v1

    .line 60
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    const-string v3, "ConnectBot.BackupAgent"

    const-string v4, "onCreate called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v1, Landroid/app/backup/SharedPreferencesBackupHelper;

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/connectbot/service/BackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_preferences"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v1, p0, v3}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 44
    .local v1, prefs:Landroid/app/backup/SharedPreferencesBackupHelper;
    const-string v3, "prefs"

    invoke-virtual {p0, v3, v1}, Lorg/connectbot/service/BackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 46
    new-instance v0, Landroid/app/backup/FileBackupHelper;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "../databases/hosts"

    aput-object v4, v3, v6

    invoke-direct {v0, p0, v3}, Landroid/app/backup/FileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 47
    .local v0, hosts:Landroid/app/backup/FileBackupHelper;
    const-string v3, "hosts"

    invoke-virtual {p0, v3, v0}, Lorg/connectbot/service/BackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 49
    new-instance v2, Landroid/app/backup/FileBackupHelper;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "../databases/pubkeys"

    aput-object v4, v3, v6

    invoke-direct {v2, p0, v3}, Landroid/app/backup/FileBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 50
    .local v2, pubkeys:Landroid/app/backup/FileBackupHelper;
    const-string v3, "pubkeys"

    invoke-virtual {p0, v3, v2}, Lorg/connectbot/service/BackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 52
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v0, "ConnectBot.BackupAgent"

    const-string v1, "onRestore called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v1, Lorg/connectbot/util/HostDatabase;->dbLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    const-string v0, "ConnectBot.BackupAgent"

    const-string v2, "onRestore in-lock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 67
    monitor-exit v1

    .line 72
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
