.class public Lcom/rookiestudio/perfectviewer/TArchiveFiles;
.super Landroid/widget/BaseAdapter;
.source "TArchiveFiles.java"


# instance fields
.field public CurrentFolder:Ljava/lang/String;

.field private ListDate:Z

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

.field public NeedPassword:Z

.field public SortDirection:I

.field public SortType:I

.field private TmpIndex:I

.field public TotalSize:J

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .parameter "c"
    .parameter "Sort1"
    .parameter "Sort2"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->inflater:Landroid/view/LayoutInflater;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TotalSize:J

    .line 32
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    .line 33
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    .line 34
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TmpIndex:I

    .line 35
    iput-boolean v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListDate:Z

    .line 36
    iput-boolean v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->NeedPassword:Z

    .line 40
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    .line 41
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    .line 42
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->context:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->inflater:Landroid/view/LayoutInflater;

    .line 46
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 3
    .parameter "c"
    .parameter "Sort1"
    .parameter "Sort2"
    .parameter "Date"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->inflater:Landroid/view/LayoutInflater;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TotalSize:J

    .line 32
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    .line 33
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    .line 34
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TmpIndex:I

    .line 35
    iput-boolean v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListDate:Z

    .line 36
    iput-boolean v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->NeedPassword:Z

    .line 51
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    .line 52
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    .line 53
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->context:Landroid/content/Context;

    .line 54
    iput-boolean p4, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListDate:Z

    .line 55
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->inflater:Landroid/view/LayoutInflater;

    .line 58
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method private AddFileData(ILjava/lang/String;J[BZ)V
    .locals 14
    .parameter "index"
    .parameter "FileName"
    .parameter "FileSize"
    .parameter "FileDate"
    .parameter "IsEncryped"

    .prologue
    .line 245
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SkipThisFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v9, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v9}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 250
    .local v9, NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    iput p1, v9, Lcom/rookiestudio/baseclass/TFileData;->Index:I

    .line 251
    move-object/from16 v0, p2

    iput-object v0, v9, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 252
    move-wide/from16 v0, p3

    iput-wide v0, v9, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    .line 253
    move/from16 v0, p6

    iput-boolean v0, v9, Lcom/rookiestudio/baseclass/TFileData;->IsEncrypted:Z

    .line 254
    const/4 v2, 0x0

    aget-byte v2, p5, v2

    add-int/lit16 v3, v2, 0x7bc

    .line 255
    .local v3, year:I
    const/4 v2, 0x1

    aget-byte v4, p5, v2

    .line 256
    .local v4, month:I
    const/4 v2, 0x2

    aget-byte v5, p5, v2

    .line 257
    .local v5, days:I
    const/4 v2, 0x3

    aget-byte v6, p5, v2

    .line 258
    .local v6, hour:I
    const/4 v2, 0x4

    aget-byte v7, p5, v2

    .line 259
    .local v7, minute:I
    const/4 v2, 0x5

    aget-byte v8, p5, v2

    .line 260
    .local v8, second:I
    new-instance v2, Ljava/util/Date;

    invoke-direct/range {v2 .. v8}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v2, v9, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    .line 261
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-wide v10, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TotalSize:J

    iget-wide v12, v9, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TotalSize:J

    goto :goto_0
.end method

.method private AddFileData2(ILjava/lang/String;JZ)V
    .locals 5
    .parameter "index"
    .parameter "FileName"
    .parameter "FileSize"
    .parameter "IsEncryped"

    .prologue
    .line 302
    invoke-direct {p0, p2}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SkipThisFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "perfectviewer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SkipThisFile : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v0, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 307
    .local v0, NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    iput p1, v0, Lcom/rookiestudio/baseclass/TFileData;->Index:I

    .line 308
    iput-object p2, v0, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 309
    iput-wide p3, v0, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    .line 310
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    .line 311
    iput-boolean p5, v0, Lcom/rookiestudio/baseclass/TFileData;->IsEncrypted:Z

    .line 312
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-wide v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TotalSize:J

    iget-wide v3, v0, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TotalSize:J

    goto :goto_0
.end method

.method private SkipThisFile(Ljava/lang/String;)Z
    .locals 7
    .parameter "FileName"

    .prologue
    const/16 v6, 0x2e

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v2

    .line 272
    :cond_1
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, pos:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 274
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_0

    move v2, v3

    goto :goto_0

    .line 276
    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_3

    move v2, v3

    .line 277
    goto :goto_0

    .line 279
    :cond_3
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, FileName2:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v6, :cond_0

    move v2, v3

    goto :goto_0

    .line 283
    .end local v0           #FileName2:Ljava/lang/String;
    .end local v1           #pos:I
    :catch_0
    move-exception v2

    :goto_1
    move v2, v3

    .line 285
    goto :goto_0

    .line 282
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void
.end method

