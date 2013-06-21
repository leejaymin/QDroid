.class public Lstericson/busybox/donate/domain/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applet:Ljava/lang/String;

.field private appletDescription:Ljava/lang/String;

.field private appletPath:Ljava/lang/String;

.field private backupFilePath:Ljava/lang/String;

.field private backupHardlink:Ljava/lang/String;

.field private backupSymlink:Ljava/lang/String;

.field private found:Z

.field private inode:Ljava/lang/String;

.field private ishardlink:Z

.field private overwrite:Z

.field private overwriteAll:Z

.field private recommend:Z

.field private remove:Z

.field private symlinkedTo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/domain/Item;->applet:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/domain/Item;->appletPath:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/domain/Item;->symlinkedTo:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/domain/Item;->appletDescription:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/domain/Item;->backupHardlink:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/domain/Item;->backupSymlink:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/domain/Item;->backupFilePath:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lstericson/busybox/donate/domain/Item;->inode:Ljava/lang/String;

    .line 17
    iput-boolean v2, p0, Lstericson/busybox/donate/domain/Item;->overwrite:Z

    .line 18
    iput-boolean v1, p0, Lstericson/busybox/donate/domain/Item;->found:Z

    .line 19
    iput-boolean v2, p0, Lstericson/busybox/donate/domain/Item;->recommend:Z

    .line 20
    iput-boolean v1, p0, Lstericson/busybox/donate/domain/Item;->remove:Z

    .line 21
    iput-boolean v1, p0, Lstericson/busybox/donate/domain/Item;->overwriteAll:Z

    .line 22
    iput-boolean v1, p0, Lstericson/busybox/donate/domain/Item;->ishardlink:Z

    .line 5
    return-void
.end method


# virtual methods
.method public getApplet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->applet:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->applet:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getAppletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->appletPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->appletPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getBackupFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->backupFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBackupHardlink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->backupHardlink:Ljava/lang/String;

    return-object v0
.end method

.method public getBackupSymlink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->backupSymlink:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->backupSymlink:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->appletDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->appletDescription:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFound()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lstericson/busybox/donate/domain/Item;->found:Z

    return v0
.end method

.method public getInode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->inode:Ljava/lang/String;

    return-object v0
.end method

.method public getOverWrite()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lstericson/busybox/donate/domain/Item;->overwrite:Z

    return v0
.end method

.method public getOverwriteall()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lstericson/busybox/donate/domain/Item;->overwriteAll:Z

    return v0
.end method

.method public getRecommend()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lstericson/busybox/donate/domain/Item;->recommend:Z

    return v0
.end method

.method public getRemove()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lstericson/busybox/donate/domain/Item;->remove:Z

    return v0
.end method

.method public getSymlinkedTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->symlinkedTo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lstericson/busybox/donate/domain/Item;->symlinkedTo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isIshardlink()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lstericson/busybox/donate/domain/Item;->ishardlink:Z

    return v0
.end method

.method public setApplet(Ljava/lang/String;)V
    .locals 0
    .parameter "applet"

    .prologue
    .line 81
    iput-object p1, p0, Lstericson/busybox/donate/domain/Item;->applet:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setAppletPath(Ljava/lang/String;)V
    .locals 0
    .parameter "appletPath"

    .prologue
    .line 86
    iput-object p1, p0, Lstericson/busybox/donate/domain/Item;->appletPath:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setBackupFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "backupFilePath"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lstericson/busybox/donate/domain/Item;->backupFilePath:Ljava/lang/String;

    .line 62
    return-void

    .line 61
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setBackupHardlink(Ljava/lang/String;)V
    .locals 0
    .parameter "backupHardlink"

    .prologue
    .line 41
    iput-object p1, p0, Lstericson/busybox/donate/domain/Item;->backupHardlink:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setBackupSymlink(Ljava/lang/String;)V
    .locals 0
    .parameter "backupSymlink"

    .prologue
    .line 71
    iput-object p1, p0, Lstericson/busybox/donate/domain/Item;->backupSymlink:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 116
    iput-object p1, p0, Lstericson/busybox/donate/domain/Item;->appletDescription:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setFound(Z)V
    .locals 0
    .parameter "found"

    .prologue
    .line 101
    iput-boolean p1, p0, Lstericson/busybox/donate/domain/Item;->found:Z

    .line 102
    return-void
.end method

.method public setInode(Ljava/lang/String;)V
    .locals 0
    .parameter "inode"

    .prologue
    .line 31
    iput-object p1, p0, Lstericson/busybox/donate/domain/Item;->inode:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setIshardlink(Z)V
    .locals 0
    .parameter "ishardlink"

    .prologue
    .line 51
    iput-boolean p1, p0, Lstericson/busybox/donate/domain/Item;->ishardlink:Z

    .line 52
    return-void
.end method

.method public setOverwrite(Z)V
    .locals 0
    .parameter "overwrite"

    .prologue
    .line 106
    iput-boolean p1, p0, Lstericson/busybox/donate/domain/Item;->overwrite:Z

    .line 107
    return-void
.end method

.method public setOverwriteAll(Z)V
    .locals 0
    .parameter "overwriteAll"

    .prologue
    .line 76
    iput-boolean p1, p0, Lstericson/busybox/donate/domain/Item;->overwriteAll:Z

    .line 77
    return-void
.end method

.method public setRecommend(Z)V
    .locals 0
    .parameter "recommend"

    .prologue
    .line 96
    iput-boolean p1, p0, Lstericson/busybox/donate/domain/Item;->recommend:Z

    .line 97
    return-void
.end method

.method public setRemove(Z)V
    .locals 0
    .parameter "remove"

    .prologue
    .line 111
    iput-boolean p1, p0, Lstericson/busybox/donate/domain/Item;->remove:Z

    .line 112
    return-void
.end method

.method public setSymlinkedTo(Ljava/lang/String;)V
    .locals 0
    .parameter "symlinkedTo"

    .prologue
    .line 91
    iput-object p1, p0, Lstericson/busybox/donate/domain/Item;->symlinkedTo:Ljava/lang/String;

    .line 92
    return-void
.end method
