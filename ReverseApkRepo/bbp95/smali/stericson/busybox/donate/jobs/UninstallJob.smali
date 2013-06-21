.class public Lstericson/busybox/donate/jobs/UninstallJob;
.super Lstericson/busybox/donate/jobs/AsyncJob;
.source "UninstallJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lstericson/busybox/donate/jobs/AsyncJob",
        "<",
        "Lstericson/busybox/donate/domain/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Lstericson/busybox/donate/Activity/MainActivity;

.field private toolbox:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 25
    const v0, 0x7f0b0041

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lstericson/busybox/donate/jobs/AsyncJob;-><init>(Landroid/app/Activity;IZZ)V

    .line 21
    const-string v0, "/data/local/toolbox"

    iput-object v0, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lstericson/busybox/donate/jobs/UninstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    .line 27
    return-void
.end method


# virtual methods
.method bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lstericson/busybox/donate/domain/Result;

    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/UninstallJob;->callback(Lstericson/busybox/donate/domain/Result;)V

    return-void
.end method

.method callback(Lstericson/busybox/donate/domain/Result;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 233
    iget-object v0, p0, Lstericson/busybox/donate/jobs/UninstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v0, p1}, Lstericson/busybox/donate/Activity/MainActivity;->uninstallDone(Lstericson/busybox/donate/domain/Result;)V

    .line 234
    return-void
.end method

.method bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/UninstallJob;->handle()Lstericson/busybox/donate/domain/Result;

    move-result-object v0

    return-object v0
.end method

