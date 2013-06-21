.class public Lcom/jellybus/fx/Activity_Color_Color;
.super Landroid/app/Activity;
.source "Activity_Color_Color.java"


# instance fields
.field private final apply_handler:Landroid/os/Handler;

.field private color_button_compare:Landroid/widget/ImageView;

.field private color_compare_info:Landroid/widget/TextView;

.field private color_icon_first:Landroid/widget/ImageView;

.field private color_icon_second:Landroid/widget/ImageView;

.field private color_pic:Landroid/widget/ImageView;

.field private color_seekbar_first:Landroid/widget/SeekBar;

.field private color_seekbar_second:Landroid/widget/SeekBar;

.field private color_seekbar_txt1:Landroid/widget/TextView;

.field private color_seekbar_txt2:Landroid/widget/TextView;

.field private color_sub_layout:Landroid/widget/LinearLayout;

.field private color_text_title:Landroid/widget/TextView;

.field private color_value:Landroid/widget/TextView;

.field private compare:Landroid/graphics/Bitmap;

.field public compare_Listener:Landroid/view/View$OnTouchListener;

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private gap:I

.field private icon_Listener:Landroid/view/View$OnClickListener;

.field private isReset:Z

.field private isSubOn:Z

.field private menu_index:Ljava/lang/String;

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private preview:Landroid/graphics/Bitmap;

.field private progress_Listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private temp_int:I

.field private temp_string:Ljava/lang/String;

.field private value_first:I

