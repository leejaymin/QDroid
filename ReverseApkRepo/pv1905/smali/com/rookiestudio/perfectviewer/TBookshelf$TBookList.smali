.class Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;
.super Landroid/widget/BaseAdapter;
.source "TBookshelf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TBookshelf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TBookList"
.end annotation


# instance fields
.field private FiltedBookArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TBookshelf;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    .line 484
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->FiltedBookArray:Ljava/util/ArrayList;

    .line 486
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->context:Landroid/content/Context;

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->FiltedBookArray:Ljava/util/ArrayList;

    .line 488
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->FiltedBookArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 524
    return-void
.end method

.method public DrawBookIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "aCanvas"
    .parameter "aBitmap"

    .prologue
    .line 558
    if-nez p2, :cond_0

    .line 570
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 562
    .local v1, width:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 567
    .local v0, height:I
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$9()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 568
    .local v2, x:F
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$10()I

    move-result v4

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$11()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v3, v4

    .line 569
    .local v3, y:F
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BMPPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$6(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public DrawBookSIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "aCanvas"
    .parameter "aBitmap"

    .prologue
    .line 588
    if-nez p2, :cond_0

    .line 597
    :goto_0
    return-void

    .line 591
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 592
    .local v9, width:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 593
    .local v8, height:I
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$12()F

    move-result v0

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$13()F

    move-result v1

    int-to-float v2, v9

    int-to-float v6, v8

    invoke-static {v0, v1, v2, v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->CalcBestFit(FFFF)F

    move-result v5

    .line 594
    .local v5, TmpSizeFactor:F
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$9()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v9

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v3, v0, v1

    .line 595
    .local v3, x:F
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$10()I

    move-result v0

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$11()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v8

    mul-float/2addr v1, v5

    sub-float v4, v0, v1

    .line 596
    .local v4, y:F
    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawResizedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFII)V

    goto :goto_0
.end method

.method public DrawBookTitle(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 12
    .parameter "aCanvas"
    .parameter "Title"

    .prologue
    .line 611
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    :cond_0
    return-void

    .line 614
    :cond_1
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$15(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$7()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 615
    .local v0, layout:Landroid/text/StaticLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v10

    .line 616
    .local v10, LineHeight:I
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    .line 617
    .local v9, LineCount:I
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$10()I

    move-result v1

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$11()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v1, v5

    int-to-float v4, v1

    .line 618
    .local v4, y:F
    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    .line 619
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$11()I

    move-result v1

    sub-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 621
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 623
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 624
    const/4 v1, 0x2

    if-ge v11, v1, :cond_0

    .line 627
    const/4 v1, 0x2

    if-le v9, v1, :cond_3

    const/4 v1, 0x1

    if-ne v11, v1, :cond_3

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x2

    sub-int/2addr v5, v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, lineText:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$9()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;
    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$15(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v1, v5

    const/high16 v5, 0x4000

    div-float v3, v1, v5

    .line 633
    .local v3, x:F
    sget v5, Lcom/rookiestudio/perfectviewer/Config;->BookshelfTitleEffect:I

    sget v6, Lcom/rookiestudio/perfectviewer/Config;->BookshelfTitleColor:I

    const/high16 v7, -0x100

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$15(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/text/TextPaint;

    move-result-object v8

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/rookiestudio/perfectviewer/TUtility;->DrawTextEx(Landroid/graphics/Canvas;Ljava/lang/String;FFIIILandroid/text/TextPaint;)V

    .line 634
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->MTextPaint:Landroid/text/TextPaint;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$15(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/text/TextPaint;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 635
    int-to-float v1, v10

    add-float/2addr v4, v1

    .line 623
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 630
    .end local v2           #lineText:Ljava/lang/String;
    .end local v3           #x:F
    :cond_3
    invoke-virtual {v0, v11}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v1

    invoke-virtual {v0, v11}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #lineText:Ljava/lang/String;
    goto :goto_1
.end method

.method public DrawDefaultBookIcon(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "aCanvas"

    .prologue
    .line 548
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->BookIconDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 549
    .local v9, width:I
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->BookIconDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 550
    .local v8, height:I
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$7()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$8()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v9

    int-to-float v6, v8

    invoke-static {v0, v1, v2, v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->CalcBestFit(FFFF)F

    move-result v5

    .line 551
    .local v5, TmpSizeFactor:F
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$9()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v9

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v3, v0, v1

    .line 552
    .local v3, x:F
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$10()I

    move-result v0

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$11()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v8

    mul-float/2addr v1, v5

    sub-float v4, v0, v1

    .line 553
    .local v4, y:F
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->BookIconDefault:Landroid/graphics/Bitmap;

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawResizedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFII)V

    .line 554
    return-void
.end method

.method public DrawFolderBookIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "aCanvas"
    .parameter "aBitmap"

    .prologue
    .line 574
    if-nez p2, :cond_0

    .line 584
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileIconBigFolder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 578
    .local v9, width:I
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileIconBigFolder:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 579
    .local v8, height:I
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$7()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$8()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v9

    int-to-float v6, v8

    invoke-static {v0, v1, v2, v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->CalcBestFit(FFFF)F

    move-result v5

    .line 580
    .local v5, TmpSizeFactor:F
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$9()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v9

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v3, v0, v1

    .line 581
    .local v3, x:F
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$10()I

    move-result v0

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$11()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v8

    mul-float/2addr v1, v5

    sub-float v4, v0, v1

    .line 582
    .local v4, y:F
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TBookshelf;->FileIconBigFolder:Landroid/graphics/Bitmap;

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawResizedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFII)V

    .line 583
    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawBookSIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public DrawReadMark(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "aCanvas"
    .parameter "aBitmap"

    .prologue
    .line 601
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 602
    .local v9, width:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 603
    .local v8, height:I
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$14()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$14()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v9

    int-to-float v6, v8

    invoke-static {v0, v1, v2, v6}, Lcom/rookiestudio/perfectviewer/TBitmap;->CalcBestFit(FFFF)F

    move-result v5

    .line 604
    .local v5, TmpSizeFactor:F
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$9()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v9

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v3, v0, v1

    .line 605
    .local v3, x:F
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$10()I

    move-result v0

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$11()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v8

    mul-float/2addr v1, v5

    sub-float v4, v0, v1

    .line 606
    .local v4, y:F
    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawResizedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFII)V

    .line 607
    return-void
.end method

.method public DrawResizedBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFFII)V
    .locals 8
    .parameter "aCanvas"
    .parameter "aBitmap"
    .parameter "x"
    .parameter "y"
    .parameter "SizeFactor"
    .parameter "Alpha"
    .parameter "Rotate"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 528
    if-nez p2, :cond_0

    .line 544
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BMPPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$6(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 532
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 533
    .local v3, width:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 534
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 535
    .local v5, matrix:Landroid/graphics/Matrix;
    if-lez p7, :cond_1

    .line 536
    const/high16 v0, 0x41c8

    invoke-virtual {v5, v0, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 537
    int-to-float v0, v3

    int-to-float v2, v4

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 539
    :cond_1
    invoke-virtual {v5, p5, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 540
    const/4 v6, 0x1

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 542
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BMPPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$6(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v7, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 543
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public UpdateBookshelfFilter()V
    .locals 6

    .prologue
    .line 708
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->FiltedBookArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 709
    sget-object v4, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    monitor-enter v4

    .line 711
    :try_start_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 712
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 709
    .end local v1           #i:I
    .end local v2           #l:I
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    return-void

    .line 713
    .restart local v1       #i:I
    .restart local v2       #l:I
    :cond_0
    :try_start_2
    sget-object v3, Lcom/rookiestudio/perfectviewer/TScanBookService;->BookArray:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    .line 714
    .local v0, aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->BookCate:Ljava/lang/String;

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfFilter:Ljava/lang/String;
    invoke-static {v5}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$1(Lcom/rookiestudio/perfectviewer/TBookshelf;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 715
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->FiltedBookArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 712
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    .end local v0           #aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    .end local v1           #i:I
    .end local v2           #l:I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 718
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->getCount2()I

    move-result v0

    .line 499
    .local v0, count:I
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$5()I

    move-result v2

    div-int v1, v0, v2

    .line 500
    .local v1, count2:I
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$5()I

    move-result v2

    rem-int v2, v0, v2

    if-lez v2, :cond_0

    .line 501
    add-int/lit8 v1, v1, 0x1

    .line 503
    :cond_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 504
    const/4 v1, 0x6

    .line 506
    :cond_1
    return v1
.end method

.method public getCount2()I
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->FiltedBookArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->FiltedBookArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 518
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->FiltedBookArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->getItem(I)Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 493
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    move-object/from16 v16, p2

    .line 703
    .end local p2
    .local v16, convertView:Landroid/view/View;
    :goto_0
    return-object v16

    .line 645
    .end local v16           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "layout_inflater"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 647
    .local v18, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$16()I

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 649
    .end local v18           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v24, 0x7f0c0024

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 650
    .local v6, FileIcon1:Landroid/widget/ImageView;
    const v24, 0x7f0c0025

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 651
    .local v7, FileIcon2:Landroid/widget/ImageView;
    const v24, 0x7f0c0026

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 652
    .local v8, FileIcon3:Landroid/widget/ImageView;
    const v24, 0x7f0c0028

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 653
    .local v9, FileIcon4:Landroid/widget/ImageView;
    const v24, 0x7f0c0029

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 654
    .local v10, FileIcon5:Landroid/widget/ImageView;
    const v24, 0x7f0c002a

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 655
    .local v11, FileIcon6:Landroid/widget/ImageView;
    const v24, 0x7f0c002b

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 656
    .local v12, FileIcon7:Landroid/widget/ImageView;
    const/16 v24, 0x7

    move/from16 v0, v24

    new-array v5, v0, [Landroid/widget/ImageView;

    const/16 v24, 0x0

    aput-object v6, v5, v24

    const/16 v24, 0x1

    aput-object v7, v5, v24

    const/16 v24, 0x2

    aput-object v8, v5, v24

    const/16 v24, 0x3

    aput-object v9, v5, v24

    const/16 v24, 0x4

    aput-object v10, v5, v24

    const/16 v24, 0x5

    aput-object v11, v5, v24

    const/16 v24, 0x6

    aput-object v12, v5, v24

    .line 657
    .local v5, FileIcon:[Landroid/widget/ImageView;
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$5()I

    move-result v24

    mul-int v4, p1, v24

    .line 658
    .local v4, CurrentPosi:I
    invoke-virtual/range {p0 .. p0}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->getCount2()I

    move-result v3

    .line 659
    .local v3, BookCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$5()I

    move-result v24

    move/from16 v0, v17

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    .line 698
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    move-object/from16 v24, v0

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static/range {v24 .. v24}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$17(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v24

    if-eqz v24, :cond_3

    .line 699
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$18()Landroid/widget/AbsListView$LayoutParams;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    move-object/from16 v24, v0

    #getter for: Lcom/rookiestudio/perfectviewer/TBookshelf;->BookshelfBG:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static/range {v24 .. v24}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$17(Lcom/rookiestudio/perfectviewer/TBookshelf;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    move-object/from16 v16, p2

    .line 703
    .end local p2
    .restart local v16       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 660
    .end local v16           #convertView:Landroid/view/View;
    .restart local p2
    :cond_4
    aget-object v24, v5, v17

    if-eqz v24, :cond_2

    .line 663
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$9()I

    move-result v24

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TBookshelf;->access$10()I

    move-result v25

    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v24 .. v26}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 664
    .local v13, ItemBMP:Landroid/graphics/Bitmap;
    if-lt v4, v3, :cond_5

    .line 665
    aget-object v24, v5, v17

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 668
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->getItem(I)Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;

    move-result-object v15

    .line 669
    .local v15, aBookData:Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14}, Landroid/graphics/Canvas;-><init>()V

    .line 670
    .local v14, ItemCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v14, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 671
    iget-boolean v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->IsDirectory:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    .line 672
    invoke-virtual {v15}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawFolderBookIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 680
    :goto_3
    iget v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ReadPage:I

    move/from16 v24, v0

    if-gtz v24, :cond_6

    iget v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ReadPage:I

    move/from16 v24, v0

    if-gez v24, :cond_8

    :cond_6
    sget-boolean v24, Lcom/rookiestudio/perfectviewer/Config;->ShowReadMark:Z

    if-eqz v24, :cond_8

    .line 681
    iget v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ReadPage:I

    move/from16 v24, v0

    iget v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->TotalPage:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    iget v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ReadPage:I

    move/from16 v24, v0

    if-gez v24, :cond_b

    .line 682
    :cond_7
    sget-object v24, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v25, 0x7f02007e

    invoke-static/range {v24 .. v25}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawReadMark(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 689
    :cond_8
    :goto_4
    iget-object v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->Title:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawBookTitle(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 690
    new-instance v19, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v15}, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;-><init>(Lcom/rookiestudio/perfectviewer/TBookshelf;Landroid/content/Context;Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)V

    .line 691
    .local v19, obListener:Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;
    aget-object v24, v5, v17

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    new-instance v20, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelf;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v15}, Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;-><init>(Lcom/rookiestudio/perfectviewer/TBookshelf;Landroid/content/Context;Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;)V

    .line 693
    .local v20, obListener2:Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;
    aget-object v24, v5, v17

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 694
    aget-object v24, v5, v17

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 695
    aget-object v24, v5, v17

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 696
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 674
    .end local v19           #obListener:Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookListerer;
    .end local v20           #obListener2:Lcom/rookiestudio/perfectviewer/TBookshelf$OpenBookLongListerer;
    :cond_9
    iget-object v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ThumbImageData:[B

    move-object/from16 v24, v0

    if-nez v24, :cond_a

    .line 675
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawDefaultBookIcon(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 677
    :cond_a
    invoke-virtual {v15}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawBookIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 684
    :cond_b
    iget v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->ReadPage:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    iget v0, v15, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookData;->TotalPage:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v21, v24, v26

    .line 685
    .local v21, p:D
    const-wide/high16 v24, 0x4022

    mul-double v24, v24, v21

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    .line 686
    .local v23, p2:I
    sget-object v24, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v25, 0x7f020080

    add-int v25, v25, v23

    invoke-static/range {v24 .. v25}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/rookiestudio/perfectviewer/TBookshelf$TBookList;->DrawReadMark(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto/16 :goto_4
.end method
