.class public Lcom/rookiestudio/perfectviewer/TPDFNavigater;
.super Lcom/rookiestudio/perfectviewer/TNavigater;
.source "TPDFNavigater.java"


# instance fields
.field private FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

.field private NextFolder:Ljava/lang/String;

.field private NextFolderLister:Lcom/rookiestudio/perfectviewer/TPDFList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;-><init>()V

    .line 16
    new-instance v0, Lcom/rookiestudio/perfectviewer/TPDFList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rookiestudio/perfectviewer/TPDFList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    .line 17
    return-void
.end method


# virtual methods
.method public AddImageQueue(II)Z
    .locals 6
    .parameter "Value"
    .parameter "dir"

    .prologue
    .line 37
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FCount:I

    if-lt p1, v0, :cond_0

    .line 38
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FCount:I

    add-int/lit8 p1, v0, -0x1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v0, p1}, Lcom/rookiestudio/perfectviewer/TPDFList;->getIndex(I)I

    move-result v3

    .line 41
    .local v3, FileOrder:I
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TPDFList;->CurrentFolder:Ljava/lang/String;

    const-string v2, ""

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TImageCache;->AddItem(Ljava/lang/String;Ljava/lang/String;III)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public First()Z
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->AddImageQueue(II)Z

    .line 165
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->First()Z

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public Last()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->AddImageQueue(II)Z

    .line 157
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Last()Z

    .line 158
    return v1
.end method

.method public Next()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 96
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v3, :cond_0

    .line 122
    :goto_0
    return v1

    .line 99
    :cond_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-ne v3, v2, :cond_1

    .line 100
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    const/4 v3, 0x2

    iput v3, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 101
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v2, v1, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 102
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 103
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowPage(Z)V

    .line 121
    :goto_1
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Next()Z

    move v1, v2

    .line 122
    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x1

    .line 106
    .local v0, AddIndex:I
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Global;->DualPageMode:Z

    if-eqz v3, :cond_2

    .line 107
    const/4 v0, 0x2

    .line 109
    :cond_2
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FIndex:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FCount:I

    if-lt v3, v4, :cond_4

    .line 111
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->AutoOpenNext:Z

    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextBook()V

    move v1, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_3
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v3, 0x7f0a004d

    const/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    goto :goto_0

    .line 119
    :cond_4
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->AddImageQueue(II)Z

    goto :goto_1
.end method

