.class public Lcom/rookiestudio/perfectviewer/TFileList;
.super Landroid/widget/BaseAdapter;
.source "TFileList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TFileList$ArchiveFileFilter;,
        Lcom/rookiestudio/perfectviewer/TFileList$ArchiveFileSmbFilter;,
        Lcom/rookiestudio/perfectviewer/TFileList$FileDateComparator;,
        Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;,
        Lcom/rookiestudio/perfectviewer/TFileList$FileSizeComparator;,
        Lcom/rookiestudio/perfectviewer/TFileList$FolderOnlyFilter;,
        Lcom/rookiestudio/perfectviewer/TFileList$FolderOnlySmbFilter;,
        Lcom/rookiestudio/perfectviewer/TFileList$PDFFileFilter;,
        Lcom/rookiestudio/perfectviewer/TFileList$PDFFileSmbFilter;,
        Lcom/rookiestudio/perfectviewer/TFileList$PagesFileFilter;,
        Lcom/rookiestudio/perfectviewer/TFileList$PagesFileSmbFilter;,
        Lcom/rookiestudio/perfectviewer/TFileList$SupportFileFilter;,
        Lcom/rookiestudio/perfectviewer/TFileList$SupportFileSmbFilter;
    }
.end annotation


# static fields
.field public static final ListMode_Archive:I = 0x3

.field public static final ListMode_Folder:I = 0x2

.field public static final ListMode_PDF:I = 0x4

.field public static final ListMode_Pages:I = 0x0

.field public static final ListMode_Supported:I = 0x1


# instance fields
.field public CurrentFolder:Ljava/lang/String;

.field public FilterType:I

.field public ListFileData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/baseclass/TFileData;",
            ">;"
        }
    .end annotation
.end field

.field public ShowFolder:Z

.field public SortDirection:I

.field public SortType:I

.field public TotalSize:J

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 3
    .parameter "c"
    .parameter "ListMode"
    .parameter "Sort1"
    .parameter "Sort2"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ShowFolder:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->TotalSize:J

    .line 40
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TFileList;->FilterType:I

    .line 41
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    .line 42
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    .line 47
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    .line 48
    iput p4, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    .line 49
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileList;->context:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    .line 51
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TFileList;->FilterType:I

    .line 52
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    return-void
.end method