.method public CreateThumb(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 3
    .parameter "FileName"
    .parameter "FileOrder"
    .parameter "FileIcon"
    .parameter "ImageInfo"
    .parameter "DefaultIcon"

    .prologue
    .line 147
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindThumbCache(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public DoSort(II)V
    .locals 3
    .parameter "Sort1"
    .parameter "Sort2"

    .prologue
    .line 98
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    .line 99
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    .line 100
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListDate:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileList$FileDateComparator;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    invoke-direct {v1, v2}, Lcom/rookiestudio/perfectviewer/TFileList$FileDateComparator;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileList$FileSizeComparator;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    invoke-direct {v1, v2}, Lcom/rookiestudio/perfectviewer/TFileList$FileSizeComparator;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 104
    :cond_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    new-instance v1, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    invoke-direct {v1, v2}, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    new-instance v1, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;

    invoke-direct {v1}, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public FindFile(Ljava/lang/String;)I
    .locals 5
    .parameter "FileName"

    .prologue
    .line 63
    const/4 v1, -0x1

    .line 64
    .local v1, Result:I
    const/4 v0, 0x0

    .line 65
    .local v0, Index:I
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    :goto_1
    return v1

    .line 65
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rookiestudio/baseclass/TFileData;

    .line 66
    .local v2, aFile:Lcom/rookiestudio/baseclass/TFileData;
    iget-object v4, v2, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    move v1, v0

    .line 68
    goto :goto_1

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public native ListArchiveFile(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public SetFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "FolderName"
    .parameter "Password"

    .prologue
    const/4 v1, 0x0

    .line 77
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CurrentFolder:Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 79
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TmpIndex:I

    .line 80
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->NeedPassword:Z

    .line 81
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->TotalSize:J

    .line 83
    :try_start_0
    iget-boolean v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListDate:Z

    invoke-virtual {p0, p1, p2, v2}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListArchiveFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/RuntimeException;
    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    invoke-virtual {p0, v1, v2}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->DoSort(II)V

    .line 93
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getIndex(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TFileData;

    iget v0, v0, Lcom/rookiestudio/baseclass/TFileData;->Index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/rookiestudio/baseclass/TFileData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, p2

    .line 226
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 168
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/rookiestudio/baseclass/TFileData;

    .line 171
    .local v12, entry:Lcom/rookiestudio/baseclass/TFileData;
    iget-object v0, v12, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, FileName:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 173
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    if-nez v0, :cond_7

    .line 174
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 181
    :cond_2
    :goto_1
    const v0, 0x7f0c003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 182
    .local v3, FileIcon:Landroid/widget/ImageView;
    const v0, 0x7f0c003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 183
    .local v4, ImageInfo:Landroid/widget/TextView;
    if-eqz v4, :cond_3

    .line 184
    const-string v0, ""

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_3
    const-string v0, ".png"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 187
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v2

    const v0, 0x7f02002e

    sget v5, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CreateThumb(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 196
    :goto_2
    const v0, 0x7f0c003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 197
    .local v8, FileNameText:Landroid/widget/TextView;
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 198
    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 200
    :cond_4
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowFileExtName:Z

    if-eqz v0, :cond_d

    .line 201
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :goto_3
    const v0, 0x7f0c003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 212
    .local v6, FileDateText:Landroid/widget/TextView;
    if-eqz v6, :cond_5

    .line 213
    iget-object v0, v12, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    if-nez v0, :cond_f

    .line 214
    const-string v0, ""

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_5
    :goto_4
    const v0, 0x7f0c0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 220
    .local v9, FileSizeText:Landroid/widget/TextView;
    if-eqz v9, :cond_6

    .line 221
    iget-wide v0, v12, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    move-object v0, p2

    .line 226
    goto/16 :goto_0

    .line 175
    .end local v3           #FileIcon:Landroid/widget/ImageView;
    .end local v4           #ImageInfo:Landroid/widget/TextView;
    .end local v6           #FileDateText:Landroid/widget/TextView;
    .end local v8           #FileNameText:Landroid/widget/TextView;
    .end local v9           #FileSizeText:Landroid/widget/TextView;
    :cond_7
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 176
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 188
    .restart local v3       #FileIcon:Landroid/widget/ImageView;
    .restart local v4       #ImageInfo:Landroid/widget/TextView;
    :cond_9
    const-string v0, ".jpg"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, ".jpeg"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 189
    :cond_a
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v2

    const v0, 0x7f020025

    sget v5, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CreateThumb(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 190
    :cond_b
    const-string v0, ".gif"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v2

    const v0, 0x7f020022

    sget v5, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CreateThumb(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 193
    :cond_c
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v2

    const v0, 0x7f02001d

    sget v5, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->CreateThumb(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;I)V

    goto/16 :goto_2

    .line 203
    .restart local v8       #FileNameText:Landroid/widget/TextView;
    :cond_d
    move-object v11, v7

    .line 204
    .local v11, TmpName:Ljava/lang/String;
    const-string v0, "."

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 205
    .local v10, Posi:I
    if-lez v10, :cond_e

    .line 206
    const/4 v0, 0x0

    invoke-virtual {v11, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 208
    :cond_e
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 216
    .end local v10           #Posi:I
    .end local v11           #TmpName:Ljava/lang/String;
    .restart local v6       #FileDateText:Landroid/widget/TextView;
    :cond_f
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, v12, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
