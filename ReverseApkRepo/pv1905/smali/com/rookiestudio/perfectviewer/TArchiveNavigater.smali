.class public Lcom/rookiestudio/perfectviewer/TArchiveNavigater;
.super Lcom/rookiestudio/perfectviewer/TNavigater;
.source "TArchiveNavigater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadNextBook;,
        Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;
    }
.end annotation


# instance fields
.field public CurrentPassword:Ljava/lang/String;

.field private FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

.field public NeedPassword:Z

.field private NextFolder:Ljava/lang/String;

.field private NextFolderLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentPassword:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    const/4 v1, 0x0

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;Lcom/rookiestudio/perfectviewer/TArchiveFiles;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    return-void
.end method

.method static synthetic access$2(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    return-object v0
.end method

.method static synthetic access$3(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;Lcom/rookiestudio/perfectviewer/TArchiveFiles;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    return-void
.end method


# virtual methods
.method public AddImageQueue(II)Z
    .locals 6
    .parameter "Value"
    .parameter "dir"

    .prologue
    .line 48
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FCount:I

    if-lt p1, v0, :cond_0

    .line 49
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FCount:I

    add-int/lit8 p1, v0, -0x1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v3

    .line 52
    .local v3, FileOrder:I
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CurrentFolder:Ljava/lang/String;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentPassword:Ljava/lang/String;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TImageCache;->AddItem(Ljava/lang/String;Ljava/lang/String;III)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public First()Z
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->AddImageQueue(II)Z

    .line 176
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->First()Z

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public Last()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 167
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->AddImageQueue(II)Z

    .line 168
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Last()Z

    .line 169
    return v1
.end method

.method public Next()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 107
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v3, :cond_0

    .line 133
    :goto_0
    return v1

    .line 110
    :cond_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-ne v3, v2, :cond_1

    .line 111
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    const/4 v3, 0x2

    iput v3, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 112
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v2, v1, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 113
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 114
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowPage(Z)V

    .line 132
    :goto_1
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Next()Z

    move v1, v2

    .line 133
    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x1

    .line 117
    .local v0, AddIndex:I
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Global;->DualPageMode:Z

    if-eqz v3, :cond_2

    .line 118
    const/4 v0, 0x2

    .line 120
    :cond_2
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FIndex:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FCount:I

    if-lt v3, v4, :cond_4

    .line 122
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->AutoOpenNext:Z

    if-eqz v3, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NextBook()V

    move v1, v2

    .line 124
    goto :goto_0

    .line 126
    :cond_3
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v3, 0x7f0a004d

    const/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    goto :goto_0

    .line 130
    :cond_4
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->AddImageQueue(II)Z

    goto :goto_1
.end method

.method public NextBook()V
    .locals 4

    .prologue
    .line 260
    new-instance v0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadNextBook;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadNextBook;-><init>(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadNextBook;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadNextBook;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 261
    return-void
.end method

.method public Previous()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 139
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v2, :cond_0

    .line 161
    :goto_0
    return v0

    .line 142
    :cond_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-ne v2, v3, :cond_1

    .line 143
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iput v1, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 144
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v1, v2, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 145
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v2, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 146
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v2, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowPage(Z)V

    .line 160
    :goto_1
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Previous()Z

    move v0, v1

    .line 161
    goto :goto_0

    .line 148
    :cond_1
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FIndex:I

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    .line 150
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AutoOpenNext:Z

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->PreviousBook()V

    move v0, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_2
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v2, 0x7f0a004c

    const/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    goto :goto_0

    .line 158
    :cond_3
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->AddImageQueue(II)Z

    goto :goto_1
.end method

.method public PreviousBook()V
    .locals 4

    .prologue
    .line 324
    new-instance v0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;-><init>(Lcom/rookiestudio/perfectviewer/TArchiveNavigater;Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater$TThreadPreviousBook;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    return-void
.end method

.method public ScrollNext()Z
    .locals 3

    .prologue
    .line 183
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollForward(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->Next()Z

    .line 186
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ScrollPrevious()Z
    .locals 3

    .prologue
    .line 192
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollBackward(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->Previous()Z

    .line 195
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public SetFolder(Ljava/lang/String;I)Z
    .locals 4
    .parameter "FolderName"
    .parameter "StartIndex"

    .prologue
    const/4 v0, 0x1

    .line 29
    const/4 v1, -0x1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FIndex:I

    .line 30
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentPassword:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SetFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    iget-boolean v1, v1, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->NeedPassword:Z

    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NeedPassword:Z

    .line 34
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getCount()I

    move-result v1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FCount:I

    .line 35
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FCount:I

    if-nez v1, :cond_1

    .line 36
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 38
    :cond_1
    const-string v1, "perfectviewer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetFolder "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentFolderName:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p2, v0}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->AddImageQueue(II)Z

    goto :goto_0
.end method

.method public SetIndex(II)Z
    .locals 9
    .parameter "Value"
    .parameter "dir"

    .prologue
    const/4 v3, 0x0

    .line 59
    iget v4, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FCount:I

    if-ge p1, v4, :cond_0

    if-gez p1, :cond_1

    .line 60
    :cond_0
    iget v4, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FCount:I

    add-int/lit8 p1, v4, -0x1

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v4, p1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    .line 73
    .local v1, aFile:Lcom/rookiestudio/baseclass/TFileData;
    sget v4, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 74
    sget v4, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 75
    sget v4, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 76
    :cond_2
    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v4, :cond_3

    .line 77
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v6, 0x7f0a000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v3}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    .line 80
    :cond_3
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    invoke-virtual {v4, p1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v0

    .line 83
    .local v0, FileOrder:I
    :try_start_0
    sget-object v5, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v6, v4, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :try_start_2
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    iget-object v7, v7, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Lcom/rookiestudio/perfectviewer/TImageCache;->FindCacheImage(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TBitmap;

    move-result-object v4

    sput-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 86
    iget-object v4, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    iput-object v4, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentFileName:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    .line 88
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentFolderName:Ljava/lang/String;

    sput-object v4, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    .line 90
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateBitmap()V

    .line 92
    invoke-super {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TNavigater;->SetIndex(II)Z

    .line 93
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v7, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoMode:I

    invoke-virtual {p0, v7}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->GetInfoStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageInfoStr(Ljava/lang/String;)V

    .line 94
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v7, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderMode:I

    invoke-virtual {p0, v7}, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->GetInfoStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageHeaderStr(Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->CurrentFolderName:Ljava/lang/String;

    add-int/lit8 v7, p1, 0x1

    iget v8, p0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->FCount:I

    invoke-static {v4, p1, v7, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->DoSaveHistory(Ljava/lang/String;III)V

    .line 84
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 84
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 83
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method