.method public NextBook()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 190
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Global;->IamBusy:Z

    if-eqz v7, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, ParentFolder:Ljava/lang/String;
    new-instance v5, Lcom/rookiestudio/perfectviewer/TFileList;

    const/4 v7, 0x4

    sget v8, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v9, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v5, v10, v7, v8, v9}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    .line 195
    .local v5, ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-virtual {v5, v4}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    .line 196
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->FindFile(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 197
    .local v0, CurrentIndex:I
    :goto_1
    invoke-virtual {v5}, Lcom/rookiestudio/perfectviewer/TFileList;->getCount()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 198
    invoke-virtual {v5, v0}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v7

    iget-object v7, v7, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    .line 199
    new-instance v7, Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-direct {v7, v10}, Lcom/rookiestudio/perfectviewer/TPDFList;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    .line 200
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/rookiestudio/perfectviewer/TPDFList;->SetFolder(Ljava/lang/String;)V

    .line 201
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TPDFList;->getCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 202
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 203
    .local v3, OldPageTransition:I
    const/4 v7, 0x0

    sput v7, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 204
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v7, :cond_2

    .line 205
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0008

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V

    .line 207
    :cond_2
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    .line 208
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/Config;->FindHistoryFile(Ljava/lang/String;)I

    move-result v2

    .line 209
    .local v2, HistoryIndex:I
    const/4 v1, 0x0

    .line 210
    .local v1, FO:I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 211
    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rookiestudio/baseclass/THistoryItem;

    .line 213
    .local v6, aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :try_start_0
    iget-object v7, v6, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 217
    .end local v6           #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {p0, v7, v1}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->SetFolder(Ljava/lang/String;I)V

    .line 218
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage2()V

    .line 219
    sput v3, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    goto/16 :goto_0

    .line 222
    .end local v1           #FO:I
    .end local v2           #HistoryIndex:I
    .end local v3           #OldPageTransition:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 214
    .restart local v1       #FO:I
    .restart local v2       #HistoryIndex:I
    .restart local v3       #OldPageTransition:I
    .restart local v6       #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public Previous()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 128
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v2, :cond_0

    .line 150
    :goto_0
    return v0

    .line 131
    :cond_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-ne v2, v3, :cond_1

    .line 132
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iput v1, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 133
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v1, v2, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 134
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v2, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 135
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v2, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowPage(Z)V

    .line 149
    :goto_1
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Previous()Z

    move v0, v1

    .line 150
    goto :goto_0

    .line 137
    :cond_1
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FIndex:I

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    .line 139
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AutoOpenNext:Z

    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->PreviousBook()V

    move v0, v1

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v2, 0x7f0a004c

    const/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    goto :goto_0

    .line 147
    :cond_3
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->AddImageQueue(II)Z

    goto :goto_1
.end method

.method public PreviousBook()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 230
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Global;->IamBusy:Z

    if-eqz v7, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, ParentFolder:Ljava/lang/String;
    new-instance v5, Lcom/rookiestudio/perfectviewer/TFileList;

    const/4 v7, 0x4

    sget v8, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v9, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v5, v10, v7, v8, v9}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    .line 235
    .local v5, ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-virtual {v5, v4}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    .line 236
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->FindFile(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 237
    .local v0, CurrentIndex:I
    :goto_1
    if-ltz v0, :cond_0

    .line 238
    invoke-virtual {v5, v0}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v7

    iget-object v7, v7, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    .line 239
    new-instance v7, Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-direct {v7, v10}, Lcom/rookiestudio/perfectviewer/TPDFList;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    .line 240
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/rookiestudio/perfectviewer/TPDFList;->SetFolder(Ljava/lang/String;)V

    .line 241
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TPDFList;->getCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 242
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 243
    .local v3, OldPageTransition:I
    const/4 v7, 0x0

    sput v7, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 244
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v7, :cond_2

    .line 245
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v10, 0x7f0a0008

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V

    .line 247
    :cond_2
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    .line 248
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/Config;->FindHistoryFile(Ljava/lang/String;)I

    move-result v2

    .line 249
    .local v2, HistoryIndex:I
    const/4 v1, 0x0

    .line 250
    .local v1, FO:I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 251
    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rookiestudio/baseclass/THistoryItem;

    .line 253
    .local v6, aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :try_start_0
    iget-object v7, v6, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    .end local v6           #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {p0, v7, v1}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->SetFolder(Ljava/lang/String;I)V

    .line 258
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage2()V

    .line 259
    sput v3, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    goto/16 :goto_0

    .line 262
    .end local v1           #FO:I
    .end local v2           #HistoryIndex:I
    .end local v3           #OldPageTransition:I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 254
    .restart local v1       #FO:I
    .restart local v2       #HistoryIndex:I
    .restart local v3       #OldPageTransition:I
    .restart local v6       #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public ScrollNext()Z
    .locals 3

    .prologue
    .line 172
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollForward(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->Next()Z

    .line 175
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ScrollPrevious()Z
    .locals 3

    .prologue
    .line 181
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollBackward(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->Previous()Z

    .line 184
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public SetFolder(Ljava/lang/String;I)V
    .locals 1
    .parameter "FolderName"
    .parameter "StartIndex"

    .prologue
    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FIndex:I

    .line 22
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TPDFList;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v0, p1}, Lcom/rookiestudio/perfectviewer/TPDFList;->SetFolder(Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TPDFList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FCount:I

    .line 26
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FCount:I

    if-nez v0, :cond_1

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->CurrentFolderName:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->AddImageQueue(II)Z

    goto :goto_0
.end method

.method public SetIndex(II)Z
    .locals 9
    .parameter "Value"
    .parameter "dir"

    .prologue
    const/4 v3, 0x0

    .line 48
    iget v4, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FCount:I

    if-ge p1, v4, :cond_0

    if-gez p1, :cond_1

    .line 49
    :cond_0
    iget v4, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FCount:I

    add-int/lit8 p1, v4, -0x1

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v4, p1}, Lcom/rookiestudio/perfectviewer/TPDFList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    .line 62
    .local v1, aFile:Lcom/rookiestudio/baseclass/TFileData;
    sget v4, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 63
    sget v4, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 64
    sget v4, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 65
    :cond_2
    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v4, :cond_3

    .line 66
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v6, 0x7f0a000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v3}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    .line 69
    :cond_3
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    invoke-virtual {v4, p1}, Lcom/rookiestudio/perfectviewer/TPDFList;->getIndex(I)I

    move-result v0

    .line 72
    .local v0, FileOrder:I
    :try_start_0
    sget-object v5, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :try_start_1
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v6, v4, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :try_start_2
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TPDFList;

    iget-object v7, v7, Lcom/rookiestudio/perfectviewer/TPDFList;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Lcom/rookiestudio/perfectviewer/TImageCache;->FindCacheImage(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TBitmap;

    move-result-object v4

    sput-object v4, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 75
    iget-object v4, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    iput-object v4, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->CurrentFileName:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    .line 77
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->CurrentFolderName:Ljava/lang/String;

    sput-object v4, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    .line 79
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateBitmap()V

    .line 81
    invoke-super {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TNavigater;->SetIndex(II)Z

    .line 82
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v7, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoMode:I

    invoke-virtual {p0, v7}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->GetInfoStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageInfoStr(Ljava/lang/String;)V

    .line 83
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v7, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderMode:I

    invoke-virtual {p0, v7}, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->GetInfoStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageHeaderStr(Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->CurrentFolderName:Ljava/lang/String;

    add-int/lit8 v7, p1, 0x1

    iget v8, p0, Lcom/rookiestudio/perfectviewer/TPDFNavigater;->FCount:I

    invoke-static {v4, p1, v7, v8}, Lcom/rookiestudio/perfectviewer/TUtility;->DoSaveHistory(Ljava/lang/String;III)V

    .line 73
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 73
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 72
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0
.end method
