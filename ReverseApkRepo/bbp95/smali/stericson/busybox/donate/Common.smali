.class public Lstericson/busybox/donate/Common;
.super Ljava/lang/Object;
.source "Common.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "file"
    .parameter "outputPath"

    .prologue
    .line 29
    const-string v5, ""

    .line 30
    .local v5, realFile:Ljava/lang/String;
    const-string v6, "toolbox"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 32
    const-string v5, "toolbox.png"

    .line 55
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 56
    .local v2, in:Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 58
    .local v4, out:Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 61
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-gtz v3, :cond_6

    .line 65
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 66
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 67
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .end local v0           #buf:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 34
    :cond_0
    const-string v6, "reboot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    const-string v5, "reboot.png"

    goto :goto_0

    .line 38
    :cond_1
    const-string v6, "1.20.2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 39
    const-string v5, "busybox1.20.2.png"

    goto :goto_0

    .line 41
    :cond_2
    const-string v6, "1.20.1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 42
    const-string v5, "busybox1.20.1.png"

    goto :goto_0

    .line 44
    :cond_3
    const-string v6, "1.20.0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 45
    const-string v5, "busybox20_0.png"

    goto :goto_0

    .line 47
    :cond_4
    const-string v6, "1.19.4"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 48
    const-string v5, "busybox19_4.png"

    goto :goto_0

    .line 51
    :cond_5
    const-string v5, "busybox19_3.png"

    goto :goto_0

    .line 62
    .restart local v0       #buf:[B
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #len:I
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_6
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 68
    .end local v0           #buf:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 70
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 71
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static findBusyBoxLocations(ZZ)[Ljava/lang/String;
    .locals 11
    .parameter "includeSymlinks"
    .parameter "single"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 118
    if-eqz p1, :cond_3

    .line 120
    invoke-static {}, Lstericson/busybox/donate/Common;->getSingleBusyBoxPath()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, single_location:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 124
    const-string v6, "system/bin"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v6

    invoke-virtual {v6, v9}, Lstericson/busybox/donate/App;->setPathPosition(I)V

    .line 133
    :cond_0
    :goto_0
    new-array v1, v10, [Ljava/lang/String;

    aput-object v3, v1, v9

    .line 174
    .end local v3           #single_location:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 128
    .restart local v3       #single_location:Ljava/lang/String;
    :cond_2
    const-string v6, "system/xbin"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v6

    invoke-virtual {v6, v10}, Lstericson/busybox/donate/App;->setPathPosition(I)V

    goto :goto_0

    .line 137
    .end local v3           #single_location:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 140
    .local v5, tmpSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getPath()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_5

    .line 154
    :goto_3
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 156
    .local v1, locations:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 157
    .local v0, i:I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 162
    array-length v6, v1

    if-lez v6, :cond_1

    .line 164
    aget-object v6, v1, v9

    const-string v7, "system/bin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 166
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v6

    invoke-virtual {v6, v9}, Lstericson/busybox/donate/App;->setPathPosition(I)V

    goto :goto_1

    .line 140
    .end local v0           #i:I
    .end local v1           #locations:[Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, paths:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/busybox"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/busybox"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, symlink:Ljava/lang/String;
    if-nez p0, :cond_6

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 146
    :cond_6
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 150
    .end local v2           #paths:Ljava/lang/String;
    .end local v4           #symlink:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_3

    .line 157
    .restart local v0       #i:I
    .restart local v1       #locations:[Ljava/lang/String;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .restart local v2       #paths:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 168
    .end local v2           #paths:Ljava/lang/String;
    :cond_8
    aget-object v6, v1, v9

    const-string v7, "system/xbin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v6

    invoke-virtual {v6, v10}, Lstericson/busybox/donate/App;->setPathPosition(I)V

    goto/16 :goto_1
.end method

.method public static getSingleBusyBoxPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v3, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lstericson/busybox/donate/Common$1;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "busybox which busybox"

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6, v3}, Lstericson/busybox/donate/Common$1;-><init>(I[Ljava/lang/String;Ljava/util/List;)V

    .line 94
    .local v0, command:Lcom/stericson/RootTools/Command;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stericson/RootTools/Command;->waitForFinish()V

    .line 96
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, path:Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const-string v5, "busybox"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 112
    .end local v0           #command:Lcom/stericson/RootTools/Command;
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method
