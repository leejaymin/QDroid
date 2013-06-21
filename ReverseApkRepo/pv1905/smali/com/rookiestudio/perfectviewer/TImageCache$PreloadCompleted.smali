.class Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;
.super Ljava/lang/Object;
.source "TImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreloadCompleted"
.end annotation


# instance fields
.field private Direction:I

.field private PageIndex:I

.field private aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TImageCache;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TImageCache;Lcom/rookiestudio/perfectviewer/TBitmap;I)V
    .locals 1
    .parameter
    .parameter "BMP"
    .parameter "dir"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->this$0:Lcom/rookiestudio/perfectviewer/TImageCache;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 336
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->PageIndex:I

    .line 337
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    .line 338
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x1

    .line 341
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-nez v3, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->DataIndex:I

    if-nez v3, :cond_4

    .line 345
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v2, v2, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    check-cast v0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;

    .line 347
    .local v0, ArchiveNavigater:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    .line 348
    iget-boolean v2, v0, Lcom/rookiestudio/perfectviewer/TArchiveNavigater;->NeedPassword:Z

    if-eqz v2, :cond_2

    .line 349
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v2, v2, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->PageIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TViewerMain;->DoRequirePassword(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    iget v2, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->PageIndex:I

    if-lez v2, :cond_3

    .line 352
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->PageIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v6}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    goto :goto_0

    .line 354
    :cond_3
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->PageIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    goto :goto_0

    .line 361
    .end local v0           #ArchiveNavigater:Lcom/rookiestudio/perfectviewer/TArchiveNavigater;
    :cond_4
    :try_start_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    .line 362
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    if-ne v3, v1, :cond_8

    .line 363
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->EnableCacheScaledImage:Z

    if-nez v3, :cond_5

    .line 364
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->this$0:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TImageCache;->DeleteAllScaledImage()V

    .line 366
    :cond_5
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->PageIndex:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    invoke-virtual {v3, v4, v5}, Lcom/rookiestudio/perfectviewer/TNavigater;->SetIndex(II)Z

    .line 367
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    if-eq v4, v6, :cond_7

    :goto_1
    invoke-virtual {v3, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 368
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowPage(Z)V

    .line 388
    :cond_6
    :goto_2
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    invoke-virtual {v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TNavigater;->LoadCompleted(Lcom/rookiestudio/perfectviewer/TBitmap;I)V

    goto :goto_0

    .line 389
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_7
    move v1, v2

    .line 367
    goto :goto_1

    .line 369
    :cond_8
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    if-ne v3, v6, :cond_c

    .line 370
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->EnableCacheScaledImage:Z

    if-nez v3, :cond_9

    .line 371
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->this$0:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TImageCache;->DeleteAllScaledImage()V

    .line 374
    :cond_9
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    if-ne v3, v1, :cond_a

    .line 375
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->aBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    const/4 v4, 0x2

    iput v4, v3, Lcom/rookiestudio/perfectviewer/TBitmap;->CurrentPage:I

    .line 377
    :cond_a
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->PageIndex:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    invoke-virtual {v3, v4, v5}, Lcom/rookiestudio/perfectviewer/TNavigater;->SetIndex(II)Z

    .line 378
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    if-eq v4, v6, :cond_b

    :goto_3
    invoke-virtual {v3, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 379
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->ShowPage(Z)V

    goto :goto_2

    :cond_b
    move v1, v2

    .line 378
    goto :goto_3

    .line 380
    :cond_c
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 381
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->EnableCacheScaledImage:Z

    if-nez v3, :cond_d

    .line 382
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->this$0:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-virtual {v3}, Lcom/rookiestudio/perfectviewer/TImageCache;->DeleteAllScaledImage()V

    .line 384
    :cond_d
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->PageIndex:I

    iget v5, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    invoke-virtual {v3, v4, v5}, Lcom/rookiestudio/perfectviewer/TNavigater;->SetIndex(II)Z

    .line 385
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TImageCache$PreloadCompleted;->Direction:I

    if-eq v4, v6, :cond_e

    :goto_4
    invoke-virtual {v3, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 386
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_e
    move v1, v2

    .line 385
    goto :goto_4
.end method
