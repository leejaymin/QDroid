.class public Lcom/rookiestudio/perfectviewer/TCreateThumbThread;
.super Ljava/lang/Thread;
.source "TCreateThumbThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "thumbdata.db"

.field private static final DATABASE_VERSION:I = 0x3

.field public static final MaxThumbDBCount:I = 0x7d0

.field public static MaxThumbSize:I = 0x0

.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_FINISHED:I = 0x3

.field public static final STATUS_RUNNING:I = 0x1

.field private static final TableThumbData:Ljava/lang/String; = "thumbdata"

.field public static ThumbCacheList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/rookiestudio/baseclass/TThumbData;",
            ">;"
        }
    .end annotation
.end field

.field public static ThumbCacheSize:I

.field public static ThumbQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/rookiestudio/baseclass/TThumbToLoad;",
            ">;"
        }
    .end annotation
.end field

.field public static ThumbSize:I


# instance fields
.field public Bpp:I

.field public Height:I

.field private MainDB:Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;

.field public MainReceiver:Landroid/os/ResultReceiver;

.field public Size:I

.field public Terminate:Z

.field public Terminated:Z

.field public ThumbHeight:I

.field public ThumbImageData:[B

.field public ThumbWidth:I

.field public Width:I

.field public threadSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    .line 39
    const/high16 v0, 0x40

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MaxThumbSize:I

    .line 40
    const/16 v0, 0x40

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbSize:I

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V
    .locals 3
    .parameter "context"
    .parameter "MR"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Terminate:Z

    .line 48
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbImageData:[B

    .line 49
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Terminated:Z

    .line 50
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->threadSuspended:Z

    .line 51
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainDB:Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;

    .line 164
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    if-lt v0, v2, :cond_0

    .line 165
    const/16 v0, 0xc0

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbSize:I

    .line 166
    const/high16 v0, 0x70

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MaxThumbSize:I

    .line 180
    :goto_0
    const-string v0, "perfectviewer"

    const-string v1, "TCreateThumbThread create."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainReceiver:Landroid/os/ResultReceiver;

    .line 182
    new-instance v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainDB:Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;

    .line 183
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainDB:Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->OpenDataBase()V

    .line 184
    return-void

    .line 167
    :cond_0
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    .line 168
    const/16 v0, 0xa0

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbSize:I

    .line 169
    const/high16 v0, 0x60

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MaxThumbSize:I

    goto :goto_0

    .line 170
    :cond_1
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    .line 171
    const/16 v0, 0x80

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbSize:I

    .line 172
    const/high16 v0, 0x50

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MaxThumbSize:I

    goto :goto_0

    .line 173
    :cond_2
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->MaxVMHeap:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 174
    const/16 v0, 0x60

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbSize:I

    .line 175
    const/high16 v0, 0x40

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MaxThumbSize:I

    goto :goto_0

    .line 177
    :cond_3
    sput v2, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbSize:I

    .line 178
    const/high16 v0, 0x30

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MaxThumbSize:I

    goto :goto_0
.end method

.method public static native GetImageArchiveThumb(Ljava/lang/Object;ILjava/lang/String;III)[B
.end method

.method public static native GetImageDataThumb(IIII)[B
.end method

.method public static native GetImageFileThumb(Ljava/lang/Object;ILjava/lang/String;II)[B
.end method

.method private GetImagePDFThumb(Ljava/lang/String;I)V
    .locals 7
    .parameter "FileName"
    .parameter "FileOrder"

    .prologue
    .line 424
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    const-string v5, ""

    invoke-virtual {v4, p1, v5}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFOpenFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v4, p2}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFGotoPage(I)V

    .line 426
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageWidth()F

    move-result v4

    float-to-int v2, v4

    .line 427
    .local v2, PageWidth:I
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFPageHeight()F

    move-result v4

    float-to-int v1, v4

    .line 428
    .local v1, PageHeight:I
    invoke-static {v2, v1}, Lcom/rookiestudio/perfectviewer/TBitmap;->CreateImageData(II)I

    move-result v0

    .line 429
    .local v0, DataIndex:I
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->GetPixelData(I)I

    move-result v3

    .line 430
    .local v3, Pixels:I
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v4, v3, v2, v1}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFDrawPage(III)V

    .line 431
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->PDFAfterHandler(I)V

    .line 432
    sget v5, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbSize:I

    sget-boolean v4, Lcom/rookiestudio/perfectviewer/Config;->CropThumbnail:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    sget v6, Lcom/rookiestudio/perfectviewer/Config;->ThumbSmoothFilter:I

    invoke-static {v0, v5, v4, v6}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImageDataThumb(IIII)[B

    move-result-object v4

    iput-object v4, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbImageData:[B

    .line 433
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBitmap;->DeleteImageData(I)V

    .line 434
    return-void

    .line 432
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Add(Ljava/lang/String;I)Z
    .locals 5
    .parameter "FN"
    .parameter "FileOrder"

    .prologue
    const/4 v4, 0x0

    .line 315
    const-string v1, ""

    .line 316
    .local v1, TmpFN:Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 317
    move-object v1, p1

    .line 325
    :goto_0
    new-instance v0, Lcom/rookiestudio/baseclass/TThumbToLoad;

    invoke-direct {v0, p1, p2, v4, v4}, Lcom/rookiestudio/baseclass/TThumbToLoad;-><init>(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 326
    .local v0, ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    sget-object v2, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 327
    const/4 v2, 0x1

    return v2

    .line 319
    .end local v0           #ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public AddToCacheList([BLjava/lang/String;III)Lcom/rookiestudio/baseclass/TThumbData;
    .locals 3
    .parameter "ImageData"
    .parameter "FN"
    .parameter "Width"
    .parameter "Height"
    .parameter "BPP"

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->CleanThumbCacheList()V

    .line 225
    new-instance v0, Lcom/rookiestudio/baseclass/TThumbData;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TThumbData;-><init>()V

    .line 226
    .local v0, ThumbData:Lcom/rookiestudio/baseclass/TThumbData;
    iput-object p2, v0, Lcom/rookiestudio/baseclass/TThumbData;->FileName:Ljava/lang/String;

    .line 227
    iput p3, v0, Lcom/rookiestudio/baseclass/TThumbData;->Width:I

    .line 228
    iput p4, v0, Lcom/rookiestudio/baseclass/TThumbData;->Height:I

    .line 229
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbWidth:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbWidth:I

    .line 230
    iget v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbHeight:I

    iput v1, v0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbHeight:I

    .line 231
    iput p5, v0, Lcom/rookiestudio/baseclass/TThumbData;->Bpp:I

    .line 232
    iput-object p1, v0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    .line 233
    sget v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    array-length v2, p1

    add-int/2addr v1, v2

    sput v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    .line 234
    sget-object v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 235
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->SaveThumbnail:Z

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainDB:Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->SaveThumbFile(Lcom/rookiestudio/baseclass/TThumbData;)V

    .line 238
    :cond_0
    return-object v0
.end method

.method public CheckThumbDBSize()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x7d0

    .line 187
    const-wide/16 v0, 0x0

    .line 189
    .local v0, RecordCount:J
    :try_start_0
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainDB:Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->GetRecordCount()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 193
    :goto_0
    cmp-long v2, v0, v3

    if-gtz v2, :cond_0

    .line 202
    :goto_1
    return-void

    .line 198
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainDB:Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->CleanOldData(J)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v2

    goto :goto_1

    .line 190
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public CleanAllThumbCacheList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    :goto_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 220
    return-void

    .line 216
    :cond_0
    sget v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TThumbData;

    iget-object v0, v0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    array-length v0, v0

    sub-int v0, v1, v0

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    .line 217
    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TThumbData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    .line 218
    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public CleanThumbCacheList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    :goto_0
    sget v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    sget v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MaxThumbSize:I

    if-gt v0, v1, :cond_0

    .line 211
    return-void

    .line 207
    :cond_0
    sget v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TThumbData;

    iget-object v0, v0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    array-length v0, v0

    sub-int v0, v1, v0

    sput v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    .line 208
    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TThumbData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    .line 209
    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public Clear()V
    .locals 2

    .prologue
    .line 344
    :goto_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 347
    return-void

    .line 345
    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public DoPause()V
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->threadSuspended:Z

    if-eqz v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    monitor-enter p0

    .line 441
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->threadSuspended:Z

    .line 440
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public DoResume()V
    .locals 1

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->threadSuspended:Z

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 446
    monitor-exit p0

    .line 450
    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public FindCacheList(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;
    .locals 3
    .parameter "FN"

    .prologue
    .line 256
    sget-object v2, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 257
    .local v0, Enumerater:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/rookiestudio/baseclass/TThumbData;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 258
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/baseclass/TThumbData;

    .line 259
    .local v1, aThumbData:Lcom/rookiestudio/baseclass/TThumbData;
    iget-object v2, v1, Lcom/rookiestudio/baseclass/TThumbData;->FileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public FindFileInQueue(Ljava/lang/String;I)I
    .locals 4
    .parameter "FN"
    .parameter "FileOrder"

    .prologue
    .line 331
    const/4 v2, 0x0

    .line 332
    .local v2, i:I
    sget-object v3, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 333
    .local v0, Enumerater:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/rookiestudio/baseclass/TThumbToLoad;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    const/4 v2, -0x1

    .end local v2           #i:I
    :cond_0
    return v2

    .line 334
    .restart local v2       #i:I
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/baseclass/TThumbToLoad;

    .line 335
    .local v1, aThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    iget-object v3, v1, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v1, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    if-eq p2, v3, :cond_0

    .line 338
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public FindThumbCache(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)Z
    .locals 3
    .parameter "FN"
    .parameter "Icon"
    .parameter "ImageInfo"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindCacheList(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v0

    .line 268
    .local v0, ThumbData:Lcom/rookiestudio/baseclass/TThumbData;
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v0}, Lcom/rookiestudio/baseclass/TThumbData;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    if-eqz p3, :cond_0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/rookiestudio/baseclass/TThumbData;->Width:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/rookiestudio/baseclass/TThumbData;->Height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/rookiestudio/baseclass/TThumbData;->Bpp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_0
    const/4 v1, 0x1

    .line 277
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public FindThumbInDB(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;
    .locals 3
    .parameter "FN"

    .prologue
    .line 243
    new-instance v0, Lcom/rookiestudio/baseclass/TThumbData;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TThumbData;-><init>()V

    .line 244
    .local v0, aThumbData:Lcom/rookiestudio/baseclass/TThumbData;
    iput-object p1, v0, Lcom/rookiestudio/baseclass/TThumbData;->FileName:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainDB:Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread$DatabaseHelper;->LoadThumbFile(Lcom/rookiestudio/baseclass/TThumbData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    sget v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    iget-object v2, v0, Lcom/rookiestudio/baseclass/TThumbData;->ThumbImageData:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sput v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheSize:I

    .line 247
    sget-object v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbCacheList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v0           #aThumbData:Lcom/rookiestudio/baseclass/TThumbData;
    :goto_0
    return-object v0

    .restart local v0       #aThumbData:Lcom/rookiestudio/baseclass/TThumbData;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public UpdateQueue(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;)Z
    .locals 4
    .parameter "FN"
    .parameter "FileOrder"
    .parameter "Icon"
    .parameter "ImageInfo"

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindFileInQueue(Ljava/lang/String;I)I

    move-result v0

    .line 288
    .local v0, Index:I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 289
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 293
    :goto_0
    if-ltz v0, :cond_1

    .line 294
    sget-object v2, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/baseclass/TThumbToLoad;

    .line 311
    .local v1, ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 291
    .end local v1           #ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 307
    :cond_1
    new-instance v1, Lcom/rookiestudio/baseclass/TThumbToLoad;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/rookiestudio/baseclass/TThumbToLoad;-><init>(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 308
    .restart local v1       #ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    sget-object v2, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public UpdateQueue(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)Z
    .locals 1
    .parameter "FN"
    .parameter "Icon"
    .parameter "ImageInfo"

    .prologue
    .line 281
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->UpdateQueue(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;)Z

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 349
    const-string v0, "perfectviewer"

    const-string v1, "TCreateThumbThread start."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->threadSuspended:Z

    if-nez v0, :cond_1

    .line 353
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :goto_2
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Terminate:Z

    if-eqz v0, :cond_2

    .line 420
    return-void

    .line 355
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->CheckThumbDBSize()V

    .line 356
    const-string v0, "perfectviewer"

    const-string v1, "TCreateThumbThread paused."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 360
    :catch_0
    move-exception v0

    goto :goto_2

    .line 365
    :cond_2
    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 366
    const/4 v6, 0x0

    .line 368
    .local v6, ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    :try_start_4
    sget-object v0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    check-cast v6, Lcom/rookiestudio/baseclass/TThumbToLoad;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 372
    .restart local v6       #ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    if-nez v0, :cond_0

    .line 375
    iget v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 376
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindCacheList(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v0

    iput-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    .line 377
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->SaveThumbnail:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    if-nez v0, :cond_3

    .line 378
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindThumbInDB(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v0

    iput-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    .line 380
    :cond_3
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    if-nez v0, :cond_4

    .line 381
    sget v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbSize:I

    iget-object v2, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->CropThumbnail:Z

    if-eqz v0, :cond_7

    move v0, v8

    :goto_3
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ThumbSmoothFilter:I

    invoke-static {p0, v1, v2, v0, v3}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImageFileThumb(Ljava/lang/Object;ILjava/lang/String;II)[B

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbImageData:[B

    .line 382
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbImageData:[B

    if-eqz v0, :cond_4

    .line 383
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbImageData:[B

    iget-object v2, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Width:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Height:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Bpp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->AddToCacheList([BLjava/lang/String;III)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v0

    iput-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    .line 402
    :cond_4
    :goto_4
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    if-nez v0, :cond_5

    .line 403
    const-string v0, "perfectviewer"

    const-string v1, "create error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_5
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_6

    .line 407
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainReceiver:Landroid/os/ResultReceiver;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v8, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 409
    :cond_6
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->threadSuspended:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 369
    .end local v6           #ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    :catch_1
    move-exception v7

    .line 370
    .local v7, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    :cond_7
    move v0, v9

    .line 381
    goto :goto_3

    .line 387
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindCacheList(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v0

    iput-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    .line 388
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->SaveThumbnail:Z

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    if-nez v0, :cond_9

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindThumbInDB(Ljava/lang/String;)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v0

    iput-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    .line 391
    :cond_9
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    if-nez v0, :cond_4

    .line 392
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 393
    iget-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    iget v1, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    invoke-direct {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImagePDFThumb(Ljava/lang/String;I)V

    .line 397
    :goto_5
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbImageData:[B

    if-eqz v0, :cond_4

    .line 398
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbImageData:[B

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Width:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Height:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->Bpp:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->AddToCacheList([BLjava/lang/String;III)Lcom/rookiestudio/baseclass/TThumbData;

    move-result-object v0

    iput-object v0, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->ThumbData:Lcom/rookiestudio/baseclass/TThumbData;

    goto/16 :goto_4

    .line 395
    :cond_a
    sget v1, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbSize:I

    iget-object v2, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileName:Ljava/lang/String;

    iget v3, v6, Lcom/rookiestudio/baseclass/TThumbToLoad;->FileOrder:I

    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->CropThumbnail:Z

    if-eqz v0, :cond_b

    move v4, v8

    :goto_6
    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ThumbSmoothFilter:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->GetImageArchiveThumb(Ljava/lang/Object;ILjava/lang/String;III)[B

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->ThumbImageData:[B

    goto :goto_5

    :cond_b
    move v4, v9

    goto :goto_6

    .line 413
    .end local v6           #ThumbToLoad:Lcom/rookiestudio/baseclass/TThumbToLoad;
    :cond_c
    iput-boolean v8, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->threadSuspended:Z

    .line 414
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->MainReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method
