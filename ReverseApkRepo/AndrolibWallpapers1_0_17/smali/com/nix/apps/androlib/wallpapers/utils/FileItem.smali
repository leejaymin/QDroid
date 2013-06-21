.class public Lcom/nix/apps/androlib/wallpapers/utils/FileItem;
.super Ljava/lang/Object;
.source "FileItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nix/apps/androlib/wallpapers/utils/FileItem$enumFileType;
    }
.end annotation


# instance fields
.field public fileName:Ljava/lang/String;

.field public fileType:Lcom/nix/apps/androlib/wallpapers/utils/FileItem$enumFileType;

.field public folder:Ljava/lang/String;

.field public lastModified:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->folder:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->fileName:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/utils/FileItem$enumFileType;->jpg:Lcom/nix/apps/androlib/wallpapers/utils/FileItem$enumFileType;

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->fileType:Lcom/nix/apps/androlib/wallpapers/utils/FileItem$enumFileType;

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nix/apps/androlib/wallpapers/utils/FileItem;->lastModified:J

    .line 5
    return-void
.end method
