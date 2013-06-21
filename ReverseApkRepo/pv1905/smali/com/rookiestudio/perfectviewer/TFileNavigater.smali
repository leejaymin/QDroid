.class public Lcom/rookiestudio/perfectviewer/TFileNavigater;
.super Lcom/rookiestudio/perfectviewer/TNavigater;
.source "TFileNavigater.java"


# instance fields
.field public FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

.field private NextFolder:Ljava/lang/String;

.field private NextFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 17
    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;-><init>()V

    .line 18
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList;

    const/4 v1, 0x0

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    .line 19
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    iput-boolean v4, v0, Lcom/rookiestudio/perfectviewer/TFileList;->ShowFolder:Z

    .line 20
    return-void
.end method


# virtual methods
.method public AddImageQueue(II)Z
    .locals 2
    .parameter "Value"
    .parameter "dir"

    .prologue
    .line 96
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FCount:I

    if-lt p1, v0, :cond_0

    .line 97
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FCount:I

    add-int/lit8 p1, v0, -0x1

    .line 100
    :cond_0
    :try_start_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v1, p1}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/rookiestudio/perfectviewer/TImageCache;->AddItem(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public First()Z
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->AddImageQueue(II)Z

    .line 188
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->First()Z

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public Last()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->AddImageQueue(II)Z

    .line 177
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Last()Z

    .line 178
    return v1
.end method

.method public Next()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 110
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v3, :cond_0

    .line 137
    :goto_0
    return v1

    .line 113
    :cond_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-ne v3, v2, :cond_1

    .line 114
    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    const/4 v3, 0x2

    iput v3, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 115
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v2, v1, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 116
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 117
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowPage(Z)V

    .line 136
    :goto_1
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Next()Z

    move v1, v2

    .line 137
    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x1

    .line 120
    .local v0, AddIndex:I
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Global;->DualPageMode:Z

    if-eqz v3, :cond_2

    .line 121
    const/4 v0, 0x2

    .line 123
    :cond_2
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FIndex:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FCount:I

    if-lt v3, v4, :cond_4

    .line 125
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->AutoOpenNext:Z

    if-eqz v3, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextBook()V

    move v1, v2

    .line 127
    goto :goto_0

    .line 129
    :cond_3
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v3, 0x7f0a004d

    const/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    goto :goto_0

    .line 133
    :cond_4
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->AddImageQueue(II)Z

    goto :goto_1
.end method

.method public NextBook()V
    .locals 12

    .prologue
    .line 212
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Global;->IamBusy:Z

    if-nez v7, :cond_0

    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-nez v7, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 217
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 220
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, ParentFolder:Ljava/lang/String;
    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileList;

    const/4 v7, 0x0

    const/4 v8, 0x2

    sget v9, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v10, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    .line 222
    .local v4, ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-virtual {v4, v3}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    .line 223
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->FindFile(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 224
    .local v0, CurrentIndex:I
    :goto_1
    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TFileList;->getCount()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 225
    invoke-virtual {v4, v0}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v7

    iget-object v7, v7, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    .line 226
    new-instance v7, Lcom/rookiestudio/perfectviewer/TFileList;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v11, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;

    .line 227
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    .line 228
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TFileList;->getCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 229
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 230
    .local v2, OldPageTransition:I
    const/4 v7, 0x0

    sput v7, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 231
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v7, :cond_2

    .line 232
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

    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    .line 235
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/Config;->FindHistoryFile(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, HistoryIndex:I
    const-string v5, ""

    .line 237
    .local v5, StartFile:Ljava/lang/String;
    const-string v7, "perfectviewer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HistoryIndex:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 239
    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rookiestudio/baseclass/THistoryItem;

    .line 240
    .local v6, aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    const-string v7, "perfectviewer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "StartFile:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v6           #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_3
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {p0, v7, v5}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->SetFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage2()V

    .line 245
    sput v2, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 250
    .end local v0           #CurrentIndex:I
    .end local v1           #HistoryIndex:I
    .end local v2           #OldPageTransition:I
    .end local v3           #ParentFolder:Ljava/lang/String;
    .end local v4           #ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    .end local v5           #StartFile:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 248
    .restart local v0       #CurrentIndex:I
    .restart local v3       #ParentFolder:Ljava/lang/String;
    .restart local v4       #ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public Previous()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 144
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    if-nez v2, :cond_0

    .line 167
    :goto_0
    return v0

    .line 147
    :cond_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-ne v2, v3, :cond_1

    .line 148
    sget-object v2, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iput v1, v2, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 149
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v1, v2, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 150
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v2, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 151
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v2, v0}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowPage(Z)V

    .line 166
    :goto_1
    invoke-super {p0}, Lcom/rookiestudio/perfectviewer/TNavigater;->Previous()Z

    move v0, v1

    .line 167
    goto :goto_0

    .line 153
    :cond_1
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FIndex:I

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    .line 155
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AutoOpenNext:Z

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->PreviousBook()V

    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_2
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const v2, 0x7f0a004c

    const/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(II)V

    goto :goto_0

    .line 163
    :cond_3
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->AddImageQueue(II)Z

    goto :goto_1
.end method

.method public PreviousBook()V
    .locals 12

    .prologue
    .line 258
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Global;->IamBusy:Z

    if-nez v7, :cond_0

    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-nez v7, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 263
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 266
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, ParentFolder:Ljava/lang/String;
    new-instance v4, Lcom/rookiestudio/perfectviewer/TFileList;

    const/4 v7, 0x0

    const/4 v8, 0x2

    sget v9, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v10, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    .line 268
    .local v4, ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    invoke-virtual {v4, v3}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    .line 269
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->FindFile(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 270
    .local v0, CurrentIndex:I
    :goto_1
    if-ltz v0, :cond_0

    .line 271
    invoke-virtual {v4, v0}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v7

    iget-object v7, v7, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    .line 272
    new-instance v7, Lcom/rookiestudio/perfectviewer/TFileList;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    sget v11, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;

    .line 273
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    .line 274
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TFileList;->getCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 275
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 276
    .local v2, OldPageTransition:I
    const/4 v7, 0x0

    sput v7, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 277
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v7, :cond_2

    .line 278
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

    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;)V

    .line 280
    :cond_2
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;

    iput-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    .line 281
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/Config;->FindHistoryFile(Ljava/lang/String;)I

    move-result v1

    .line 282
    .local v1, HistoryIndex:I
    const-string v5, ""

    .line 283
    .local v5, StartFile:Ljava/lang/String;
    const-string v7, "perfectviewer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HistoryIndex:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 285
    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rookiestudio/baseclass/THistoryItem;

    .line 286
    .local v6, aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/rookiestudio/baseclass/THistoryItem;->FileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    const-string v7, "perfectviewer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "StartFile:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v6           #aFileItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_3
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->NextFolder:Ljava/lang/String;

    invoke-virtual {p0, v7, v5}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->SetFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage2()V

    .line 291
    sput v2, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 296
    .end local v0           #CurrentIndex:I
    .end local v1           #HistoryIndex:I
    .end local v2           #OldPageTransition:I
    .end local v3           #ParentFolder:Ljava/lang/String;
    .end local v4           #ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    .end local v5           #StartFile:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 294
    .restart local v0       #CurrentIndex:I
    .restart local v3       #ParentFolder:Ljava/lang/String;
    .restart local v4       #ParentFolderLister:Lcom/rookiestudio/perfectviewer/TFileList;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1
.end method

.method public ScrollNext()Z
    .locals 3

    .prologue
    .line 194
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollForward(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->Next()Z

    .line 197
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ScrollPrevious()Z
    .locals 3

    .prologue
    .line 203
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ScrollBackward(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->Previous()Z

    .line 206
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public SetFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "FolderName"
    .parameter "StartFileName"

    .prologue
    const/4 v4, -0x1

    .line 23
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FIndex:I

    .line 24
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TFileList;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v1, p1}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TFileList;->getCount()I

    move-result v1

    iput v1, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FCount:I

    .line 28
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FCount:I

    if-nez v1, :cond_1

    .line 42
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v1, "perfectviewer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetFolder "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, TmpIndex:I
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v1, p2}, Lcom/rookiestudio/perfectviewer/TFileList;->FindFile(Ljava/lang/String;)I

    move-result v0

    .line 36
    if-ne v0, v4, :cond_2

    .line 37
    const/4 v0, 0x0

    .line 40
    :cond_2
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    .line 41
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->AddImageQueue(II)Z

    goto :goto_0
.end method

.method public SetIndex(II)Z
    .locals 8
    .parameter "Value"
    .parameter "dir"

    .prologue
    const/4 v2, 0x0

    .line 46
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FCount:I

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    .line 47
    :cond_0
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FCount:I

    add-int/lit8 p1, v3, -0x1

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v3, p1}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    .line 53
    .local v0, aFile:Lcom/rookiestudio/baseclass/TFileData;
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 54
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 55
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->Resampling:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 56
    :cond_2
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->ShowLoadingMessage:Z

    if-eqz v3, :cond_3

    .line 57
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowMessage(Ljava/lang/String;IZ)V

    .line 72
    :cond_3
    :try_start_0
    sget-object v4, Lcom/rookiestudio/perfectviewer/TImageCache;->ImageCacheList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :try_start_1
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v5, v3, Lcom/rookiestudio/perfectviewer/TViewer;->DrawBuf:[I

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :try_start_2
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FileLister:Lcom/rookiestudio/perfectviewer/TFileList;

    invoke-virtual {v6, p1}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v6

    iget-object v6, v6, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Lcom/rookiestudio/perfectviewer/TImageCache;->FindCacheImage(Ljava/lang/String;I)Lcom/rookiestudio/perfectviewer/TBitmap;

    move-result-object v3

    sput-object v3, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 75
    iget-object v3, v0, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFileName:Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFileName:Ljava/lang/String;

    sput-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFolderName:Ljava/lang/String;

    sput-object v3, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    .line 78
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateBitmap()V

    .line 79
    invoke-super {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TNavigater;->SetIndex(II)Z

    .line 80
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v6, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoMode:I

    invoke-virtual {p0, v6}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->GetInfoStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageInfoStr(Ljava/lang/String;)V

    .line 81
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v6, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderMode:I

    invoke-virtual {p0, v6}, Lcom/rookiestudio/perfectviewer/TFileNavigater;->GetInfoStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageHeaderStr(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->CurrentFileName:Ljava/lang/String;

    add-int/lit8 v6, p1, 0x1

    iget v7, p0, Lcom/rookiestudio/perfectviewer/TFileNavigater;->FCount:I

    invoke-static {v3, v6, v7}, Lcom/rookiestudio/perfectviewer/TUtility;->DoSaveHistory(Ljava/lang/String;II)V

    .line 73
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 73
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3

    .line 72
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method
