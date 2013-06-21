.class public Lcom/jellybus/fx/Activity_Color_Histogram;
.super Landroid/app/Activity;
.source "Activity_Color_Histogram.java"


# instance fields
.field private final apply_handler:Landroid/os/Handler;

.field auto_end:I

.field auto_start:I

.field private buttonH:I

.field buttonTouchListener:Landroid/view/View$OnTouchListener;

.field private buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;

.field private buttonW:I

.field private button_layout:Landroid/widget/RelativeLayout;

.field private compare:Landroid/graphics/Bitmap;

.field private compare_listener:Landroid/view/View$OnTouchListener;

.field private country:Ljava/lang/String;

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private end:I

.field private graphH:I

.field private graphW:I

.field private final handler:Landroid/os/Handler;

.field private histogram_button_compare:Landroid/widget/ImageView;

.field private histogram_compare_info:Landroid/widget/TextView;

.field private histogram_info_layout:Landroid/widget/LinearLayout;

.field private histogram_info_webview:Landroid/webkit/WebView;

.field private histogram_pic:Landroid/widget/ImageView;

.field private histogram_sub_layout:Landroid/widget/RelativeLayout;

.field private image_layout:Landroid/widget/RelativeLayout;

.field private isLine:Z

.field private isSubOn:Z

.field private isViewSet:Z

.field private mChartView:Lorg/achartengine/GraphicalView;

.field private middle:I

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private preview:Landroid/graphics/Bitmap;

.field private start:I

.field uiTouchListener:Landroid/view/View$OnTouchListener;

