.class public Lstericson/busybox/donate/jobs/AppletInformation;
.super Ljava/lang/Object;
.source "AppletInformation.java"


# instance fields
.field private dbService:Lstericson/busybox/donate/services/DBService;

.field private item:Lstericson/busybox/donate/domain/Item;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lstericson/busybox/donate/domain/Item;",
            ">;"
        }
    .end annotation
.end field

.field private storagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/jobs/AppletInformation;->storagePath:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private findApplet(Ljava/lang/String;)V
    .locals 14
    .parameter "applet"

    .prologue
    .line 116
    invoke-static {p1}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 119
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setFound(Z)V

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v5, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v8, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    sget-object v8, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 133
    :goto_0
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 135
    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Lstericson/busybox/donate/domain/Item;->setAppletPath(Ljava/lang/String;)V

    .line 138
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v9}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, symlink:Ljava/lang/String;
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8, v7}, Lstericson/busybox/donate/domain/Item;->setSymlinkedTo(Ljava/lang/String;)V

    .line 142
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 144
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "busybox"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 146
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setInode(Ljava/lang/String;)V

    .line 148
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lstericson/busybox/donate/jobs/AppletInformation;->storagePath:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v10}, Lstericson/busybox/donate/domain/Item;->getInode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 150
    const-string v8, "busybox"

    const-string v9, "/busybox"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v10}, Lstericson/busybox/donate/domain/Item;->getInode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lstericson/busybox/donate/jobs/AppletInformation;->makeBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setRecommend(Z)V

    .line 192
    :cond_3
    :goto_1
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v9}, Lstericson/busybox/donate/domain/Item;->getRecommend()Z

    move-result v9

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setOverwrite(Z)V

    .line 194
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8}, Lstericson/busybox/donate/domain/Item;->getDescription()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 198
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v6, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lstericson/busybox/donate/jobs/AppletInformation$1;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "busybox "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " --help"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v1, p0, v8, v9, v6}, Lstericson/busybox/donate/jobs/AppletInformation$1;-><init>(Lstericson/busybox/donate/jobs/AppletInformation;I[Ljava/lang/String;Ljava/util/List;)V

    .line 212
    .local v1, command:Lcom/stericson/RootTools/Command;
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    .line 214
    const-string v0, ""

    .line 216
    .local v0, appletInfo:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_c

    .line 224
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8, v0}, Lstericson/busybox/donate/domain/Item;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0           #appletInfo:Ljava/lang/String;
    .end local v1           #command:Lcom/stericson/RootTools/Command;
    .end local v5           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #symlink:Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->dbService:Lstericson/busybox/donate/services/DBService;

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/services/DBService;->insertOrUpdateRow(Lstericson/busybox/donate/domain/Item;)Z

    .line 237
    return-void

    .line 124
    .restart local v5       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 126
    .local v4, path:Ljava/lang/String;
    const-string v9, "/system/bin"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 128
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8, v4}, Lstericson/busybox/donate/domain/Item;->setAppletPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    .end local v4           #path:Ljava/lang/String;
    .restart local v7       #symlink:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setRecommend(Z)V

    goto :goto_1

    .line 160
    :cond_8
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v9}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, inode:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lstericson/busybox/donate/Common;->findBusyBoxLocations(ZZ)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_4
    if-lt v8, v10, :cond_9

    .line 178
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v9}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setBackupFilePath(Ljava/lang/String;)V

    .line 179
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setRecommend(Z)V

    .line 181
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8}, Lstericson/busybox/donate/domain/Item;->isIshardlink()Z

    move-result v8

    if-nez v8, :cond_3

    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->storagePath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 185
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v9}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v10}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lstericson/busybox/donate/jobs/AppletInformation;->makeBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :cond_9
    aget-object v4, v9, v8

    .line 165
    .restart local v4       #path:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "busybox"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 167
    iget-object v11, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lstericson/busybox/donate/domain/Item;->setIshardlink(Z)V

    .line 168
    iget-object v11, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "busybox"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lstericson/busybox/donate/domain/Item;->setBackupHardlink(Ljava/lang/String;)V

    .line 169
    iget-object v11, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v11, v3}, Lstericson/busybox/donate/domain/Item;->setInode(Ljava/lang/String;)V

    .line 171
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lstericson/busybox/donate/jobs/AppletInformation;->storagePath:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_a

    .line 173
    const-string v11, "busybox"

    invoke-virtual {p0, v11, v4, v3}, Lstericson/busybox/donate/jobs/AppletInformation;->makeBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 190
    .end local v3           #inode:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setRecommend(Z)V

    goto/16 :goto_1

    .line 216
    .restart local v0       #appletInfo:Ljava/lang/String;
    .restart local v1       #command:Lcom/stericson/RootTools/Command;
    .restart local v6       #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    .local v2, info:Ljava/lang/String;
    const-string v9, "not found"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "multi-call binary"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_2

    .line 231
    .end local v0           #appletInfo:Ljava/lang/String;
    .end local v1           #command:Lcom/stericson/RootTools/Command;
    .end local v2           #info:Ljava/lang/String;
    .end local v5           #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #symlink:Ljava/lang/String;
    :cond_d
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setFound(Z)V

    .line 232
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setSymlinkedTo(Ljava/lang/String;)V

    .line 233
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/domain/Item;->setRecommend(Z)V

    goto/16 :goto_3

    .line 226
    .restart local v5       #paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #symlink:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_3