.method handle()Lstericson/busybox/donate/domain/Result;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 33
    new-instance v5, Lstericson/busybox/donate/domain/Result;

    invoke-direct {v5}, Lstericson/busybox/donate/domain/Result;-><init>()V

    .line 34
    .local v5, result:Lstericson/busybox/donate/domain/Result;
    invoke-virtual {v5, v13}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    .line 36
    new-array v7, v13, [Ljava/lang/Object;

    const-string v8, "Checking System..."

    aput-object v8, v7, v12

    invoke-virtual {p0, v7}, Lstericson/busybox/donate/jobs/UninstallJob;->publishProgress([Ljava/lang/Object;)V

    .line 42
    const/4 v7, 0x6

    :try_start_0
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "ls"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "rm"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "ln"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "dd"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "chmod"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "mount"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->fixUtils([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 44
    iget-object v7, p0, Lstericson/busybox/donate/jobs/UninstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v8, 0x7f0b0030

    invoke-virtual {v7, v8}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lstericson/busybox/donate/domain/Result;->setError(Ljava/lang/String;)V

    .line 45
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-object v5

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/Exception;
    iget-object v7, p0, Lstericson/busybox/donate/jobs/UninstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v8, 0x7f0b0030

    invoke-virtual {v7, v8}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lstericson/busybox/donate/domain/Result;->setError(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v5, v12}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    goto :goto_0

    .line 55
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const-string v7, "/system"

    const-string v8, "rw"

    invoke-static {v7, v8}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 57
    new-array v7, v13, [Ljava/lang/Object;

    const-string v8, "preparing system..."

    aput-object v8, v7, v12

    invoke-virtual {p0, v7}, Lstericson/busybox/donate/jobs/UninstallJob;->publishProgress([Ljava/lang/Object;)V

    .line 59
    const-string v7, "/system/bin/sh"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, symlink:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "busybox"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 63
    const-string v7, "Busybox could not be uninstalled because /system/bin/sh is symlinked to it! \n\n Removing Busybox WILL bootloop your device!"

    invoke-virtual {v5, v7}, Lstericson/busybox/donate/domain/Result;->setError(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5, v12}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "bash"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    const-string v7, "/system/bin/bash"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "busybox"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 73
    const-string v7, "Busybox could not be uninstalled because /system/bin/bash is symlinked to it! \n\n Removing Busybox WILL bootloop your device!"

    invoke-virtual {v5, v7}, Lstericson/busybox/donate/domain/Result;->setError(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, v12}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v7, p0, Lstericson/busybox/donate/jobs/UninstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const-string v8, "toolbox"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/toolbox-stericson"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lstericson/busybox/donate/Common;->extractResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_1
    new-instance v1, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 84
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dd if="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/toolbox-stericson of="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 85
    const-string v10, "chmod 0755 /data/local/toolbox"

    .line 83
    aput-object v10, v8, v9

    invoke-direct {v1, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 86
    .local v1, command:Lcom/stericson/RootTools/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 91
    .end local v1           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1
    const-string v7, "toolbox"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    new-array v7, v13, [Ljava/lang/Object;

    const-string v8, "Creating required symlinks..."

    aput-object v8, v7, v12

    invoke-virtual {p0, v7}, Lstericson/busybox/donate/jobs/UninstallJob;->publishProgress([Ljava/lang/Object;)V

    .line 97
    :try_start_2
    new-instance v1, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x27

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 98
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/chmod"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 99
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/chmod"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 100
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/chmod"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/ls"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 102
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/ls"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/ls"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/cat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/cat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    .line 106
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/cat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x9

    .line 107
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/ln"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/ln"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xb

    .line 109
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/ln"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xc

    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/df"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xd

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/df"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xe

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/df"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xf

    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/mount"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x10

    .line 114
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/mount"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x11

    .line 115
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/mount"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x12

    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/rm"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x13

    .line 117
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/rm"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x14

    .line 118
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/rm"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x15

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/ps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x16

    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/ps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x17

    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/ps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x18

    .line 122
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/mkdir"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x19

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/mkdir"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x1a

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/mkdir"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x1b

    .line 125
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/kill"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x1c

    .line 126
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/kill"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x1d

    .line 127
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/kill"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x1e

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/id"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x1f

    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/id"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x20

    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/id"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x21

    .line 131
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/dd"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x22

    .line 132
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/dd"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x23

    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/dd"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x24

    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/bin/insmod"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x25

    .line 135
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " rm /system/xbin/insmod"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x26

    .line 136
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " ln -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " /system/bin/insmod"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 97
    aput-object v10, v8, v9

    invoke-direct {v1, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 137
    .restart local v1       #command:Lcom/stericson/RootTools/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    .end local v1           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_2
    const/4 v7, 0x6

    :try_start_3
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "ls"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "rm"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "ln"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "dd"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "chmod"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "mount"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->fixUtils([Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v7

    if-eqz v7, :cond_4

    .line 149
    :try_start_4
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getPath()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 180
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Removing BusyBox!"

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lstericson/busybox/donate/jobs/UninstallJob;->publishProgress([Ljava/lang/Object;)V

    .line 182
    const-string v7, "busybox"

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    .line 184
    sget-object v7, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v8

    if-nez v8, :cond_a

    .line 205
    :cond_4
    :goto_5
    new-instance v7, Ljava/io/File;

    const-string v8, "/system/bin/reboot"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 207
    iget-object v7, p0, Lstericson/busybox/donate/jobs/UninstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const-string v8, "reboot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/reboot-stericson"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lstericson/busybox/donate/Common;->extractResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :try_start_5
    new-instance v1, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 212
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " dd if="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/reboot-stericson of=/system/bin/reboot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 213
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " chmod 0755 /system/bin/reboot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 211
    aput-object v10, v8, v9

    invoke-direct {v1, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 214
    .restart local v1       #command:Lcom/stericson/RootTools/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 216
    .end local v1           #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 139
    :catch_2
    move-exception v2

    .line 140
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 149
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    .local v4, path:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "checking for symlinks in "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lstericson/busybox/donate/jobs/UninstallJob;->publishProgress([Ljava/lang/Object;)V

    .line 153
    const-string v8, "rw"

    invoke-static {v4, v8}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 177
    const-string v8, "ro"

    invoke-static {v4, v8}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 194
    .end local v4           #path:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 195
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_5

    .line 199
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto/16 :goto_5

    .line 155
    .restart local v4       #path:Ljava/lang/String;
    :cond_7
    :try_start_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stericson/RootTools/Symlink;

    .line 157
    .local v3, link:Lcom/stericson/RootTools/Symlink;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "inspecting "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/stericson/RootTools/Symlink;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " symlinked to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/stericson/RootTools/Symlink;->getSymlinkPath()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lstericson/busybox/donate/jobs/UninstallJob;->publishProgress([Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v3}, Lcom/stericson/RootTools/Symlink;->getSymlinkPath()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "busybox"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 161
    invoke-virtual {v3}, Lcom/stericson/RootTools/Symlink;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sh"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v3}, Lcom/stericson/RootTools/Symlink;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bash"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 163
    :cond_8
    const-string v7, "Busybox could not be uninstalled because removing Busybox WILL bootloop your device!"

    invoke-virtual {v5, v7}, Lstericson/busybox/donate/domain/Result;->setError(Ljava/lang/String;)V

    .line 164
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    goto/16 :goto_0

    .line 168
    :cond_9
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "removing symlink for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/stericson/RootTools/Symlink;->getFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v9}, Lstericson/busybox/donate/jobs/UninstallJob;->publishProgress([Ljava/lang/Object;)V

    .line 170
    new-instance v1, Lcom/stericson/RootTools/CommandCapture;

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 171
    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " rm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/stericson/RootTools/Symlink;->getFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 170
    aput-object v12, v10, v11

    invoke-direct {v1, v9, v10}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 172
    .restart local v1       #command:Lcom/stericson/RootTools/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    goto/16 :goto_6

    .line 184
    .end local v1           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #link:Lcom/stericson/RootTools/Symlink;
    .end local v4           #path:Ljava/lang/String;
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, binaryPath:Ljava/lang/String;
    const-string v8, "rw"

    invoke-static {v0, v8}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    new-instance v1, Lcom/stericson/RootTools/CommandCapture;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 188
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lstericson/busybox/donate/jobs/UninstallJob;->toolbox:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " rm "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/busybox"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 187
    aput-object v11, v9, v10

    invoke-direct {v1, v8, v9}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 189
    .restart local v1       #command:Lcom/stericson/RootTools/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    .line 191
    const-string v8, "ro"

    invoke-static {v0, v8}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_4

    .line 89
    .end local v0           #binaryPath:Ljava/lang/String;
    .end local v1           #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_5
    move-exception v7

    goto/16 :goto_1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 225
    invoke-super {p0, p1}, Lstericson/busybox/donate/jobs/AsyncJob;->onProgressUpdate([Ljava/lang/Object;)V

    .line 226
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getPopupView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    .local v0, header:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lstericson/busybox/donate/jobs/UninstallJob;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b0041

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method
