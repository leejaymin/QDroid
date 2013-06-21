.class public Lcom/jellybus/fx/Activity_Crop_Crop;
.super Landroid/app/Activity;
.source "Activity_Crop_Crop.java"


# instance fields
.field private final apply_handler:Landroid/os/Handler;

.field private controller:Lcom/jellybus/fx_sub/CropViewController;

.field private crop_button_sub:Landroid/widget/ImageView;

.field private crop_pic:Landroid/widget/ImageView;

.field private crop_ratio_11:Landroid/widget/ImageView;

.field private crop_ratio_23:Landroid/widget/ImageView;

.field private crop_ratio_32:Landroid/widget/ImageView;

.field private crop_ratio_34:Landroid/widget/ImageView;

.field private crop_ratio_43:Landroid/widget/ImageView;

.field private crop_ratio_free:Landroid/widget/ImageView;

.field private crop_ratio_listener:Landroid/view/View$OnClickListener;

.field public crop_sub_layout:Landroid/widget/LinearLayout;

.field private current_ratio:I

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private final handler:Landroid/os/Handler;

.field private isViewSet:Z

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private pictureSpace:Landroid/widget/RelativeLayout;

.field private preview:Landroid/graphics/Bitmap;

.field private tc:Lcom/jellybus/fx_sub/ThumbnailController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/ThumbnailController;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    .line 112
    new-instance v0, Lcom/jellybus/fx/Activity_Crop_Crop$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Crop_Crop$1;-><init>(Lcom/jellybus/fx/Activity_Crop_Crop;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->handler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/jellybus/fx/Activity_Crop_Crop$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Crop_Crop$2;-><init>(Lcom/jellybus/fx/Activity_Crop_Crop;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->none_listener:Landroid/view/View$OnTouchListener;

    .line 176
    new-instance v0, Lcom/jellybus/fx/Activity_Crop_Crop$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Crop_Crop$3;-><init>(Lcom/jellybus/fx/Activity_Crop_Crop;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_listener:Landroid/view/View$OnClickListener;

    .line 334
    new-instance v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Crop_Crop$4;-><init>(Lcom/jellybus/fx/Activity_Crop_Crop;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->apply_handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Crop_Crop;)Lcom/jellybus/fx_sub/ThumbnailController;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_pic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_32:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_34:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_43:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Crop_Crop;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Crop_Crop;->checkRatioID(I)V

    return-void
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Crop_Crop;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I

    return-void
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Crop_Crop;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Crop_Crop;->changeMainButtonratio(I)V

    return-void
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Crop_Crop;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Crop;->removeBitmap()V

    return-void
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_Crop_Crop;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jellybus/fx/Activity_Crop_Crop;)Lcom/jellybus/fx_sub/CropViewController;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Crop_Crop;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Crop;->resettingCropView()V

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Crop_Crop;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->isViewSet:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Crop_Crop;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I

    return v0
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_free:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_11:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_23:Landroid/widget/ImageView;

    return-object v0
.end method

.method private changeMainButtonratio(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 157
    :pswitch_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 160
    :pswitch_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x7f0600ab
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private checkRatioID(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/high16 v4, 0x4080

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/high16 v1, 0x4040

    .line 204
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_free:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->setRatioMode(Z)V

    .line 217
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CropViewController;->invalidate()V

    .line 218
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_11:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-direct {p0, v2, v2}, Lcom/jellybus/fx/Activity_Crop_Crop;->ratioRect(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->resetPoints(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_23:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 209
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-direct {p0, v3, v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->ratioRect(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->resetPoints(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_32:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-direct {p0, v1, v3}, Lcom/jellybus/fx/Activity_Crop_Crop;->ratioRect(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->resetPoints(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_34:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-direct {p0, v1, v4}, Lcom/jellybus/fx/Activity_Crop_Crop;->ratioRect(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->resetPoints(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_43:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-direct {p0, v4, v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->ratioRect(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->resetPoints(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private ratioRect(FF)Landroid/graphics/RectF;
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 223
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/jellybus/fx_sub/CropViewController;->setRatioMode(Z)V

    .line 225
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/CropViewController;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    .line 227
    .local v5, rect:Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/CropViewController;->getMinSize()F

    move-result v8

    const/high16 v9, 0x4000

    mul-float v3, v8, v9

    .line 230
    .local v3, minSize:F
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 231
    .local v7, w:F
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 238
    .local v2, h:F
    cmpl-float v8, v7, v2

    if-ltz v8, :cond_5

    .line 240
    div-float v4, p1, p2

    .line 242
    .local v4, ratio:F
    cmpg-float v8, v2, v3

    if-gez v8, :cond_0

    .line 244
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpg-float v8, v8, v3

    if-gtz v8, :cond_4

    .line 245
    move v2, v3

    .line 252
    :cond_0
    :goto_0
    mul-float v1, v2, v4

    .line 253
    .local v1, changedValueW:F
    move v0, v2

    .line 255
    .local v0, changedValueH:F
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-gtz v8, :cond_1

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-lez v8, :cond_2

    .line 256
    :cond_1
    div-float v1, v2, v4

    .line 257
    move v0, v2

    .line 260
    :cond_2
    cmpg-float v8, v1, v3

    if-gez v8, :cond_3

    .line 262
    sub-float v6, v3, v1

    .line 263
    .local v6, value:F
    move v1, v3

    .line 264
    add-float v0, v3, v6

    .line 297
    .end local v6           #value:F
    :cond_3
    :goto_1
    iget v8, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v1

    iget-object v9, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v9}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_b

    .line 299
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v8

    int-to-float v8, v8

    iput v8, v5, Landroid/graphics/RectF;->right:F

    .line 300
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    iput v8, v5, Landroid/graphics/RectF;->left:F

    .line 305
    :goto_2
    iget v8, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v0

    iget-object v9, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v9}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_c

    .line 307
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v8

    int-to-float v8, v8

    iput v8, v5, Landroid/graphics/RectF;->bottom:F

    .line 308
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v0

    iput v8, v5, Landroid/graphics/RectF;->top:F

    .line 314
    :goto_3
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-virtual {v8, p1, p2}, Lcom/jellybus/fx_sub/CropViewController;->setRatio(FF)V

    .line 315
    return-object v5

    .line 247
    .end local v0           #changedValueH:F
    .end local v1           #changedValueW:F
    :cond_4
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v2, v8

    goto :goto_0

    .line 270
    .end local v4           #ratio:F
    :cond_5
    div-float v4, p2, p1

    .line 272
    .restart local v4       #ratio:F
    cmpg-float v8, v7, v3

    if-ltz v8, :cond_6

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_7

    .line 273
    :cond_6
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    cmpg-float v8, v8, v3

    if-gtz v8, :cond_a

    .line 274
    move v7, v3

    .line 280
    :cond_7
    :goto_4
    move v1, v7

    .line 281
    .restart local v1       #changedValueW:F
    mul-float v0, v7, v4

    .line 283
    .restart local v0       #changedValueH:F
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-gtz v8, :cond_8

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-lez v8, :cond_9

    .line 284
    :cond_8
    div-float v1, v2, v4

    .line 285
    move v0, v2

    .line 288
    :cond_9
    cmpg-float v8, v0, v3

    if-gez v8, :cond_3

    .line 289
    sub-float v6, v3, v0

    .line 290
    .restart local v6       #value:F
    add-float v1, v3, v6

    .line 291
    move v0, v3

    goto/16 :goto_1

    .line 276
    .end local v0           #changedValueH:F
    .end local v1           #changedValueW:F
    .end local v6           #value:F
    :cond_a
    iget-object v8, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v8}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v7, v8

    goto :goto_4

    .line 302
    .restart local v0       #changedValueH:F
    .restart local v1       #changedValueW:F
    :cond_b
    iget v8, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v1

    iput v8, v5, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 310
    :cond_c
    iget v8, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v0

    iput v8, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 410
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 411
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;

    .line 413
    :cond_0
    return-void
.end method

.method private resettingCropView()V
    .locals 6

    .prologue
    .line 134
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-virtual {v1, v0}, Lcom/jellybus/fx_sub/CropViewController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->pictureSpace:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->pictureSpace:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v4}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v5}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jellybus/fx_sub/CropViewController;->setControllViewSize(IIII)V

    .line 138
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/CropViewController;->invalidate()V

    .line 139
    return-void
.end method


# virtual methods
.method public crop_button_apply_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 400
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 404
    return-void
.end method

.method public crop_button_cancel_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Crop;->removeBitmap()V

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->startActivity(Landroid/content/Intent;)V

    .line 424
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Crop_Crop;->finish()V

    .line 425
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Crop_Crop;->overridePendingTransition(II)V

    .line 426
    return-void
.end method

.method public crop_button_sub_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_sub_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const v0, 0x7f020090

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 323
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_sub_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    invoke-virtual {v0, v2}, Lcom/jellybus/fx_sub/CropViewController;->setSubToggle(Z)V

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    const v0, 0x7f020091

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 327
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_sub_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->setSubToggle(Z)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 430
    iget-boolean v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->isViewSet:Z

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Crop;->removeBitmap()V

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->startActivity(Landroid/content/Intent;)V

    .line 437
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Crop_Crop;->finish()V

    .line 438
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Crop_Crop;->overridePendingTransition(II)V

    .line 440
    .end local v0           #intent_main:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->requestWindowFeature(I)Z

    .line 66
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Crop_Crop;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    const v0, 0x7f0600a7

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->pictureSpace:Landroid/widget/RelativeLayout;

    .line 71
    const v0, 0x7f0600a8

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_pic:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f0600aa

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_sub_layout:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f0600ab

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_free:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f0600ac

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_11:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0600ad

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_23:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f0600ae

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_32:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0600af

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_34:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f0600b0

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_43:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_free:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_11:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_23:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_32:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_34:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_43:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_ratio_free:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->current_ratio:I

    .line 90
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_text_view:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 93
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Crop_Crop;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    const v0, 0x7f0600b2

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_button_sub:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f0600a9

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Crop;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CropViewController;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    .line 102
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_sub_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CropViewController;->setSubLayer(Landroid/view/View;)V

    .line 104
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;

    .line 105
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 106
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->crop_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Crop;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 109
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 446
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 447
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 449
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 451
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 453
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 455
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 457
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 459
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 464
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 465
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 466
    :cond_0
    return-void
.end method
