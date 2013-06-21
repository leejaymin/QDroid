.class public Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;
.super Ljava/lang/Thread;
.source "TScanBookService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TScanBookService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TScanBookThread"
.end annotation


# instance fields
.field public Bpp:I

.field public Height:I

.field public MainDB:Landroid/database/sqlite/SQLiteDatabase;

.field private MainReceiver:Landroid/os/ResultReceiver;

.field private QuickScan:Z

.field public Size:I

.field private StopScan:Z

.field public ThumbHeight:I

.field public ThumbWidth:I

.field public Width:I

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TScanBookService;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/ResultReceiver;Z)V
    .locals 1
    .parameter
    .parameter "DB"
    .parameter "R"
    .parameter "QS"

    .prologue
    const/4 v0, 0x0

    .line 275
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 271
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->QuickScan:Z

    .line 272
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->StopScan:Z

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 276
    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainReceiver:Landroid/os/ResultReceiver;

    .line 277
    iput-boolean p4, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->QuickScan:Z

    .line 278
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 279
    sget-object v0, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 280
    return-void
.end method

.method private GetPDFCoverThumb(Ljava/lang/String;)[B
    .locals 8
    .parameter "FileName"

    .prologue
    .line 486
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    const-string v6, ""

    invoke-virtual {v5, p1, v6}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFOpenFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFGotoPage(I)V

    .line 488
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v5}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageWidth()F

    move-result v5

    float-to-int v2, v5

    .line 489
    .local v2, PageWidth:I
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v5}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageHeight()F

    move-result v5

    float-to-int v1, v5

    .line 490
    .local v1, PageHeight:I
    invoke-static {v2, v1}, Lcom/rookiestudio/perfectviewer/TBitmap;->CreateImageData(II)I

    move-result v0

    .line 492
    .local v0, DataIndex:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->GetPixelData(I)I

    move-result v3

    .line 493
    .local v3, Pixels:I
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v5, v3, v2, v1}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFDrawPage(III)V

    .line 494
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->PDFAfterHandler(I)V

    .line 495
    const/4 v4, 0x0

    check-cast v4, [B

    .line 496
    .local v4, ThumbImageData:[B
    sget v5, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v5, :cond_0

    .line 497
    sget v5, Lcom/rookiestudio/perfectviewer/Global;->CoverSize:I

    const/4 v6, 0x2

    sget v7, Lcom/rookiestudio/perfectviewer/Config;->BookCoverSmoothFilter:I

    invoke-static {v0, v5, v6, v7}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImageDataThumb(IIII)[B

    move-result-object v4

    .line 501
    :goto_0
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->DeleteImageData(I)V

    .line 502
    return-object v4

    .line 499
    :cond_0
    sget v5, Lcom/rookiestudio/perfectviewer/Global;->CoverSize:I

    const/4 v6, 0x3

    sget v7, Lcom/rookiestudio/perfectviewer/Config;->BookCoverSmoothFilter:I

    invoke-static {v0, v5, v6, v7}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImageDataThumb(IIII)[B

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public AddBookData(Ljava/util/Stack;ZLjava/lang/String;Ljava/lang/String;)Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    .locals 4
    .parameter
    .parameter "IsDirectory"
    .parameter "FileName"
    .parameter "RootFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, BookList:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;>;"
    new-instance v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    invoke-direct {v1}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;-><init>()V

    .line 285
    .local v1, aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    iput-boolean p2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    .line 286
    iput-boolean p2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsFolder:Z

    .line 287
    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, Posi:I
    if-ltz v0, :cond_0

    .line 289
    const/4 v2, 0x0

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    .line 291
    :cond_0
    iput-object p3, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    .line 292
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsFolder:Z

    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/TScanBookService;->GetBookName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->Title:Ljava/lang/String;

    .line 293
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 294
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    .line 298
    :goto_0
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    .line 299
    invoke-virtual {p1, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 300
    return-object v1

    .line 296
    :cond_1
    const-string v2, ""

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    goto :goto_0
.end method

.method public LoadCoverFromDB(Ljava/util/Stack;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, BookList:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;>;"
    const/4 v2, 0x0

    .line 454
    .local v2, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT a.book_path,a.book_cover,b.read_page,b.total_page FROM bookfolder a LEFT JOIN bookhistory b ON a.book_path=b.full_path"

    .line 455
    const/4 v8, 0x0

    .line 454
    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 459
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 460
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 466
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, FileName:Ljava/lang/String;
    sget-object v6, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v5

    .line 468
    .local v5, l:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v5, :cond_2

    .line 477
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 465
    if-nez v6, :cond_0

    .line 481
    .end local v0           #FileName:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #l:I
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_1
    :goto_2
    return-void

    .line 456
    :catch_0
    move-exception v3

    .line 457
    .local v3, e:Landroid/database/SQLException;
    goto :goto_2

    .line 469
    .end local v3           #e:Landroid/database/SQLException;
    .restart local v0       #FileName:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #l:I
    :cond_2
    :try_start_2
    sget-object v6, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v6, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    .line 470
    .local v1, aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    iget-object v6, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 471
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->InDatabase:Z

    .line 472
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    iput-object v6, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    .line 473
    const/4 v6, 0x2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ReadPage:I

    .line 474
    const/4 v6, 0x3

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->TotalPage:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 468
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    .end local v0           #FileName:Ljava/lang/String;
    .end local v1           #aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    .end local v4           #i:I
    .end local v5           #l:I
    :catch_1
    move-exception v6

    goto :goto_1

    .line 478
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public LoadCoverFromFile(Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)V
    .locals 9
    .parameter "aBookData"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 415
    iget-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    new-instance v6, Lcom/rookiestudio/perfectviewer/TArchiveFiles;

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->context:Landroid/content/Context;

    invoke-direct {v6, v0, v3, v3}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;-><init>(Landroid/content/Context;II)V

    .line 417
    .local v6, ArchiveFiles:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    iput v0, v6, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortType:I

    .line 418
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    iput v0, v6, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SortDirection:I

    .line 419
    iget-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->SetFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 420
    invoke-virtual {v6}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 447
    .end local v6           #ArchiveFiles:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    :cond_0
    :goto_0
    return-void

    .line 423
    .restart local v6       #ArchiveFiles:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    :cond_1
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v0, :cond_3

    .line 424
    sget v1, Lcom/rookiestudio/perfectviewer/Global;->CoverSize:I

    iget-object v2, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v3

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->BookCoverSmoothFilter:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImageArchiveThumb(Ljava/lang/Object;ILjava/lang/String;III)[B

    move-result-object v0

    iput-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    .line 444
    .end local v6           #ArchiveFiles:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    :cond_2
    :goto_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->ThumbWidth:I

    iput v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->Width:I

    .line 445
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->ThumbHeight:I

    iput v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->Height:I

    .line 446
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->Bpp:I

    iput v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->Bpp:I

    goto :goto_0

    .line 426
    .restart local v6       #ArchiveFiles:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    :cond_3
    sget v1, Lcom/rookiestudio/perfectviewer/Global;->CoverSize:I

    iget-object v2, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcom/rookiestudio/perfectviewer/TArchiveFiles;->getIndex(I)I

    move-result v3

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->BookCoverSmoothFilter:I

    move-object v0, p0

    move v4, v8

    invoke-static/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImageArchiveThumb(Ljava/lang/Object;ILjava/lang/String;III)[B

    move-result-object v0

    iput-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    goto :goto_1

    .line 428
    .end local v6           #ArchiveFiles:Lcom/rookiestudio/perfectviewer/TArchiveFiles;
    :cond_4
    iget-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 429
    iget-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->GetPDFCoverThumb(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    goto :goto_1

    .line 430
    :cond_5
    iget-boolean v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    if-nez v0, :cond_2

    .line 431
    new-instance v7, Lcom/rookiestudio/perfectviewer/TFileList;

    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->context:Landroid/content/Context;

    invoke-direct {v7, v0, v3, v3, v3}, Lcom/rookiestudio/perfectviewer/TFileList;-><init>(Landroid/content/Context;III)V

    .line 432
    .local v7, FileList:Lcom/rookiestudio/perfectviewer/TFileList;
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    iput v0, v7, Lcom/rookiestudio/perfectviewer/TFileList;->SortType:I

    .line 433
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    iput v0, v7, Lcom/rookiestudio/perfectviewer/TFileList;->SortDirection:I

    .line 434
    iget-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/rookiestudio/perfectviewer/TFileList;->SetFolder(Ljava/lang/String;)Z

    .line 435
    invoke-virtual {v7}, Lcom/rookiestudio/perfectviewer/TFileList;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v0, :cond_6

    .line 439
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->CoverSize:I

    invoke-virtual {v7, v3}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->BookCoverSmoothFilter:I

    invoke-static {p0, v0, v1, v4, v2}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImageFileThumb(Ljava/lang/Object;ILjava/lang/String;II)[B

    move-result-object v0

    iput-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    goto :goto_1

    .line 441
    :cond_6
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->CoverSize:I

    invoke-virtual {v7, v3}, Lcom/rookiestudio/perfectviewer/TFileList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->BookCoverSmoothFilter:I

    invoke-static {p0, v0, v1, v8, v2}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImageFileThumb(Ljava/lang/Object;ILjava/lang/String;II)[B

    move-result-object v0

    iput-object v0, p1, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    goto :goto_1
.end method

.method public ScanEnd()V
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    sget-object v2, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TScanBookService;->FindCateThumb(Ljava/util/Stack;)V

    .line 407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "showmessage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 410
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    const/4 v2, 0x0

    #setter for: Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanBookThread:Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;
    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/TScanBookService;->access$0(Lcom/rookiestudio/perfectviewer/TScanBookService;Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;)V

    .line 411
    return-void
.end method

.method public ScanFolder2(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter "ParentFolder"
    .parameter "RootFolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, BookList:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;>;"
    const/4 v7, 0x0

    .line 305
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v4, Parent:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    move v3, v7

    .line 335
    :cond_0
    :goto_0
    return v3

    .line 309
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 310
    .local v1, FileList:[Ljava/io/File;
    if-nez v1, :cond_2

    move v3, v7

    .line 311
    goto :goto_0

    .line 313
    :cond_2
    const/4 v3, 0x0

    .line 315
    .local v3, FolderIsBook:Z
    array-length v9, v1

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v6, v1, v8

    .line 316
    .local v6, aFile:Ljava/io/File;
    sget-boolean v10, Lcom/rookiestudio/perfectviewer/Config;->ShowHideFiles:Z

    if-nez v10, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isHidden()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 315
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 319
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, FileName:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 321
    const/4 v10, 0x1

    invoke-virtual {p0, p1, v10, v2, p3}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->AddBookData(Ljava/util/Stack;ZLjava/lang/String;Ljava/lang/String;)Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    move-result-object v5

    .line 322
    .local v5, aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    invoke-virtual {p0, p1, v2, p3}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->ScanFolder2(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 323
    .local v0, B:Z
    if-eqz v0, :cond_3

    .line 324
    iput-boolean v7, v5, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    goto :goto_2

    .line 327
    .end local v0           #B:Z
    .end local v5           #aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    :cond_5
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 328
    :cond_6
    invoke-virtual {p0, p1, v7, v2, p3}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->AddBookData(Ljava/util/Stack;ZLjava/lang/String;Ljava/lang/String;)Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    goto :goto_2

    .line 329
    :cond_7
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsImage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez v3, :cond_3

    .line 330
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public run()V
    .locals 10

    .prologue
    .line 339
    sget-object v6, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    monitor-enter v6

    .line 340
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v5, 0xa

    if-lt v3, v5, :cond_0

    .line 350
    :try_start_0
    sget-object v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    new-instance v7, Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;

    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/rookiestudio/perfectviewer/TScanBookService$FileNameComparatorS;-><init>(Lcom/rookiestudio/perfectviewer/TScanBookService;I)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 351
    const-string v5, "perfectviewer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "File Found:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 353
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->ScanEnd()V

    .line 354
    monitor-exit v6

    .line 402
    :goto_1
    return-void

    .line 341
    :cond_0
    sget-object v5, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v5, v5, v3

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 342
    const-string v5, "perfectviewer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Scanning:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :try_start_1
    sget-object v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v7, v7, v3

    sget-object v8, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {p0, v5, v7, v8}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->ScanFolder2(Ljava/util/Stack;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 340
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 356
    :cond_2
    :try_start_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v2, b:Landroid/os/Bundle;
    const-string v5, "size"

    sget-object v7, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string v7, "filename"

    sget-object v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    iget-object v5, v5, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainReceiver:Landroid/os/ResultReceiver;

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 360
    iget-boolean v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->QuickScan:Z

    if-eqz v5, :cond_4

    .line 361
    sget-object v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {p0, v5}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->LoadCoverFromDB(Ljava/util/Stack;)V

    .line 365
    :goto_3
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    const/4 v7, 0x0

    iput v7, v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanCompleted:I

    .line 366
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #b:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 367
    .restart local v2       #b:Landroid/os/Bundle;
    sget-object v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v4

    .line 369
    .local v4, l:I
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v4, :cond_5

    .line 400
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->ScanEnd()V

    .line 339
    monitor-exit v6

    goto :goto_1

    .end local v2           #b:Landroid/os/Bundle;
    .end local v4           #l:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 363
    .restart local v2       #b:Landroid/os/Bundle;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TScanBookService;->ClearBookData(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 370
    .restart local v4       #l:I
    :cond_5
    :try_start_4
    sget-object v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    .line 371
    .local v0, aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    iget-boolean v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    if-eqz v5, :cond_7

    .line 372
    iget-boolean v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->InDatabase:Z

    if-nez v5, :cond_6

    .line 373
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v0}, Lcom/rookiestudio/perfectviewer/TScanBookService;->SaveBookData(Landroid/database/sqlite/SQLiteDatabase;Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)V

    .line 375
    :cond_6
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    iget v7, v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanCompleted:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanCompleted:I

    .line 369
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 378
    :cond_7
    iget-object v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    if-nez v5, :cond_9

    .line 379
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/rookiestudio/perfectviewer/THistoryManager;->FindBookHistory(Ljava/lang/String;)Lcom/rookiestudio/baseclass/THistoryItem;

    move-result-object v1

    .line 380
    .local v1, aHistoryItem:Lcom/rookiestudio/baseclass/THistoryItem;
    if-eqz v1, :cond_8

    .line 381
    iget v5, v1, Lcom/rookiestudio/baseclass/THistoryItem;->PageNo:I

    iput v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ReadPage:I

    .line 382
    iget v5, v1, Lcom/rookiestudio/baseclass/THistoryItem;->TotalPage:I

    iput v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->TotalPage:I

    .line 384
    :cond_8
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->LoadCoverFromFile(Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)V

    .line 385
    iget-boolean v5, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->InDatabase:Z

    if-nez v5, :cond_9

    .line 386
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v0}, Lcom/rookiestudio/perfectviewer/TScanBookService;->SaveBookData(Landroid/database/sqlite/SQLiteDatabase;Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)V

    .line 389
    .end local v1           #aHistoryItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_9
    iget-boolean v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->StopScan:Z

    if-nez v5, :cond_3

    .line 392
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    iget v7, v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanCompleted:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanCompleted:I

    .line 393
    const-string v5, "completed"

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->this$0:Lcom/rookiestudio/perfectviewer/TScanBookService;

    iget v7, v7, Lcom/rookiestudio/perfectviewer/TScanBookService;->ScanCompleted:I

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string v5, "filename"

    iget-object v7, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->FileName:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TScanBookService$TScanBookThread;->MainReceiver:Landroid/os/ResultReceiver;

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 397
    .end local v0           #aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    :catch_0
    move-exception v5

    goto :goto_5

    .line 398
    :catch_1
    move-exception v5

    goto :goto_5

    .line 346
    .end local v2           #b:Landroid/os/Bundle;
    .end local v4           #l:I
    :catch_2
    move-exception v5

    goto/16 :goto_2

    .line 345
    :catch_3
    move-exception v5

    goto/16 :goto_2
.end method
