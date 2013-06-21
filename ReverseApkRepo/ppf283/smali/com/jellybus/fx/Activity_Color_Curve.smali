.class public Lcom/jellybus/fx/Activity_Color_Curve;
.super Landroid/app/Activity;
.source "Activity_Color_Curve.java"


# instance fields
.field private final EFFECT_B:I

.field private final EFFECT_G:I

.field private final EFFECT_R:I

.field private final EFFECT_RGB:I

.field private final apply_handler:Landroid/os/Handler;

.field public bwListener:Landroid/view/View$OnClickListener;

.field private color_button_compare:Landroid/widget/ImageView;

.field private compare:Landroid/graphics/Bitmap;

.field public compare_Listener:Landroid/view/View$OnTouchListener;

.field private country:Ljava/lang/String;

.field private curRGB:I

.field public curveListener:Landroid/view/View$OnTouchListener;

.field private curve_b:Landroid/widget/ImageView;

.field private curve_bw:Landroid/widget/ImageView;

.field private curve_compare_info:Landroid/widget/TextView;

.field private curve_g:Landroid/widget/ImageView;

.field private curve_info_layout:Landroid/widget/LinearLayout;

.field private curve_info_webview:Landroid/webkit/WebView;

.field private curve_pic:Landroid/widget/ImageView;

.field private curve_r:Landroid/widget/ImageView;

.field private curve_rgb:Landroid/widget/ImageView;

.field private curve_sub_layout:Landroid/widget/RelativeLayout;

.field private cv:Lcom/jellybus/fx_sub/CurveView;

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private isBW:Z

.field private isSubOn:Z

.field private live_h:I

.field private live_preview:Landroid/graphics/Bitmap;

.field private live_w:I

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private preview:Landroid/graphics/Bitmap;

.field public rgbListener:Landroid/view/View$OnClickListener;

.field private toggle:Z

