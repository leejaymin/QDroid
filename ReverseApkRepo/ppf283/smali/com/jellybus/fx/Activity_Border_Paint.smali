.class public Lcom/jellybus/fx/Activity_Border_Paint;
.super Landroid/app/Activity;
.source "Activity_Border_Paint.java"


# instance fields
.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private final handler:Landroid/os/Handler;

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private preview:Landroid/graphics/Bitmap;

.field private rotate_pic:Lcom/jellybus/fx_sub/PaintView;

.field private tc:Lcom/jellybus/fx_sub/ThumbnailController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/ThumbnailController;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    .line 64
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Paint$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Paint$1;-><init>(Lcom/jellybus/fx/Activity_Border_Paint;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->handler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Paint$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Paint$2;-><init>(Lcom/jellybus/fx/Activity_Border_Paint;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->none_listener:Landroid/view/View$OnTouchListener;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Border_Paint;)Lcom/jellybus/fx_sub/ThumbnailController;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Border_Paint;)Lcom/jellybus/fx_sub/PaintView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->rotate_pic:Lcom/jellybus/fx_sub/PaintView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Border_Paint;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Paint;->resettingCropView()V

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Border_Paint;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Border_Paint;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->empty_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getBitmap()V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Paint;->removeBitmap()V

    .line 118
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->preview:Landroid/graphics/Bitmap;

    .line 119
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Paint;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 120
    return-void
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->rotate_pic:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/PaintView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->preview:Landroid/graphics/Bitmap;

    .line 142
    :cond_0
    return-void
.end method

.method private resettingCropView()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Paint;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->rotate_pic:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v1, v0}, Lcom/jellybus/fx_sub/PaintView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->rotate_pic:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/PaintView;->invalidate()V

    .line 88
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Paint;->removeBitmap()V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Paint;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Paint;->finish()V

    .line 133
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Paint;->overridePendingTransition(II)V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Paint;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Paint;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 46
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Paint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/PaintView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->rotate_pic:Lcom/jellybus/fx_sub/PaintView;

    .line 48
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Paint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->empty_view:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Paint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->empty_text_view:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 51
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Paint;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Paint;->getBitmap()V

    .line 57
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->rotate_pic:Lcom/jellybus/fx_sub/PaintView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->preview:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jellybus/fx_sub/PaintView;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    .line 59
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Paint;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    return-void
.end method

.method public rotate_button_cancel_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Paint;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Paint;->removeBitmap()V

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Paint;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Paint;->finish()V

    .line 111
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Paint;->overridePendingTransition(II)V

    .line 112
    return-void
.end method
