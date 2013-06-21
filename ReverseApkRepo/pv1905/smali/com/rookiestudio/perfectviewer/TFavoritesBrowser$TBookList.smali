.class Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;
.super Landroid/widget/BaseAdapter;
.source "TFavoritesBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TBookList"
.end annotation


# instance fields
.field private DataSet:Landroid/database/Cursor;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "cc"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    .line 368
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 370
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->context:Landroid/content/Context;

    .line 371
    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    .line 372
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 403
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gez v0, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 388
    :goto_0
    return-object v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 388
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 409
    const-wide/16 v0, -0x1

    .line 412
    :goto_0
    return-wide v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 412
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPath(I)Ljava/lang/String;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 397
    :goto_0
    return-object v0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 397
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 418
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->context:Landroid/content/Context;

    if-nez v8, :cond_0

    move-object v6, p2

    .line 463
    .end local p2
    .local v6, convertView:Landroid/view/View;
    :goto_0
    return-object v6

    .line 421
    .end local v6           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v8, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 422
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, FileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, BookFile:Ljava/io/File;
    if-nez p2, :cond_1

    .line 425
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->context:Landroid/content/Context;

    .line 426
    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 425
    check-cast v7, Landroid/view/LayoutInflater;

    .line 427
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030012

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 429
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const-string v8, "perfectviewer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FileName "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const v8, 0x7f0c003b

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 431
    .local v2, FileIcon:Landroid/widget/ImageView;
    const v8, 0x7f0c0040

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 432
    .local v5, FileSizeText:Landroid/widget/TextView;
    const v8, 0x7f0c003d

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 433
    .local v4, FileNameText:Landroid/widget/TextView;
    const v8, 0x7f0c003f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 434
    .local v1, FileDateText:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 435
    const-string v8, ""

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    :cond_2
    iget-object v8, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TBookList;->DataSet:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 439
    const v8, 0x7f0a0021

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 440
    const v8, 0x7f020034

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v6, p2

    .line 441
    .end local p2
    .restart local v6       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 442
    .end local v6           #convertView:Landroid/view/View;
    .restart local p2
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 443
    const v8, 0x7f020038

    sget v9, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 458
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 459
    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object v6, p2

    .line 463
    .end local p2
    .restart local v6       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 444
    .end local v6           #convertView:Landroid/view/View;
    .restart local p2
    :cond_5
    const-string v8, ".rar"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, ".cbr"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 445
    :cond_6
    const v8, 0x7f020031

    sget v9, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 446
    :cond_7
    const-string v8, ".zip"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, ".cbz"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 447
    :cond_8
    const v8, 0x7f020035

    sget v9, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 448
    :cond_9
    const-string v8, ".7z"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, ".cb7"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 449
    :cond_a
    const v8, 0x7f02001a

    sget v9, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 450
    :cond_b
    const-string v8, ".lzh"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 451
    const v8, 0x7f020028

    sget v9, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 452
    :cond_c
    const-string v8, ".pdf"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 453
    const v8, 0x7f02002b

    sget v9, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 461
    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/rookiestudio/perfectviewer/TUtility;->size2String(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
