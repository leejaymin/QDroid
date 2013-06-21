.class public Lcom/rookiestudio/perfectviewer/TFileList$FolderOnlySmbFilter;
.super Ljava/lang/Object;
.source "TFileList.java"

# interfaces
.implements Ljcifs/smb/SmbFileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderOnlySmbFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljcifs/smb/SmbFile;)Z
    .locals 1
    .parameter "pathname"

    .prologue
    .line 339
    :try_start_0
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    .line 342
    :catch_0
    move-exception v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
