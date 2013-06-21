.class public Lcom/jellybus/fx/Activity_TimeMatrix;
.super Landroid/app/Activity;
.source "Activity_TimeMatrix.java"


# instance fields
.field private bg_mid:Landroid/widget/ImageView;

.field private bg_top:Landroid/widget/ImageView;

.field private controller_listener:Landroid/view/View$OnTouchListener;

.field private empty_view:Landroid/widget/ImageView;

.field private filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

.field private filterID:I

.field private filter_listener:Landroid/view/View$OnClickListener;

.field private final handler:Landroid/os/Handler;

.field private isProcess:Z

.field private isViewSet:Z

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private options:Landroid/graphics/BitmapFactory$Options;

.field private preview:Landroid/graphics/Bitmap;

.field private final process_handler:Landroid/os/Handler;

.field private processed_first:Landroid/graphics/Bitmap;

.field private processed_second:Landroid/graphics/Bitmap;

.field private processed_third:Landroid/graphics/Bitmap;

.field private texture:Landroid/graphics/Bitmap;

.field private thumbnail:Landroid/graphics/Bitmap;

.field private time_controller:Lcom/jellybus/fx_sub/TimeControllView;

.field private time_filter_bg_layout:Landroid/widget/LinearLayout;

.field private time_filter_layout:Landroid/widget/LinearLayout;

.field private time_picture:Landroid/widget/ImageView;

.field private time_text_first:Landroid/widget/TextView;

.field private time_text_second:Landroid/widget/TextView;

.field private time_text_third:Landroid/widget/TextView;

.field private time_thumb_first:Landroid/widget/ImageView;

.field private time_thumb_second:Landroid/widget/ImageView;

.field private time_thumb_third:Landroid/widget/ImageView;