.method public CreateThumb(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 1
    .parameter "FileName"
    .parameter "FileIcon"
    .parameter "ImageInfo"
    .parameter "DefaultIcon"

    .prologue
    .line 500
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    if-nez v0, :cond_1

    .line 501
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindThumbCache(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public DoSort(II)V
    .locals 3
    .parameter "Sort1"
    .parameter "Sort2"

    .prologue
    .line 211
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    .line 212
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    .line 213
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    new-instance v1, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;

    invoke-direct {v1}, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    invoke-direct {v1, v2}, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 217
    :cond_2
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileList$FileDateComparator;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    invoke-direct {v1, v2}, Lcom/rookiestudio/perfectviewer/TFileList$FileDateComparator;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 219
    :cond_3
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileList$FileSizeComparator;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    invoke-direct {v1, v2}, Lcom/rookiestudio/perfectviewer/TFileList$FileSizeComparator;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public FindFile(Ljava/lang/String;)I
    .locals 5
    .parameter "FileName"

    .prologue
    .line 90
    const/4 v1, -0x1

    .line 91
    .local v1, Result:I
    const/4 v0, 0x0

    .line 92
    .local v0, Index:I
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    :goto_1
    return v1

    .line 92
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rookiestudio/baseclass/TFileData;

    .line 93
    .local v2, aFile:Lcom/rookiestudio/baseclass/TFileData;
    iget-object v4, v2, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    move v1, v0

    .line 95
    goto :goto_1

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public GetFilter()Ljava/io/FileFilter;
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->FilterType:I

    packed-switch v0, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$PagesFileFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$PagesFileFilter;-><init>()V

    goto :goto_0

    .line 60
    :pswitch_1
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$SupportFileFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$SupportFileFilter;-><init>()V

    goto :goto_0

    .line 62
    :pswitch_2
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$FolderOnlyFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$FolderOnlyFilter;-><init>()V

    goto :goto_0

    .line 64
    :pswitch_3
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$ArchiveFileFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$ArchiveFileFilter;-><init>()V

    goto :goto_0

    .line 66
    :pswitch_4
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$PDFFileFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$PDFFileFilter;-><init>()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public GetSmbFilter()Ljcifs/smb/SmbFileFilter;
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->FilterType:I

    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 75
    :pswitch_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$PagesFileSmbFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$PagesFileSmbFilter;-><init>()V

    goto :goto_0

    .line 77
    :pswitch_1
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$SupportFileSmbFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$SupportFileSmbFilter;-><init>()V

    goto :goto_0

    .line 79
    :pswitch_2
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$FolderOnlySmbFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$FolderOnlySmbFilter;-><init>()V

    goto :goto_0

    .line 81
    :pswitch_3
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$ArchiveFileSmbFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$ArchiveFileSmbFilter;-><init>()V

    goto :goto_0

    .line 83
    :pswitch_4
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFileList$PDFFileSmbFilter;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TFileList$PDFFileSmbFilter;-><init>()V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public SetFolder(Ljava/lang/String;)Z
    .locals 11
    .parameter "FolderName"

    .prologue
    const/4 v5, 0x0

    .line 152
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileList;->CurrentFolder:Ljava/lang/String;

    .line 157
    :goto_0
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileList;->CurrentFolder:Ljava/lang/String;

    const-string v7, "smb://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    :try_start_0
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileList;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolderSmb(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 204
    :goto_1
    return v5

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileList;->CurrentFolder:Ljava/lang/String;

    goto :goto_0

    .line 160
    :catch_0
    move-exception v4

    .line 161
    .local v4, e:Ljava/net/SocketException;
    goto :goto_1

    .line 164
    .end local v4           #e:Ljava/net/SocketException;
    :cond_1
    const/4 v0, 0x0

    check-cast v0, [Ljava/io/File;

    .line 167
    .local v0, AllFile:[Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileList;->CurrentFolder:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileList;->GetFilter()Ljava/io/FileFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 173
    :goto_2
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/rookiestudio/perfectviewer/TFileList;->TotalSize:J

    .line 174
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 175
    if-eqz v0, :cond_2

    .line 176
    array-length v6, v0

    :goto_3
    if-lt v5, v6, :cond_3

    .line 203
    :cond_2
    iget v5, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    iget v6, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    invoke-virtual {p0, v5, v6}, Lcom/rookiestudio/perfectviewer/TFileList;->DoSort(II)V

    .line 204
    const/4 v5, 0x1

    goto :goto_1

    .line 176
    :cond_3
    aget-object v2, v0, v5

    .line 178
    .local v2, aFile:Ljava/io/File;
    iget-boolean v7, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ShowFolder:Z

    if-nez v7, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 176
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 181
    :cond_5
    sget-boolean v7, Lcom/rookiestudio/perfectviewer/Config;->ShowHideFiles:Z

    if-nez v7, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v7

    if-nez v7, :cond_4

    .line 184
    :cond_6
    new-instance v1, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v1}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 185
    .local v1, NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 187
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FolderName:Ljava/lang/String;

    .line 188
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    .line 189
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    iput-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    .line 190
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    iput-boolean v7, v1, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 191
    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v7

    iput-boolean v7, v1, Lcom/rookiestudio/baseclass/TFileData;->IsHidden:Z

    .line 192
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 193
    :cond_7
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    iget-object v8, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/rookiestudio/perfectviewer/THistoryManager;->FindBookHistory(Ljava/lang/String;)Lcom/rookiestudio/baseclass/THistoryItem;

    move-result-object v3

    .line 194
    .local v3, aHistoryItem:Lcom/rookiestudio/baseclass/THistoryItem;
    if-eqz v3, :cond_8

    .line 195
    iget v7, v3, Lcom/rookiestudio/baseclass/THistoryItem;->PageNo:I

    iput v7, v1, Lcom/rookiestudio/baseclass/TFileData;->ReadPage:I

    .line 196
    iget v7, v3, Lcom/rookiestudio/baseclass/THistoryItem;->TotalPage:I

    iput v7, v1, Lcom/rookiestudio/baseclass/TFileData;->TotalPage:I

    .line 199
    .end local v3           #aHistoryItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_8
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-wide v7, p0, Lcom/rookiestudio/perfectviewer/TFileList;->TotalSize:J

    iget-wide v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/rookiestudio/perfectviewer/TFileList;->TotalSize:J

    goto :goto_4

    .line 168
    .end local v1           #NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    .end local v2           #aFile:Ljava/io/File;
    :catch_1
    move-exception v6

    goto/16 :goto_2
.end method

.method public SetFolderSmb(Ljava/lang/String;)Z
    .locals 13
    .parameter "FolderName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 104
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/rookiestudio/perfectviewer/TFileList;->TotalSize:J

    .line 105
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v0, 0x0

    check-cast v0, [Ljcifs/smb/SmbFile;

    .line 108
    .local v0, AllFile:[Ljcifs/smb/SmbFile;
    :try_start_0
    const-string v7, "perfectviewer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SetFolderSmb:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v4, Ljcifs/smb/SmbFile;

    invoke-direct {v4, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 110
    .local v4, aSmbFile:Ljcifs/smb/SmbFile;
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFileList;->GetSmbFilter()Ljcifs/smb/SmbFileFilter;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljcifs/smb/SmbFile;->listFiles(Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    array-length v8, v0

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_1

    .line 141
    :cond_0
    iget v7, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    iget v8, p0, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    invoke-virtual {p0, v7, v8}, Lcom/rookiestudio/perfectviewer/TFileList;->DoSort(II)V

    .line 147
    const/4 v6, 0x1

    .end local v4           #aSmbFile:Ljcifs/smb/SmbFile;
    :goto_1
    return v6

    .line 112
    .restart local v4       #aSmbFile:Ljcifs/smb/SmbFile;
    :cond_1
    aget-object v2, v0, v7

    .line 113
    .local v2, aFile:Ljcifs/smb/SmbFile;
    iget-boolean v9, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ShowFolder:Z

    if-nez v9, :cond_3

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 112
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 116
    :cond_3
    sget-boolean v9, Lcom/rookiestudio/perfectviewer/Config;->ShowHideFiles:Z

    if-nez v9, :cond_4

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isHidden()Z

    move-result v9

    if-nez v9, :cond_2

    .line 119
    :cond_4
    new-instance v1, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v1}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 120
    .local v1, NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    .line 121
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 122
    iget-object v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 123
    iget-object v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 125
    :cond_5
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FolderName:Ljava/lang/String;

    .line 126
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    .line 127
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    iput-object v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    .line 128
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v9

    iput-boolean v9, v1, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 129
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isHidden()Z

    move-result v9

    iput-boolean v9, v1, Lcom/rookiestudio/baseclass/TFileData;->IsHidden:Z

    .line 130
    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-static {v9}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-static {v9}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 131
    :cond_6
    sget-object v9, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    iget-object v10, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/rookiestudio/perfectviewer/THistoryManager;->FindBookHistory(Ljava/lang/String;)Lcom/rookiestudio/baseclass/THistoryItem;

    move-result-object v3

    .line 132
    .local v3, aHistoryItem:Lcom/rookiestudio/baseclass/THistoryItem;
    if-eqz v3, :cond_7

    .line 133
    iget v9, v3, Lcom/rookiestudio/baseclass/THistoryItem;->PageNo:I

    iput v9, v1, Lcom/rookiestudio/baseclass/TFileData;->ReadPage:I

    .line 134
    iget v9, v3, Lcom/rookiestudio/baseclass/THistoryItem;->TotalPage:I

    iput v9, v1, Lcom/rookiestudio/baseclass/TFileData;->TotalPage:I

    .line 137
    .end local v3           #aHistoryItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_7
    iget-object v9, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-wide v9, p0, Lcom/rookiestudio/perfectviewer/TFileList;->TotalSize:J

    iget-wide v11, v1, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/rookiestudio/perfectviewer/TFileList;->TotalSize:J
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 142
    .end local v1           #NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    .end local v2           #aFile:Ljcifs/smb/SmbFile;
    .end local v4           #aSmbFile:Ljcifs/smb/SmbFile;
    :catch_0
    move-exception v5

    .line 143
    .local v5, e:Ljava/net/MalformedURLException;
    goto/16 :goto_1

    .line 144
    .end local v5           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v5

    .line 145
    .local v5, e:Ljcifs/smb/SmbException;
    goto/16 :goto_1
.end method

.method public ShowOverlayIcon(IILandroid/widget/ImageView;)V
    .locals 7
    .parameter "ReadPage"
    .parameter "TotalPage"
    .parameter "OverlayIcon"

    .prologue
    .line 615
    if-eqz p3, :cond_0

    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->ShowReadMark:Z

    if-nez v3, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    if-gtz p1, :cond_2

    if-gez p1, :cond_5

    .line 619
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    if-ge p1, p2, :cond_3

    if-gez p1, :cond_4

    .line 621
    :cond_3
    const v3, 0x7f02007e

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 623
    :cond_4
    int-to-double v3, p1

    int-to-double v5, p2

    div-double v0, v3, v5

    .line 624
    .local v0, p:D
    const-wide/high16 v3, 0x4022

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 625
    .local v2, p2:I
    const v3, 0x7f020080

    add-int/2addr v3, v2

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 628
    .end local v0           #p:D
    .end local v2           #p2:I
    :cond_5
    const/4 v3, 0x4

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x0

    .line 482
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/rookiestudio/baseclass/TFileData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 489
    const/4 v0, 0x0

    .line 491
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TFileData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 496
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 517
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rookiestudio/perfectviewer/TFileList;->context:Landroid/content/Context;

    if-nez v13, :cond_0

    move-object/from16 v13, p2

    .line 610
    :goto_0
    return-object v13

    .line 520
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p1

    if-lt v0, v13, :cond_1

    .line 521
    const/4 v13, 0x0

    goto :goto_0

    .line 523
    :cond_1
    const-string v3, ""

    .line 524
    .local v3, FileName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 526
    .local v11, entry:Lcom/rookiestudio/baseclass/TFileData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rookiestudio/perfectviewer/TFileList;->ListFileData:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/rookiestudio/baseclass/TFileData;

    move-object v11, v0

    .line 527
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 531
    if-nez p2, :cond_2

    .line 532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/rookiestudio/perfectviewer/TFileList;->context:Landroid/content/Context;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 533
    .local v12, inflater:Landroid/view/LayoutInflater;
    sget v13, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    if-nez v13, :cond_8

    .line 534
    const v13, 0x7f030012

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 541
    .end local v12           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    :goto_1
    const v13, 0x7f0c003b

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 542
    .local v2, FileIcon:Landroid/widget/ImageView;
    const v13, 0x7f0c003c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 543
    .local v7, OverlayIcon:Landroid/widget/ImageView;
    const v13, 0x7f0c003e

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 544
    .local v6, ImageInfo:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 545
    const-string v13, ""

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_3
    iget-boolean v13, v11, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    if-eqz v13, :cond_a

    .line 548
    iget v13, v11, Lcom/rookiestudio/baseclass/TFileData;->ReadPage:I

    iget v14, v11, Lcom/rookiestudio/baseclass/TFileData;->TotalPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->ShowOverlayIcon(IILandroid/widget/ImageView;)V

    .line 549
    const v13, 0x7f020038

    sget v14, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 582
    :cond_4
    :goto_2
    const v13, 0x7f0c003d

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 583
    .local v4, FileNameText:Landroid/widget/TextView;
    sget-boolean v13, Lcom/rookiestudio/perfectviewer/Config;->ShowFileExtName:Z

    if-nez v13, :cond_5

    iget-boolean v13, v11, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    if-eqz v13, :cond_17

    .line 584
    :cond_5
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :goto_3
    const v13, 0x7f0c003f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 595
    .local v1, FileDateText:Landroid/widget/TextView;
    if-eqz v1, :cond_6

    .line 598
    const/4 v13, 0x3

    const/4 v14, 0x2

    invoke-static {v13, v14}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v13

    iget-object v14, v11, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_6
    const v13, 0x7f0c0040

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 601
    .local v5, FileSizeText:Landroid/widget/TextView;
    if-eqz v5, :cond_7

    .line 602
    iget-boolean v13, v11, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    if-eqz v13, :cond_19

    .line 603
    const-string v13, ""

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    move-object/from16 v13, p2

    .line 610
    goto/16 :goto_0

    .line 528
    .end local v1           #FileDateText:Landroid/widget/TextView;
    .end local v2           #FileIcon:Landroid/widget/ImageView;
    .end local v4           #FileNameText:Landroid/widget/TextView;
    .end local v5           #FileSizeText:Landroid/widget/TextView;
    .end local v6           #ImageInfo:Landroid/widget/TextView;
    .end local v7           #OverlayIcon:Landroid/widget/ImageView;
    :catch_0
    move-exception v10

    .line 529
    .local v10, e:Ljava/lang/Exception;
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 535
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v12       #inflater:Landroid/view/LayoutInflater;
    :cond_8
    sget v13, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 536
    const v13, 0x7f030011

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 538
    :cond_9
    const v13, 0x7f030014

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 550
    .end local v12           #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #FileIcon:Landroid/widget/ImageView;
    .restart local v6       #ImageInfo:Landroid/widget/TextView;
    .restart local v7       #OverlayIcon:Landroid/widget/ImageView;
    :cond_a
    const-string v13, ".png"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 551
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    const v14, 0x7f02002e

    sget v15, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v6, v14}, Lcom/rookiestudio/perfectviewer/TFileList;->CreateThumb(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    goto :goto_2

    .line 552
    :cond_b
    const-string v13, ".jpg"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string v13, ".jpeg"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 553
    :cond_c
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    const v14, 0x7f020025

    sget v15, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v6, v14}, Lcom/rookiestudio/perfectviewer/TFileList;->CreateThumb(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 554
    :cond_d
    const-string v13, ".bmp"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 555
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    const v14, 0x7f02001d

    sget v15, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v6, v14}, Lcom/rookiestudio/perfectviewer/TFileList;->CreateThumb(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 556
    :cond_e
    const-string v13, ".gif"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 557
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    const v14, 0x7f020022

    sget v15, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v6, v14}, Lcom/rookiestudio/perfectviewer/TFileList;->CreateThumb(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 558
    :cond_f
    const-string v13, ".rar"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string v13, ".cbr"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 559
    :cond_10
    iget v13, v11, Lcom/rookiestudio/baseclass/TFileData;->ReadPage:I

    iget v14, v11, Lcom/rookiestudio/baseclass/TFileData;->TotalPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->ShowOverlayIcon(IILandroid/widget/ImageView;)V

    .line 560
    const v13, 0x7f020031

    sget v14, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 562
    :cond_11
    const-string v13, ".pdf"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 563
    iget v13, v11, Lcom/rookiestudio/baseclass/TFileData;->ReadPage:I

    iget v14, v11, Lcom/rookiestudio/baseclass/TFileData;->TotalPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->ShowOverlayIcon(IILandroid/widget/ImageView;)V

    .line 564
    const v13, 0x7f02002b

    sget v14, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 565
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 566
    :cond_12
    const-string v13, ".zip"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_13

    const-string v13, ".cbz"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 567
    :cond_13
    iget v13, v11, Lcom/rookiestudio/baseclass/TFileData;->ReadPage:I

    iget v14, v11, Lcom/rookiestudio/baseclass/TFileData;->TotalPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->ShowOverlayIcon(IILandroid/widget/ImageView;)V

    .line 568
    const v13, 0x7f020035

    sget v14, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 570
    :cond_14
    const-string v13, ".lzh"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 571
    iget v13, v11, Lcom/rookiestudio/baseclass/TFileData;->ReadPage:I

    iget v14, v11, Lcom/rookiestudio/baseclass/TFileData;->TotalPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->ShowOverlayIcon(IILandroid/widget/ImageView;)V

    .line 572
    const v13, 0x7f020028

    sget v14, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 573
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 574
    :cond_15
    const-string v13, ".7z"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_16

    const-string v13, ".cb7"

    invoke-virtual {v3, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 575
    :cond_16
    iget v13, v11, Lcom/rookiestudio/baseclass/TFileData;->ReadPage:I

    iget v14, v11, Lcom/rookiestudio/baseclass/TFileData;->TotalPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v7}, Lcom/rookiestudio/perfectviewer/TFileList;->ShowOverlayIcon(IILandroid/widget/ImageView;)V

    .line 576
    const v13, 0x7f02001a

    sget v14, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v13, v14

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 577
    iget-object v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 586
    .restart local v4       #FileNameText:Landroid/widget/TextView;
    :cond_17
    iget-object v9, v11, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 587
    .local v9, TmpName:Ljava/lang/String;
    const-string v13, "."

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 588
    .local v8, Posi:I
    if-lez v8, :cond_18

    .line 589
    const/4 v13, 0x0

    invoke-virtual {v9, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 591
    :cond_18
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 605
    .end local v8           #Posi:I
    .end local v9           #TmpName:Ljava/lang/String;
    .restart local v1       #FileDateText:Landroid/widget/TextView;
    .restart local v5       #FileSizeText:Landroid/widget/TextView;
    :cond_19
    iget-wide v13, v11, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    invoke-static {v13, v14}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
