.class Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;
.super Ljava/lang/Thread;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/SanityCheckRootTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SanityCheckThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/stericson/RootTools/SanityCheckRootTools;


# direct methods
.method public constructor <init>(Lcom/stericson/RootTools/SanityCheckRootTools;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/RootTools/SanityCheckRootTools;

    .line 99
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 100
    iput-object p3, p0, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    return-void
.end method

.method private visualUpdate(ILjava/lang/String;)V
    .locals 3
    .parameter "action"
    .parameter "text"

    .prologue
    .line 344
    iget-object v2, p0, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 345
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    const-string v2, "text"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 349
    iget-object v2, p0, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 104
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 118
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    const/4 v13, 0x4

    const-string v14, "Testing Find Binary"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v8

    .line 130
    .local v8, result:Z
    const/4 v13, 0x3

    const-string v14, "[ Checking Root ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 131
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 133
    const/4 v13, 0x4

    const-string v14, "Testing file exists"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 134
    const/4 v13, 0x3

    const-string v14, "[ Checking Exists() ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 135
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/system/sbin/["

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 137
    const/4 v13, 0x4

    const-string v14, "Testing Is Access Given"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v8

    .line 139
    const/4 v13, 0x3

    const-string v14, "[ Checking for Access to Root ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 140
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 142
    const/4 v13, 0x4

    const-string v14, "Testing Remount"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 143
    const-string v13, "/system"

    const-string v14, "rw"

    invoke-static {v13, v14}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 144
    const/4 v13, 0x3

    const-string v14, "[ Remounting System as RW ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 145
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 147
    const/4 v13, 0x4

    const-string v14, "Testing CheckUtil"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 148
    const/4 v13, 0x3

    const-string v14, "[ Checking busybox is setup ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 149
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "busybox"

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 151
    const/4 v13, 0x4

    const-string v14, "Testing getBusyBoxVersion"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 152
    const/4 v13, 0x3

    const-string v14, "[ Checking busybox version ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 153
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getBusyBoxVersion()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 157
    const/4 v13, 0x4

    :try_start_1
    const-string v14, "Testing fixUtils"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 158
    const/4 v13, 0x3

    const-string v14, "[ Checking Utils ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 159
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "ls"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "rm"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "ln"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const-string v17, "dd"

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "chmod"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const-string v17, "mount"

    aput-object v17, v15, v16

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->fixUtils([Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :goto_1
    const/4 v13, 0x4

    :try_start_2
    const-string v14, "Testing getSymlink"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 170
    const/4 v13, 0x3

    const-string v14, "[ Checking [[ for symlink ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 171
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/system/bin/[["

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    :goto_2
    const/4 v13, 0x4

    const-string v14, "Testing getInode"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 180
    const/4 v13, 0x3

    const-string v14, "[ Checking Inodes ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 181
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/system/bin/busybox"

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 183
    const/4 v13, 0x4

    const-string v14, "Testing GetBusyBoxapplets"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 187
    const/4 v13, 0x3

    :try_start_3
    const-string v14, "[ Getting all available Busybox applets ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getBusyBoxApplets()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v14

    if-nez v14, :cond_1

    .line 200
    :goto_4
    const/4 v13, 0x4

    const-string v14, "Testing getFilePermissionsSymlinks"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 201
    const-string v13, "/system/bin/busybox"

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/Permissions;

    move-result-object v6

    .line 202
    .local v6, permissions:Lcom/stericson/RootTools/Permissions;
    const/4 v13, 0x3

    const-string v14, "[ Checking busybox permissions and symlink ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 204
    if-eqz v6, :cond_2

    .line 206
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Symlink: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/RootTools/Permissions;->getSymlink()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 207
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Group Permissions: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/RootTools/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 208
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Owner Permissions: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/RootTools/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 209
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Permissions: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/RootTools/Permissions;->getPermissions()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 210
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Type: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/RootTools/Permissions;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 211
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "User Permissions: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stericson/RootTools/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 218
    :goto_5
    const/4 v13, 0x4

    const-string v14, "Testing df"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 219
    const-string v13, "/data"

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getSpace(Ljava/lang/String;)J

    move-result-wide v11

    .line 220
    .local v11, spaceValue:J
    const/4 v13, 0x3

    const-string v14, "[ Checking /data partition size]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 221
    const/4 v13, 0x3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "k\n\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 223
    const/4 v13, 0x4

    const-string v14, "Testing sendShell() w/ return array"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 225
    :try_start_4
    const-string v13, "ls /"

    sget v14, Lcom/stericson/RootTools/InternalVariables;->timeout:I

    invoke-static {v13, v14}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 226
    .local v7, response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x3

    const-string v14, "[ Listing of / (passing a List)]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 227
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/stericson/RootTools/RootToolsException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_6

    move-result v14

    if-nez v14, :cond_3

    .line 241
    const/4 v13, 0x4

    const-string v14, "Testing sendShell() w/ callbacks"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 243
    const/4 v13, 0x3

    :try_start_5
    const-string v14, "\n[ Listing of / (callback)]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 244
    new-instance v9, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$1;-><init>(Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;)V

    .line 266
    .local v9, result2:Lcom/stericson/RootTools/RootTools$Result;
    const-string v13, "ls /"

    sget v14, Lcom/stericson/RootTools/InternalVariables;->timeout:I

    invoke-static {v13, v9, v14}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;Lcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    .line 267
    invoke-virtual {v9}, Lcom/stericson/RootTools/RootTools$Result;->getError()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lcom/stericson/RootTools/RootToolsException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_9

    move-result v13

    if-eqz v13, :cond_4

    .line 341
    .end local v7           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #result2:Lcom/stericson/RootTools/RootTools$Result;
    :cond_0
    :goto_7
    return-void

    .line 120
    .end local v6           #permissions:Lcom/stericson/RootTools/Permissions;
    .end local v8           #result:Z
    .end local v11           #spaceValue:J
    :catch_0
    move-exception v4

    .line 123
    .local v4, e2:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 161
    .end local v4           #e2:Ljava/io/IOException;
    .restart local v8       #result:Z
    :catch_1
    move-exception v4

    .line 164
    .local v4, e2:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 173
    .end local v4           #e2:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 176
    .restart local v4       #e2:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 188
    .end local v4           #e2:Ljava/lang/Exception;
    :cond_1
    :try_start_6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    .local v1, applet:Ljava/lang/String;
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 194
    .end local v1           #applet:Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 197
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 215
    .end local v3           #e1:Ljava/lang/Exception;
    .restart local v6       #permissions:Lcom/stericson/RootTools/Permissions;
    :cond_2
    const/4 v13, 0x3

    const-string v14, "Permissions == null k\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 227
    .restart local v7       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11       #spaceValue:J
    :cond_3
    :try_start_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 228
    .local v5, line:Ljava/lang/String;
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/stericson/RootTools/RootToolsException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_6

    .line 230
    .end local v5           #line:Ljava/lang/String;
    .end local v7           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_4
    move-exception v2

    .line 231
    .local v2, e:Ljava/io/IOException;
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ERROR: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto :goto_7

    .line 233
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 234
    .local v2, e:Lcom/stericson/RootTools/RootToolsException;
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DEV-DEFINED ERROR: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 236
    .end local v2           #e:Lcom/stericson/RootTools/RootToolsException;
    :catch_6
    move-exception v2

    .line 237
    .local v2, e:Ljava/util/concurrent/TimeoutException;
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Timeout.. "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 269
    .end local v2           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v7       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_7
    move-exception v2

    .line 270
    .local v2, e:Ljava/io/IOException;
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ERROR: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 272
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 273
    .local v2, e:Lcom/stericson/RootTools/RootToolsException;
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DEV-DEFINED ERROR: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 275
    .end local v2           #e:Lcom/stericson/RootTools/RootToolsException;
    :catch_9
    move-exception v2

    .line 276
    .local v2, e:Ljava/util/concurrent/TimeoutException;
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Timeout.. "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 280
    .end local v2           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v9       #result2:Lcom/stericson/RootTools/RootTools$Result;
    :cond_4
    const/4 v13, 0x4

    const-string v14, "Testing sendShell() for multiple commands"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 282
    const/4 v13, 0x3

    :try_start_8
    const-string v14, "\n[ ps + ls + date / (callback)]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 283
    new-instance v10, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$2;-><init>(Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Lcom/stericson/RootTools/RootToolsException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_d

    .line 307
    .end local v9           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .local v10, result2:Lcom/stericson/RootTools/RootTools$Result;
    const/4 v13, 0x6

    :try_start_9
    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 308
    const-string v15, "echo \"* PS:\""

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 309
    const-string v15, "ps"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 310
    const-string v15, "echo \"* LS:\""

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 311
    const-string v15, "ls"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    .line 312
    const-string v15, "echo \"* DATE:\""

    aput-object v15, v13, v14

    const/4 v14, 0x5

    .line 313
    const-string v15, "date"

    aput-object v15, v13, v14

    .line 314
    const/4 v14, 0x0

    .line 316
    sget v15, Lcom/stericson/RootTools/InternalVariables;->timeout:I

    .line 306
    invoke-static {v13, v14, v10, v15}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    .line 318
    invoke-virtual {v10}, Lcom/stericson/RootTools/RootTools$Result;->getError()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Lcom/stericson/RootTools/RootToolsException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_e

    move-result v13

    if-nez v13, :cond_0

    .line 329
    .end local v10           #result2:Lcom/stericson/RootTools/RootTools$Result;
    :goto_8
    const/4 v13, 0x4

    const-string v14, "All tests complete."

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 330
    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 334
    :try_start_a
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_7

    .line 336
    :catch_a
    move-exception v2

    .line 339
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 320
    .end local v2           #e:Ljava/io/IOException;
    .restart local v9       #result2:Lcom/stericson/RootTools/RootTools$Result;
    :catch_b
    move-exception v2

    .line 321
    .restart local v2       #e:Ljava/io/IOException;
    :goto_9
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ERROR: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto :goto_8

    .line 322
    .end local v2           #e:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 323
    .local v2, e:Lcom/stericson/RootTools/RootToolsException;
    :goto_a
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DEV-DEFINED ERROR: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto :goto_8

    .line 324
    .end local v2           #e:Lcom/stericson/RootTools/RootToolsException;
    :catch_d
    move-exception v2

    .line 325
    .local v2, e:Ljava/util/concurrent/TimeoutException;
    :goto_b
    const/4 v13, 0x2

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Timeout.. "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 324
    .end local v2           #e:Ljava/util/concurrent/TimeoutException;
    .end local v9           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v10       #result2:Lcom/stericson/RootTools/RootTools$Result;
    :catch_e
    move-exception v2

    move-object v9, v10

    .end local v10           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v9       #result2:Lcom/stericson/RootTools/RootTools$Result;
    goto :goto_b

    .line 322
    .end local v9           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v10       #result2:Lcom/stericson/RootTools/RootTools$Result;
    :catch_f
    move-exception v2

    move-object v9, v10

    .end local v10           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v9       #result2:Lcom/stericson/RootTools/RootTools$Result;
    goto :goto_a

    .line 320
    .end local v9           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v10       #result2:Lcom/stericson/RootTools/RootTools$Result;
    :catch_10
    move-exception v2

    move-object v9, v10

    .end local v10           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v9       #result2:Lcom/stericson/RootTools/RootTools$Result;
    goto :goto_9
.end method