.field private year_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    .line 54
    new-instance v0, Lcom/jellybus/fx_sub/FilterAdapter;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/FilterAdapter;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/jellybus/fx/Activity_TimeMatrix$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_TimeMatrix$1;-><init>(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->handler:Landroid/os/Handler;

    .line 192
    new-instance v0, Lcom/jellybus/fx/Activity_TimeMatrix$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_TimeMatrix$2;-><init>(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filter_listener:Landroid/view/View$OnClickListener;

    .line 246
    new-instance v0, Lcom/jellybus/fx/Activity_TimeMatrix$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_TimeMatrix$3;-><init>(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->controller_listener:Landroid/view/View$OnTouchListener;

    .line 281
    new-instance v0, Lcom/jellybus/fx/Activity_TimeMatrix$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_TimeMatrix$4;-><init>(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->process_handler:Landroid/os/Handler;

    .line 475
    new-instance v0, Lcom/jellybus/fx/Activity_TimeMatrix$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_TimeMatrix$5;-><init>(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->none_listener:Landroid/view/View$OnTouchListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->bg_top:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_TimeMatrix;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterID:I

    return-void
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/FilterAdapter;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_TimeMatrix;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterID:I

    return v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_TimeMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->setSingleProcess()V

    return-void
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_TimeMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->setFilterLayout()V

    return-void
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_TimeMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->setProcess()V

    return-void
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->empty_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_TimeMatrix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->isViewSet:Z

    return-void
.end method

.method static synthetic access$19(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->bg_mid:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jellybus/fx/Activity_TimeMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->removeBitmap()V

    return-void
.end method

.method static synthetic access$21(Lcom/jellybus/fx/Activity_TimeMatrix;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->isProcess:Z

    return v0
.end method

.method static synthetic access$22(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->process_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jellybus/fx/Activity_TimeMatrix;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->isProcess:Z

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_bg_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_first:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_second:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_third:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_first:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_second:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_third:Landroid/widget/TextView;

    return-object v0
.end method

.method private getBitmap()V
    .locals 4

    .prologue
    .line 172
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    .line 173
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 176
    sget v0, Lcom/jellybus/fx_sub/PictureController;->thumb_w:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->thumb_h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    .line 177
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/jellybus/fx_sub/PictureController;->thumb_w:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->thumb_h:I

    invoke-static {v0, v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setResizeBilinearThumbnail(IIII)V

    .line 178
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 179
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 180
    return-void
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_first:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 439
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_second:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 440
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_third:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 443
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 444
    iput-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    iput-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->removeThumbBitmap()V

    .line 451
    return-void
.end method

.method private removeTextureBitmap()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    .line 471
    :cond_0
    return-void
.end method

.method private removeThumbBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_first:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_first:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 455
    iput-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_first:Landroid/graphics/Bitmap;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_second:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_second:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 459
    iput-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_second:Landroid/graphics/Bitmap;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_third:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_third:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 463
    iput-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_third:Landroid/graphics/Bitmap;

    .line 465
    :cond_2
    return-void
.end method

.method private setFilterLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 309
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;

    iget v1, v1, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    const/16 v2, 0x7ad

    if-ge v1, v2, :cond_0

    .line 310
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;

    iget v1, v1, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_bg_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_bg_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    return-void

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;

    iget v1, v1, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private setProcess()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 360
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->removeThumbBitmap()V

    .line 361
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_first:Landroid/graphics/Bitmap;

    .line 362
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_second:Landroid/graphics/Bitmap;

    .line 363
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_third:Landroid/graphics/Bitmap;

    .line 365
    invoke-direct {p0, v4}, Lcom/jellybus/fx/Activity_TimeMatrix;->startProcess(I)V

    .line 366
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_first:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 367
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_first:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_first:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_first:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "No. "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget v0, v0, Lcom/jellybus/fx_sub/Filter;->filterID:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-direct {p0, v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->startProcess(I)V

    .line 371
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_second:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 372
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_second:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_second:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_second:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "No. "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget v0, v0, Lcom/jellybus/fx_sub/Filter;->filterID:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-direct {p0, v6}, Lcom/jellybus/fx/Activity_TimeMatrix;->startProcess(I)V

    .line 376
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_third:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 377
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_third:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_third:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_third:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "No. "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget v0, v0, Lcom/jellybus/fx_sub/Filter;->filterID:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void
.end method

.method private setSingleProcess()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 323
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->removeThumbBitmap()V

    .line 324
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_first:Landroid/graphics/Bitmap;

    .line 325
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_second:Landroid/graphics/Bitmap;

    .line 326
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_third:Landroid/graphics/Bitmap;

    .line 328
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 330
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 337
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    iget v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 339
    invoke-direct {p0, v5}, Lcom/jellybus/fx/Activity_TimeMatrix;->startProcess(I)V

    .line 340
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_first:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 341
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_first:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_first:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 342
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_first:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "No. "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget v1, v1, Lcom/jellybus/fx_sub/Filter;->filterID:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-direct {p0, v6}, Lcom/jellybus/fx/Activity_TimeMatrix;->startProcess(I)V

    .line 346
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_second:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 347
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_second:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_second:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_second:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "No. "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget v1, v1, Lcom/jellybus/fx_sub/Filter;->filterID:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-direct {p0, v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->startProcess(I)V

    .line 352
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_third:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 353
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_third:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->processed_third:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_third:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "No. "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget v1, v1, Lcom/jellybus/fx_sub/Filter;->filterID:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    return-void

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget v1, v1, Lcom/jellybus/fx_sub/Filter;->startY:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;

    iget v2, v2, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;

    iget v2, v1, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget v1, v1, Lcom/jellybus/fx_sub/Filter;->endY:I

    if-gt v2, v1, :cond_2

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget v1, v1, Lcom/jellybus/fx_sub/Filter;->filterID:I

    iget v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterID:I

    if-eq v1, v2, :cond_2

    .line 332
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private setTexture(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Concrete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020088

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Dirt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Daguerreo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009d

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Aged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d2

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 406
    :cond_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "80s Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 407
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020126

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Overdue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 409
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020128

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 410
    :cond_6
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Sack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 411
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012d

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 412
    :cond_7
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Vertigo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 413
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020089

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 414
    :cond_8
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Scratching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 415
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020136

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 416
    :cond_9
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Slasher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 417
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020135

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 418
    :cond_a
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Old Paper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 419
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020210

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 420
    :cond_b
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Storm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 421
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020211

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 422
    :cond_c
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    const-string v1, "Bark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009f

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private startProcess(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 383
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 384
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 386
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    const-string v1, "Grunge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v0, v0, Lcom/jellybus/fx_sub/Filter;->needTexture:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_TimeMatrix;->setTexture(I)V

    .line 389
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setBlurIndex(Landroid/graphics/Bitmap;)V

    .line 390
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->removeTextureBitmap()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 394
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 395
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 507
    iget-boolean v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->isViewSet:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->isProcess:Z

    if-nez v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->process_handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->process_handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_bg_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 517
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeThumnailIndex()V

    .line 518
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->removeBitmap()V

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->startActivity(Landroid/content/Intent;)V

    .line 522
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->finish()V

    .line 523
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->overridePendingTransition(II)V

    .line 525
    .end local v0           #intent_main:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->requestWindowFeature(I)Z

    .line 73
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 77
    const v0, 0x7f0600f8

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_layout:Landroid/widget/LinearLayout;

    .line 78
    const v0, 0x7f0600f3

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_bg_layout:Landroid/widget/LinearLayout;

    .line 80
    const v0, 0x7f0600f2

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_picture:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0600f7

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/TimeControllView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;

    .line 83
    const v0, 0x7f0600f9

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_first:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0600fa

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_second:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f0600fb

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_third:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0600fc

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_first:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0600fd

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_second:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0600fe

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_text_third:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0600f4

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->bg_top:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0600f5

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->bg_mid:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->empty_view:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 101
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 102
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->options:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 104
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->getBitmap()V

    .line 105
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_picture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_first:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filter_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_second:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filter_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_thumb_third:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->filter_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->controller_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/TimeControllView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v0, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 531
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 532
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 534
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 536
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 538
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 540
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 542
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 544
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 548
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 549
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 550
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 551
    :cond_0
    return-void
.end method

.method public time_button_cancel_listener(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 485
    iget-boolean v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->isProcess:Z

    if-nez v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->process_handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->process_handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_bg_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 495
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeThumnailIndex()V

    .line 496
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->removeBitmap()V

    .line 498
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_TimeMatrix;->startActivity(Landroid/content/Intent;)V

    .line 500
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_TimeMatrix;->finish()V

    .line 501
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_TimeMatrix;->overridePendingTransition(II)V

    .line 503
    .end local v0           #intent_main:Landroid/content/Intent;
    :cond_1
    return-void
.end method