.field private value_second:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 175
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Color$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Color$1;-><init>(Lcom/jellybus/fx/Activity_Color_Color;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->none_listener:Landroid/view/View$OnTouchListener;

    .line 185
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Color$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Color$2;-><init>(Lcom/jellybus/fx/Activity_Color_Color;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->progress_Listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 274
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Color$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Color$3;-><init>(Lcom/jellybus/fx/Activity_Color_Color;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->icon_Listener:Landroid/view/View$OnClickListener;

    .line 303
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Color$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Color$4;-><init>(Lcom/jellybus/fx/Activity_Color_Color;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare_Listener:Landroid/view/View$OnTouchListener;

    .line 417
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Color$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Color$5;-><init>(Lcom/jellybus/fx/Activity_Color_Color;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->apply_handler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Color_Color;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Color;->setProgressValue()V

    return-void
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Color_Color;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    return-void
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Color_Color;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Color_Color;->isReset:Z

    return-void
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_button_compare:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_compare_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_sub_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jellybus/fx/Activity_Color_Color;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Color_Color;->isSubOn:Z

    return-void
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Color_Color;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jellybus/fx/Activity_Color_Color;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->isSubOn:Z

    return v0
.end method

.method static synthetic access$22(Lcom/jellybus/fx/Activity_Color_Color;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Color;->removeBitmap()V

    return-void
.end method

.method static synthetic access$23(Lcom/jellybus/fx/Activity_Color_Color;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$24(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_text_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/jellybus/fx/Activity_Color_Color;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Color_Color;->setEffect(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Color_Color;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Color;->gap:I

    return-void
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Color_Color;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Color_Color;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->gap:I

    return v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Color_Color;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I

    return-void
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Color_Color;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Color_Color;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I

    return v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Color_Color;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    return-void
.end method

.method private getBitmap()V
    .locals 3

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Color;->removeBitmap()V

    .line 381
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    .line 382
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 384
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    .line 385
    return-void
.end method

.method private getIntentValue()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Color;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "menuID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    .line 172
    return-void
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 403
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 406
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 411
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    .line 413
    :cond_1
    return-void
.end method

.method private removePreviewBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 398
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 399
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    .line 401
    :cond_0
    return-void
.end method

.method private setEffect(Z)V
    .locals 6
    .parameter "isPreview"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4120

    .line 333
    if-eqz p1, :cond_4

    .line 334
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v2, "Exposure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    iget v2, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    int-to-float v2, v2

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v1, v2, v3, v4}, Lcom/jellybus/fx/Juliet;->setContrastBrightnessAllIndex(IFII)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v2, "Color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v1, v2, v3, v4}, Lcom/jellybus/fx/Juliet;->setHueSaturationAllIndex(FFII)V

    goto :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v2, "White Balance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    int-to-float v1, v1

    div-float v0, v1, v4

    .line 341
    .local v0, range:F
    cmpl-float v1, v0, v5

    if-eqz v1, :cond_3

    .line 342
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setWhiteBalanceAllIndex(FII)V

    .line 343
    :cond_3
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    int-to-float v1, v1

    div-float v0, v1, v4

    .line 344
    cmpl-float v1, v0, v5

    if-eqz v1, :cond_0

    .line 345
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setTintAllIndex(FII)V

    goto :goto_0

    .line 348
    .end local v0           #range:F
    :cond_4
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v2, "Exposure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 349
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    iget v2, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    int-to-float v2, v2

    sget v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v1, v2, v3, v4}, Lcom/jellybus/fx/Juliet;->setContrastBrightnessAllIndex(IFII)V

    goto :goto_0

    .line 350
    :cond_5
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v2, "Color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 351
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    sget v3, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v1, v2, v3, v4}, Lcom/jellybus/fx/Juliet;->setHueSaturationAllIndex(FFII)V

    goto :goto_0

    .line 352
    :cond_6
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v2, "White Balance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    int-to-float v1, v1

    div-float v0, v1, v4

    .line 355
    .restart local v0       #range:F
    cmpl-float v1, v0, v5

    if-eqz v1, :cond_7

    .line 356
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget v2, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setWhiteBalanceAllIndex(FII)V

    .line 357
    :cond_7
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    int-to-float v1, v1

    div-float v0, v1, v4

    .line 358
    cmpl-float v1, v0, v5

    if-eqz v1, :cond_0

    .line 359
    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget v2, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setTintAllIndex(FII)V

    goto/16 :goto_0
.end method

.method private setJNIPreview()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Color;->removePreviewBitmap()V

    .line 390
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 391
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 392
    return-void
.end method

.method private setProgressValue()V
    .locals 3

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Color;->setJNIPreview()V

    .line 245
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->isReset:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v1, "Exposure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;

    const v1, 0x7f050053

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    .line 266
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->setEffect(Z)V

    .line 267
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    .line 268
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 269
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;

    const v1, 0x7f050054

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v1, "Color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;

    const v1, 0x7f050056

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;

    const v1, 0x7f050055

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    goto :goto_0

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v1, "White Balance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;

    const v1, 0x7f050057

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_first:I

    goto/16 :goto_0

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;

    const v1, 0x7f050058

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->value_second:I

    goto/16 :goto_0
.end method


# virtual methods
.method public color_button_apply_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 470
    return-void
.end method

.method public color_button_cancel_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 477
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 481
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 482
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Color;->removeBitmap()V

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->startActivity(Landroid/content/Intent;)V

    .line 485
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Color;->finish()V

    .line 486
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Color_Color;->overridePendingTransition(II)V

    .line 487
    return-void
.end method

.method public color_button_sub_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_sub_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_sub_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f0200c0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    iput-boolean v2, p0, Lcom/jellybus/fx/Activity_Color_Color;->isSubOn:Z

    .line 376
    :goto_0
    return-void

    .line 372
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_sub_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f0200c1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->isSubOn:Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 495
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 496
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Color;->removeBitmap()V

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->startActivity(Landroid/content/Intent;)V

    .line 499
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Color;->finish()V

    .line 500
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Color_Color;->overridePendingTransition(II)V

    .line 501
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0xc8

    const/16 v5, 0x14

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Color;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 77
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Color;->getIntentValue()V

    .line 79
    const v0, 0x7f060080

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_sub_layout:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_sub_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    const v0, 0x7f06007f

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_text_title:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f060083

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_first:Landroid/widget/ImageView;

    .line 85
    const v0, 0x7f060086

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_second:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f060084

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    .line 87
    const v0, 0x7f060087

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    .line 89
    const v0, 0x7f060085

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_txt1:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_txt2:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f060081

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_value:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f060089

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_compare_info:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f06008c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_button_compare:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 98
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 100
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_view:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Color;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_text_view:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 103
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Color;->getBitmap()V

    .line 111
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 112
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v1, "Exposure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_text_title:Landroid/widget/TextView;

    const v1, 0x7f050032

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_first:Landroid/widget/ImageView;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 122
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_second:Landroid/widget/ImageView;

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 125
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 127
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_txt1:Landroid/widget/TextView;

    const v1, 0x7f050053

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_txt2:Landroid/widget/TextView;

    const v1, 0x7f050054

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->progress_Listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->progress_Listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_first:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->icon_Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_second:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->icon_Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_button_compare:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare_Listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color;->compare_Listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v1, "Color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_text_title:Landroid/widget/TextView;

    const v1, 0x7f050033

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_first:Landroid/widget/ImageView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 135
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_second:Landroid/widget/ImageView;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 138
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 139
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 140
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 141
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_txt1:Landroid/widget/TextView;

    const v1, 0x7f050056

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_txt2:Landroid/widget/TextView;

    const v1, 0x7f050055

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;

    const-string v1, "White Balance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_text_title:Landroid/widget/TextView;

    const v1, 0x7f050034

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_first:Landroid/widget/ImageView;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_icon_second:Landroid/widget/ImageView;

    const v1, 0x7f020087

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 150
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 151
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 152
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 153
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 154
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_txt1:Landroid/widget/TextView;

    const v1, 0x7f050057

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_txt2:Landroid/widget/TextView;

    const v1, 0x7f050058

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 506
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 507
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 508
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 510
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 512
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 514
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 516
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 518
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 520
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 525
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 526
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 527
    :cond_0
    return-void
.end method