.end method


# virtual methods
.method public closeDb()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lstericson/busybox/donate/jobs/AppletInformation;->dbService:Lstericson/busybox/donate/services/DBService;

    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    iget-object v0, p0, Lstericson/busybox/donate/jobs/AppletInformation;->dbService:Lstericson/busybox/donate/services/DBService;

    invoke-virtual {v0}, Lstericson/busybox/donate/services/DBService;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public extractResources(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "outputPath"

    .prologue
    .line 303
    const-string v5, "ls.png"

    .line 306
    .local v5, realFile:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 307
    .local v2, in:Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 309
    .local v4, out:Ljava/io/OutputStream;
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 312
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-gtz v3, :cond_0

    .line 316
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 317
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 318
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 324
    .end local v0           #buf:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 313
    .restart local v0       #buf:[B
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #len:I
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 319
    .end local v0           #buf:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 321
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 322
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getAppletInformation(Landroid/content/Context;ZLstericson/busybox/donate/jobs/GatherAppletInformation;[Ljava/lang/String;)Lstericson/busybox/donate/domain/Result;
    .locals 13
    .parameter "context"
    .parameter "updating"
    .parameter "gai"
    .parameter "applets"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lstericson/busybox/donate/jobs/AppletInformation;->storagePath:Ljava/lang/String;

    .line 36
    new-instance v6, Lstericson/busybox/donate/services/DBService;

    invoke-direct {v6, p1}, Lstericson/busybox/donate/services/DBService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lstericson/busybox/donate/jobs/AppletInformation;->dbService:Lstericson/busybox/donate/services/DBService;

    .line 37
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lstericson/busybox/donate/jobs/AppletInformation;->itemList:Ljava/util/List;

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/stericson-ls"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lstericson/busybox/donate/jobs/AppletInformation;->extractResources(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "dd"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "chmod"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->fixUtils([Ljava/lang/String;)Z

    .line 43
    new-instance v2, Lcom/stericson/RootTools/CommandCapture;

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "dd if="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/stericson-ls of=/data/local/ls"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "chmod 0777 /data/local"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "chmod 0755 /data/local/ls"

    aput-object v9, v7, v8

    invoke-direct {v2, v6, v7}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 44
    .local v2, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .end local v2           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    iget-object v6, p0, Lstericson/busybox/donate/jobs/AppletInformation;->dbService:Lstericson/busybox/donate/services/DBService;

    invoke-virtual {v6}, Lstericson/busybox/donate/services/DBService;->isReady()Z

    move-result v6

    if-nez v6, :cond_0

    .line 51
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lstericson/busybox/donate/Common;->findBusyBoxLocations(ZZ)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v8, :cond_1

    .line 60
    :cond_0
    move-object/from16 v0, p4

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-lt v6, v7, :cond_3

    .line 106
    iget-object v6, p0, Lstericson/busybox/donate/jobs/AppletInformation;->dbService:Lstericson/busybox/donate/services/DBService;

    invoke-virtual {v6}, Lstericson/busybox/donate/services/DBService;->getApplets()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lstericson/busybox/donate/jobs/AppletInformation;->itemList:Ljava/util/List;

    .line 108
    new-instance v4, Lstericson/busybox/donate/domain/Result;

    invoke-direct {v4}, Lstericson/busybox/donate/domain/Result;-><init>()V

    .line 109
    .local v4, result:Lstericson/busybox/donate/domain/Result;
    iget-object v6, p0, Lstericson/busybox/donate/jobs/AppletInformation;->itemList:Ljava/util/List;

    invoke-virtual {v4, v6}, Lstericson/busybox/donate/domain/Result;->setItemList(Ljava/util/List;)V

    .line 110
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lstericson/busybox/donate/domain/Result;->setSuccess(Z)V

    .line 111
    .end local v4           #result:Lstericson/busybox/donate/domain/Result;
    :goto_3
    return-object v4

    .line 51
    :cond_1
    aget-object v3, v7, v6

    .line 53
    .local v3, path:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/jobs/AppletInformation;->storagePath:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "busybox"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 55
    const-string v9, "busybox"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "busybox"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v3, v10}, Lstericson/busybox/donate/jobs/AppletInformation;->makeBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 60
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    aget-object v1, p4, v6

    .line 62
    .local v1, applet:Ljava/lang/String;
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lstericson/busybox/donate/jobs/GatherAppletInformation;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 64
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/AppletInformation;->closeDb()V

    .line 65
    const/4 v4, 0x0

    goto :goto_3

    .line 68
    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_5

    .line 69
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lstericson/busybox/donate/jobs/GatherAppletInformation;->publishCurrentProgress([Ljava/lang/Object;)V

    .line 71
    :cond_5
    if-nez p2, :cond_6

    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->dbService:Lstericson/busybox/donate/services/DBService;

    invoke-virtual {v8}, Lstericson/busybox/donate/services/DBService;->isReady()Z

    move-result v8

    if-nez v8, :cond_7

    .line 73
    :cond_6
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->dbService:Lstericson/busybox/donate/services/DBService;

    invoke-virtual {v8, v1}, Lstericson/busybox/donate/services/DBService;->checkForApplet(Ljava/lang/String;)Lstericson/busybox/donate/domain/Item;

    move-result-object v8

    iput-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    .line 75
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    if-nez v8, :cond_8

    .line 79
    :try_start_1
    new-instance v8, Lstericson/busybox/donate/domain/Item;

    invoke-direct {v8}, Lstericson/busybox/donate/domain/Item;-><init>()V

    iput-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    .line 81
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8, v1}, Lstericson/busybox/donate/domain/Item;->setApplet(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, v1}, Lstericson/busybox/donate/jobs/AppletInformation;->findApplet(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 89
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v9}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v9}, Lstericson/busybox/donate/domain/Item;->getAppletPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, symlink:Ljava/lang/String;
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 94
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8, v5}, Lstericson/busybox/donate/domain/Item;->setSymlinkedTo(Ljava/lang/String;)V

    .line 95
    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->dbService:Lstericson/busybox/donate/services/DBService;

    iget-object v9, p0, Lstericson/busybox/donate/jobs/AppletInformation;->item:Lstericson/busybox/donate/domain/Item;

    invoke-virtual {v8, v9}, Lstericson/busybox/donate/services/DBService;->insertOrUpdateRow(Lstericson/busybox/donate/domain/Item;)Z

    goto :goto_4

    .line 100
    .end local v5           #symlink:Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v1}, Lstericson/busybox/donate/jobs/AppletInformation;->findApplet(Ljava/lang/String;)V

    goto :goto_4

    .line 85
    :catch_0
    move-exception v8

    goto :goto_4

    .line 46
    .end local v1           #applet:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public makeBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "applet"
    .parameter "path"
    .parameter "name"

    .prologue
    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 245
    .local v4, os:Ljava/io/OutputStream;
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 246
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 250
    .local v1, bytes_read:I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 251
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->storagePath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 253
    .end local v4           #os:Ljava/io/OutputStream;
    .local v5, os:Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 264
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 270
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v5

    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    move-object v2, v3

    .line 275
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_2
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lstericson/busybox/donate/jobs/AppletInformation;->storagePath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    const-string v6, "Backup Created!"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 283
    :goto_3
    return-void

    .line 255
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :cond_0
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v5, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v6

    move-object v4, v5

    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    move-object v2, v3

    .line 264
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 270
    :goto_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 272
    :catch_1
    move-exception v6

    goto :goto_2

    .line 261
    :catchall_0
    move-exception v6

    .line 264
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 270
    :goto_7
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 273
    :goto_8
    throw v6

    .line 272
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 281
    :cond_1
    const-string v6, "Backup Creation Failed!"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 266
    :catch_3
    move-exception v6

    goto :goto_5

    :catch_4
    move-exception v7

    goto :goto_7

    .line 272
    :catch_5
    move-exception v7

    goto :goto_8

    .line 266
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :catch_6
    move-exception v6

    goto :goto_1

    .line 261
    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_6

    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_6

    .line 259
    :catch_7
    move-exception v6

    goto :goto_4

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_8
    move-exception v6

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_4
.end method