.field private final touch_live_handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->EFFECT_RGB:I

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->EFFECT_R:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->EFFECT_G:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->EFFECT_B:I

    .line 131
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Curve$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Curve$1;-><init>(Lcom/jellybus/fx/Activity_Color_Curve;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->none_listener:Landroid/view/View$OnTouchListener;

    .line 145
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Curve$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Curve$2;-><init>(Lcom/jellybus/fx/Activity_Color_Curve;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->bwListener:Landroid/view/View$OnClickListener;

    .line 163
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Curve$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Curve$3;-><init>(Lcom/jellybus/fx/Activity_Color_Curve;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->rgbListener:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Curve$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Curve$4;-><init>(Lcom/jellybus/fx/Activity_Color_Curve;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curveListener:Landroid/view/View$OnTouchListener;

    .line 248
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Curve$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Curve$5;-><init>(Lcom/jellybus/fx/Activity_Color_Curve;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare_Listener:Landroid/view/View$OnTouchListener;

    .line 276
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Curve$6;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Curve$6;-><init>(Lcom/jellybus/fx/Activity_Color_Curve;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->touch_live_handler:Landroid/os/Handler;

    .line 377
    new-instance v0, Lcom/jellybus/fx/Activity_Color_Curve$7;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Color_Curve$7;-><init>(Lcom/jellybus/fx/Activity_Color_Curve;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->apply_handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->setJNIPreview()V

    return-void
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Color_Curve;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z

    return v0
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->changeChannel()V

    return-void
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->touch_live_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Color_Curve;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->toggle:Z

    return v0
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Color_Curve;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->toggle:Z

    return-void
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->color_button_compare:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_bw:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_compare_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_sub_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jellybus/fx/Activity_Color_Curve;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isSubOn:Z

    return-void
.end method

.method static synthetic access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jellybus/fx/Activity_Color_Curve;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isSubOn:Z

    return v0
.end method

.method static synthetic access$25(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->setJNIPreviewForLive()V

    return-void
.end method

.method static synthetic access$26(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->setCurveEffectForLive()V

    return-void
.end method

.method static synthetic access$27(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->clearWebView()V

    return-void
.end method

.method static synthetic access$28(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->removeBitmap()V

    return-void
.end method

.method static synthetic access$29(Lcom/jellybus/fx/Activity_Color_Curve;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Color_Curve;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z

    return-void
.end method

.method static synthetic access$30(Lcom/jellybus/fx/Activity_Color_Curve;Lcom/jellybus/fx_sub/CurveView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    return-void
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Color_Curve;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/jellybus/fx/Activity_Color_Curve;->setCurveEffect(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->setOffBG()V

    return-void
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_rgb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Color_Curve;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I

    return-void
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Color_Curve;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I

    return v0
.end method

.method private changeChannel()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView;->setGraph()V

    .line 200
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->setJNIPreview()V

    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->setCurveEffect(Z)V

    .line 202
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView;->invalidate()V

    .line 203
    return-void
.end method

.method private clearWebView()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 522
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_webview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 523
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 524
    return-void
.end method

.method private getBitmap()V
    .locals 6

    .prologue
    const v5, 0x3f19999a

    const v4, 0x3ecccccd

    const/4 v3, 0x1

    .line 335
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->removeBitmap()V

    .line 336
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    .line 337
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 339
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    .line 341
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_preview:Landroid/graphics/Bitmap;

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_w:I

    .line 347
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_h:I

    .line 348
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_preview:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 361
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 367
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 371
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_preview:Landroid/graphics/Bitmap;

    .line 373
    :cond_2
    return-void
.end method

.method private removePreviewBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    .line 357
    :cond_0
    return-void
.end method

.method private setCurveEffect(Z)V
    .locals 3
    .parameter "isPreview"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    iget-boolean v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z

    invoke-virtual {v0, v1, p1}, Lcom/jellybus/fx_sub/CurveView;->setCurveIndex(ZZ)V

    .line 304
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    .line 305
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 306
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    return-void
.end method

.method private setCurveEffectForLive()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    iget-boolean v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z

    iget v2, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_w:I

    iget v3, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_h:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jellybus/fx_sub/CurveView;->setCurveIndexForLive(ZII)V

    .line 311
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_w:I

    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_h:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    .line 312
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_w:I

    iget v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_h:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 313
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 314
    return-void
.end method

.method private setJNIPreview()V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->removePreviewBitmap()V

    .line 291
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 292
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 293
    return-void
.end method

.method private setJNIPreviewForLive()V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->removePreviewBitmap()V

    .line 297
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 298
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->live_preview:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 299
    return-void
.end method

.method private setOffBG()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_rgb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 328
    :pswitch_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public color_button_apply_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 474
    return-void
.end method

.method public color_button_cancel_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 536
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/CurveView;->resetCurveValues()V

    .line 540
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 541
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 542
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->removeBitmap()V

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->startActivity(Landroid/content/Intent;)V

    .line 545
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->finish()V

    .line 546
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Color_Curve;->overridePendingTransition(II)V

    .line 547
    return-void
.end method

.method public color_button_sub_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 497
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_sub_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_sub_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f020068

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 500
    iput-boolean v2, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isSubOn:Z

    .line 506
    :goto_0
    return-void

    .line 502
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_sub_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 503
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f020069

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isSubOn:Z

    goto :goto_0
.end method

.method public curveInfoListener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->country:Ljava/lang/String;

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/curves_kr.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 518
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->country:Ljava/lang/String;

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/curves_jp.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/curves_en.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public curveResetListener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView;->resetAllPoint()V

    .line 481
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView;->setFirstPoint()V

    .line 483
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z

    if-eqz v0, :cond_0

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z

    .line 485
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_bw:Landroid/widget/ImageView;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->setJNIPreview()V

    .line 490
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/CurveView;->setFinalPoint()V

    .line 491
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->setCurveEffect(Z)V

    .line 492
    return-void
.end method

.method public curve_info_button_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->clearWebView()V

    .line 528
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    return-void
.end method

.method public info_none_listener(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 141
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 552
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->clearWebView()V

    .line 554
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_layout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/CurveView;->resetCurveValues()V

    .line 560
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 561
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 562
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->removeBitmap()V

    .line 563
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 564
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->startActivity(Landroid/content/Intent;)V

    .line 565
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->finish()V

    .line 566
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Color_Curve;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 85
    const v0, 0x7f060091

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/CurveView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    .line 87
    const v0, 0x7f06008e

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_rgb:Landroid/widget/ImageView;

    .line 89
    const v0, 0x7f060094

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_r:Landroid/widget/ImageView;

    .line 90
    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_g:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f060096

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_b:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f060097

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_bw:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_rgb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->rgbListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->rgbListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->rgbListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->rgbListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_bw:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->bwListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f06008f

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_sub_layout:Landroid/widget/RelativeLayout;

    .line 102
    const v0, 0x7f06008c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->color_button_compare:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_compare_info:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f060099

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_layout:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f06009a

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_webview:Landroid/webkit/WebView;

    .line 108
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_info_webview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->country:Ljava/lang/String;

    .line 112
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_view:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Color_Curve;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_text_view:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 115
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Color_Curve;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->color_button_compare:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare_Listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->compare_Listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Color_Curve;->getBitmap()V

    .line 125
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curve_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve;->curveListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CurveView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 573
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 574
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 575
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 577
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 579
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 581
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 583
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 585
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 587
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 591
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 592
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 593
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 594
    :cond_0
    return-void
.end method
