.class Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;
.super Landroid/widget/BaseAdapter;
.source "TFavoritesBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TFavoritesList"
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
    .parameter "D"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    .line 472
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 474
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->context:Landroid/content/Context;

    .line 475
    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    .line 476
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 515
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gez v0, :cond_0

    .line 480
    const/4 v0, 0x0

    .line 482
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 491
    :goto_0
    return-object v0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 491
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 521
    const-wide/16 v0, -0x1

    .line 524
    :goto_0
    return-wide v0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 524
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getValue1(I)Ljava/lang/String;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 500
    :goto_0
    return-object v0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 500
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue2(I)Ljava/lang/String;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 506
    const/4 v0, 0x0

    .line 509
    :goto_0
    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 509
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 530
    iget-object v10, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->context:Landroid/content/Context;

    if-nez v10, :cond_0

    move-object v8, p2

    .line 558
    .end local p2
    .local v8, convertView:Landroid/view/View;
    :goto_0
    return-object v8

    .line 533
    .end local v8           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v10, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    invoke-interface {v10, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 534
    iget-object v10, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, FavoritesName:Ljava/lang/String;
    iget-object v10, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, AddDate:Ljava/lang/String;
    iget-object v10, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->DataSet:Landroid/database/Cursor;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    .line 537
    .local v7, PageNo:I
    if-nez p2, :cond_1

    .line 538
    iget-object v10, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->context:Landroid/content/Context;

    .line 539
    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 538
    check-cast v9, Landroid/view/LayoutInflater;

    .line 540
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f030012

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 542
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v10, 0x7f0c003b

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 543
    .local v3, FileIcon:Landroid/widget/ImageView;
    const v10, 0x7f0c0040

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 544
    .local v5, FileSizeText:Landroid/widget/TextView;
    const v10, 0x7f0c003d

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 545
    .local v4, FileNameText:Landroid/widget/TextView;
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 546
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 547
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser$TFavoritesList;->this$0:Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;

    #getter for: Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->AddDateStr:Ljava/lang/String;
    invoke-static {v11}, Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;->access$0(Lcom/rookiestudio/perfectviewer/TFavoritesBrowser;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    const v10, 0x7f020021

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 550
    const v10, 0x7f0c003f

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 551
    .local v2, FileDateText:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 553
    :try_start_0
    sget-object v10, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v11, 0x7f0a0088

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 554
    .local v6, PageFormat:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #PageFormat:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object v8, p2

    .line 558
    .end local p2
    .restart local v8       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 555
    .end local v8           #convertView:Landroid/view/View;
    .restart local p2
    :catch_0
    move-exception v10

    goto :goto_1
.end method