.field private uiView:Lcom/jellybus/fx_sub/HistogramGraphView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Histogram$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Histogram$1;-><init>(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->handler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Histogram$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Histogram$2;-><init>(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->none_listener:Landroid/view/View$OnTouchListener;

    .line 174
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Histogram$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Histogram$3;-><init>(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare_listener:Landroid/view/View$OnTouchListener;

    .line 212
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Histogram$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Histogram$4;-><init>(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiTouchListener:Landroid/view/View$OnTouchListener;

    .line 245
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Histogram$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Histogram$5;-><init>(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    .line 507
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Histogram$6;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Histogram$6;-><init>(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->apply_handler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->image_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Color_Histogram;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->graphW:I

    return-void
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Color_Histogram;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->graphW:I

    return v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Color_Histogram;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->graphH:I

    return v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Color_Histogram;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->isViewSet:Z

    return-void
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_button_compare:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_compare_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_sub_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Color_Histogram;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->graphH:I

    return-void
.end method

.method static synthetic access$20(Lcom/jellybus/fx/Activity_Color_Histogram;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->isSubOn:Z

    return-void
.end method

.method static synthetic access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jellybus/fx/Activity_Color_Histogram;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->isSubOn:Z

    return v0
.end method

.method static synthetic access$23(Lcom/jellybus/fx/Activity_Color_Histogram;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->isLine:Z

    return-void
.end method

.method static synthetic access$24(Lcom/jellybus/fx/Activity_Color_Histogram;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->isLine:Z

    return v0
.end method

.method static synthetic access$25(Lcom/jellybus/fx/Activity_Color_Histogram;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->setHistogram()V

    return-void
.end method

.method static synthetic access$26(Lcom/jellybus/fx/Activity_Color_Histogram;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removeSubBitmap()V

    return-void
.end method

.method static synthetic access$27(Lcom/jellybus/fx/Activity_Color_Histogram;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$28(Lcom/jellybus/fx/Activity_Color_Histogram;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removeBitmap()V

    return-void
.end method

.method static synthetic access$29(Lcom/jellybus/fx/Activity_Color_Histogram;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->start:I

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Color_Histogram;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->setHistogramInfo()V

    return-void
.end method

.method static synthetic access$30(Lcom/jellybus/fx/Activity_Color_Histogram;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->end:I

    return-void
.end method

.method static synthetic access$31(Lcom/jellybus/fx/Activity_Color_Histogram;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I

    return-void
.end method

.method static synthetic access$32(Lcom/jellybus/fx/Activity_Color_Histogram;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->start:I

    return v0
.end method

.method static synthetic access$33(Lcom/jellybus/fx/Activity_Color_Histogram;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->end:I

    return v0
.end method

.method static synthetic access$34(Lcom/jellybus/fx/Activity_Color_Histogram;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I

    return v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->button_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Color_Histogram;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonW:I

    return-void
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Color_Histogram;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonH:I

    return-void
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Color_Histogram;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonW:I

    return v0
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Color_Histogram;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonH:I

    return v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramButtonView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;

    return-object v0
.end method

.method private clearWebView()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 470
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_webview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 471
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 472
    return-void
.end method

.method private getAutoIndex()V
    .locals 9

    .prologue
    const/16 v8, 0x32

    .line 312
    sget v4, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v4, v5}, Lcom/jellybus/fx/Juliet;->histogramGraph(II)[I

    move-result-object v1

    .line 315
    .local v1, index:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-lt v0, v4, :cond_0

    .line 321
    :goto_1
    array-length v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, j:I
    :goto_2
    if-gez v2, :cond_2

    .line 329
    :goto_3
    iget v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->graphW:I

    add-int/lit8 v4, v4, -0xa

    int-to-float v4, v4

    const/high16 v5, 0x437f

    div-float v3, v4, v5

    .line 332
    .local v3, ratio:F
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    iget v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->auto_start:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget v6, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->auto_end:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/jellybus/fx_sub/HistogramGraphView;->setAutoPosition(FF)V

    .line 334
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;

    iget v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->auto_start:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    iget-object v6, v6, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget v7, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->auto_end:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/jellybus/fx_sub/HistogramButtonView;->setAutoPosition(FFF)V

    .line 336
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    invoke-virtual {v4}, Lcom/jellybus/fx_sub/HistogramGraphView;->invalidate()V

    .line 337
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;

    invoke-virtual {v4}, Lcom/jellybus/fx_sub/HistogramButtonView;->invalidate()V

    .line 340
    iget v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->auto_start:I

    iget v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->auto_end:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v8, v4, v5, v6, v7}, Lcom/jellybus/fx/Juliet;->setHistogramWithPercentAllIndex(IIIII)V

    .line 343
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removePreviewBitmap()V

    .line 344
    sget v4, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    .line 345
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v6}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 346
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 349
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 350
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 351
    return-void

    .line 316
    .end local v2           #j:I
    .end local v3           #ratio:F
    :cond_0
    aget v4, v1, v0

    if-le v4, v8, :cond_1

    .line 317
    add-int/lit8 v4, v0, 0xa

    iput v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->auto_start:I

    goto :goto_1

    .line 315
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 322
    .restart local v2       #j:I
    :cond_2
    aget v4, v1, v2

    if-le v4, v8, :cond_3

    .line 323
    iput v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->auto_end:I

    goto/16 :goto_3

    .line 321
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2
.end method

.method private getBitmap()V
    .locals 3

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removeBitmap()V

    .line 411
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    .line 412
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 414
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    .line 415
    return-void
.end method

.method private getDataset([I)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 8
    .parameter "data"

    .prologue
    .line 357
    new-instance v0, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 358
    .local v0, dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    new-instance v3, Lorg/achartengine/model/XYSeries;

    const-string v4, "Demo series 1"

    invoke-direct {v3, v4}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 359
    .local v3, series:Lorg/achartengine/model/XYSeries;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    .line 365
    return-object v0

    .line 360
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p1

    if-lt v1, v4, :cond_1

    .line 363
    invoke-virtual {v0, v3}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_1
    int-to-double v4, v1

    aget v6, p1, v1

    int-to-double v6, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 4

    .prologue
    const/16 v3, 0xff

    .line 370
    new-instance v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 371
    .local v1, renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    new-instance v0, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v0}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 372
    .local v0, r:Lorg/achartengine/renderer/XYSeriesRenderer;
    const/16 v2, 0xc8

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 373
    sget-object v2, Lorg/achartengine/chart/PointStyle;->SQUARE:Lorg/achartengine/chart/PointStyle;

    invoke-virtual {v0, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setPointStyle(Lorg/achartengine/chart/PointStyle;)V

    .line 374
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillBelowLine(Z)V

    .line 375
    const/16 v2, 0x96

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillBelowLineColor(I)V

    .line 376
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillPoints(Z)V

    .line 377
    invoke-virtual {v1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 378
    const/4 v2, 0x4

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 379
    return-object v1
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    .line 428
    :cond_1
    return-void
.end method

.method private removePreviewBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    .line 435
    :cond_0
    return-void
.end method

.method private removeSubBitmap()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/HistogramGraphView;->removeBitmap()V

    .line 439
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/HistogramButtonView;->removeBitmap()V

    .line 440
    return-void
.end method

.method private setHistogram()V
    .locals 6

    .prologue
    .line 279
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    iget-object v1, v1, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0xa

    iput v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->start:I

    .line 280
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    iget-object v1, v1, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->end:I

    .line 281
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/HistogramGraphView;->getCenterX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I

    .line 283
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->start:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->end:I

    const/16 v2, 0x184

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I

    const/16 v2, 0xc7

    if-eq v1, v2, :cond_2

    .line 287
    :cond_0
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->end:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 288
    const/high16 v1, 0x437f

    iget v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->graphW:I

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 289
    .local v0, ratio:F
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->end:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->end:I

    .line 290
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I

    .line 293
    .end local v0           #ratio:F
    :cond_1
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I

    iget v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->start:I

    iget v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->end:I

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->getPercentValue(III)I

    move-result v1

    iput v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I

    .line 295
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I

    iget v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->start:I

    iget v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->end:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/jellybus/fx/Juliet;->setHistogramWithPercentAllIndex(IIIII)V

    .line 297
    :cond_2
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removePreviewBitmap()V

    .line 298
    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    .line 299
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 300
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 304
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 306
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->isLine:Z

    .line 307
    return-void
.end method

.method private setHistogramInfo()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;
    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v3, v4}, Lcom/jellybus/fx/Juliet;->histogramGraph(II)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jellybus/fx/Activity_Color_Histogram;->getDataset([I)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v0

    .line 387
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v1

    .line 388
    .local v1, mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPointSize(F)V

    .line 389
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAntialiasing(Z)V

    .line 390
    invoke-virtual {v1, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowAxes(Z)V

    .line 391
    invoke-virtual {v1, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLabels(Z)V

    .line 392
    invoke-virtual {v1, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    .line 393
    invoke-virtual {v1, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setFitLegend(Z)V

    .line 396
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->graphW:I

    add-int/lit8 v3, v3, -0x14

    iget v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->graphH:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 397
    .local v2, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x2

    invoke-virtual {v2, v6, v3, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 398
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->image_layout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->mChartView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 399
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->mChartView:Lorg/achartengine/GraphicalView;

    .line 400
    invoke-static {p0, v0, v1}, Lorg/achartengine/ChartFactory;->getLineChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)Lorg/achartengine/GraphicalView;

    move-result-object v3

    iput-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->mChartView:Lorg/achartengine/GraphicalView;

    .line 401
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->mChartView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v3, v2}, Lorg/achartengine/GraphicalView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->image_layout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->mChartView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 403
    return-void
.end method


# virtual methods
.method public histogramAutoListener(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->getAutoIndex()V

    .line 503
    return-void
.end method

.method public histogramInfoListener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->country:Ljava/lang/String;

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/histogram_kr.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 466
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->country:Ljava/lang/String;

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/histogram_jp.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/histogram_en.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public histogramResetListener(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 484
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removePreviewBitmap()V

    .line 485
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 486
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 488
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/HistogramGraphView;->resetPoint()V

    .line 489
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/HistogramButtonView;->resetPoint()V

    .line 491
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    .line 492
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Reset"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 496
    .local v0, reset:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 497
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 498
    return-void
.end method

.method public histogram_button_apply_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 572
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 573
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 577
    return-void
.end method

.method public histogram_button_cancel_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 583
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 587
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 588
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removeBitmap()V

    .line 589
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removeSubBitmap()V

    .line 591
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 592
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->startActivity(Landroid/content/Intent;)V

    .line 593
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->finish()V

    .line 594
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->overridePendingTransition(II)V

    .line 595
    return-void
.end method

.method public histogram_button_sub_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 444
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_sub_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_sub_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 446
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f0200c0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    iput-boolean v2, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->isSubOn:Z

    .line 453
    :goto_0
    return-void

    .line 449
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_sub_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 450
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f0200c1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->isSubOn:Z

    goto :goto_0
.end method

.method public histogram_info_button_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->clearWebView()V

    .line 476
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    return-void
.end method

.method public info_none_listener(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 171
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 600
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->clearWebView()V

    .line 602
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_layout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    iget-boolean v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->isViewSet:Z

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 609
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 610
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removeBitmap()V

    .line 611
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->removeSubBitmap()V

    .line 613
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->startActivity(Landroid/content/Intent;)V

    .line 615
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->finish()V

    .line 616
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Color_Histogram;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 79
    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0600a2

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_button_compare:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f06009c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_sub_layout:Landroid/widget/RelativeLayout;

    .line 83
    const v0, 0x7f06009d

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->image_layout:Landroid/widget/RelativeLayout;

    .line 84
    const v0, 0x7f06009e

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->button_layout:Landroid/widget/RelativeLayout;

    .line 86
    const v0, 0x7f06009f

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_compare_info:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0600a4

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_layout:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f0600a5

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_webview:Landroid/webkit/WebView;

    .line 90
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_info_webview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->country:Ljava/lang/String;

    .line 95
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Histogram;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_text_view:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 98
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_button_compare:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->compare_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    new-instance v0, Lcom/jellybus/fx_sub/HistogramGraphView;

    invoke-direct {v0, p0}, Lcom/jellybus/fx_sub/HistogramGraphView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    .line 112
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->uiTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/HistogramGraphView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    new-instance v0, Lcom/jellybus/fx_sub/HistogramButtonView;

    invoke-direct {v0, p0}, Lcom/jellybus/fx_sub/HistogramButtonView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;

    .line 116
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonView:Lcom/jellybus/fx_sub/HistogramButtonView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->buttonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/HistogramButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Histogram;->getBitmap()V

    .line 120
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->histogram_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Histogram;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 624
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 625
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 626
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 628
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 630
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 632
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 634
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 636
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 638
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 642
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 643
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 644
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 645
    :cond_0
    return-void
.end method
