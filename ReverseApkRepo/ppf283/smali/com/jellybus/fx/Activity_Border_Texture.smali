.class public Lcom/jellybus/fx/Activity_Border_Texture;
.super Landroid/app/Activity;
.source "Activity_Border_Texture.java"


# instance fields
.field private final Concrete:I

.field private final Crack:I

.field private final Daggereo:I

.field private final Dirt:I

.field private final Filmgrain:I

.field private final Grungepaper:I

.field private final Oldfilm:I

.field private final Paper:I

.field private final Sack:I

.field private final Splash:I

.field private final Spray:I

.field private final Vintagepaper:I

.field private final Watercolor:I

.field private final apply_handler:Landroid/os/Handler;

.field private compare:Landroid/graphics/Bitmap;

.field private compare_listener:Landroid/view/View$OnTouchListener;

.field private current_texture:I

.field private current_texture_name:Ljava/lang/String;

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private isSubOn:Z

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private opacity:I

.field private opacity_listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private preview:Landroid/graphics/Bitmap;

.field private reset_listener:Landroid/view/View$OnClickListener;

.field private texture:Landroid/graphics/Bitmap;

.field private texture_button_compare:Landroid/widget/ImageView;

.field private texture_button_sub:Landroid/widget/ImageView;

.field private texture_compare_info:Landroid/widget/TextView;

.field private final texture_handler:Landroid/os/Handler;

.field private texture_icon:Landroid/widget/ImageView;

.field private texture_picture:Landroid/widget/ImageView;

.field private texture_picture_original:Landroid/widget/ImageView;

.field private texture_seekbar:Landroid/widget/SeekBar;

.field private texture_select1:Landroid/widget/ImageView;

.field private texture_select10:Landroid/widget/ImageView;

.field private texture_select11:Landroid/widget/ImageView;

.field private texture_select12:Landroid/widget/ImageView;

.field private texture_select13:Landroid/widget/ImageView;

.field private texture_select2:Landroid/widget/ImageView;

.field private texture_select3:Landroid/widget/ImageView;

.field private texture_select4:Landroid/widget/ImageView;

.field private texture_select5:Landroid/widget/ImageView;

.field private texture_select6:Landroid/widget/ImageView;

.field private texture_select7:Landroid/widget/ImageView;

.field private texture_select8:Landroid/widget/ImageView;

.field private texture_select9:Landroid/widget/ImageView;

.field private texture_sub:Landroid/widget/LinearLayout;

.field private texture_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Concrete:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Dirt:I

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Daggereo:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Grungepaper:I

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Oldfilm:I

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Paper:I

    .line 71
    const/4 v0, 0x6

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Sack:I

    .line 72
    const/4 v0, 0x7

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Crack:I

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Spray:I

    .line 74
    const/16 v0, 0x9

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Splash:I

    .line 75
    const/16 v0, 0xa

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Vintagepaper:I

    .line 76
    const/16 v0, 0xb

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Watercolor:I

    .line 77
    const/16 v0, 0xc

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->Filmgrain:I

    .line 78
    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 79
    const-string v0, "concrete"

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    .line 81
    const/16 v0, 0x7f

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->opacity:I

    .line 149
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Texture$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Texture$1;-><init>(Lcom/jellybus/fx/Activity_Border_Texture;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_handler:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Texture$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Texture$2;-><init>(Lcom/jellybus/fx/Activity_Border_Texture;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->opacity_listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 454
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Texture$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Texture$3;-><init>(Lcom/jellybus/fx/Activity_Border_Texture;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->none_listener:Landroid/view/View$OnTouchListener;

    .line 465
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Texture$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Texture$4;-><init>(Lcom/jellybus/fx/Activity_Border_Texture;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare_listener:Landroid/view/View$OnTouchListener;

    .line 494
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Texture$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Texture$5;-><init>(Lcom/jellybus/fx/Activity_Border_Texture;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->reset_listener:Landroid/view/View$OnClickListener;

    .line 525
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Texture$6;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Texture$6;-><init>(Lcom/jellybus/fx/Activity_Border_Texture;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->apply_handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Border_Texture;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->opacity:I

    return v0
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Border_Texture;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Border_Texture;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->removeBitmap()V

    return-void
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Border_Texture;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Border_Texture;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->removeCompareBitmap()V

    return-void
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Border_Texture;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Border_Texture;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->opacity:I

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_button_compare:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_compare_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_sub:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Border_Texture;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->isSubOn:Z

    return-void
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Border_Texture;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->isSubOn:Z

    return v0
.end method

.method private getPreview()V
    .locals 3

    .prologue
    .line 163
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    .line 164
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 165
    return-void
.end method

.method private getTexturePreview()V
    .locals 3

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->removePreviewBitmap()V

    .line 198
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    .line 199
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setOverlayAllIndex(II)V

    .line 200
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 201
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    return-void
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture_original:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 241
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 251
    :cond_2
    return-void
.end method

.method private removeCompareBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture_original:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    .line 258
    :cond_0
    return-void
.end method

.method private removePreviewBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->preview:Landroid/graphics/Bitmap;

    .line 266
    :cond_0
    return-void
.end method

.method private removeTextureBitmap()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 273
    :cond_0
    return-void
.end method

.method private setCurrentTexture()V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 278
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 279
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 280
    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    packed-switch v1, :pswitch_data_0

    .line 334
    :goto_0
    return-void

    .line 282
    :pswitch_0
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020088

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 283
    const-string v1, "concrete"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto :goto_0

    .line 286
    :pswitch_1
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009e

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 287
    const-string v1, "dirt"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto :goto_0

    .line 290
    :pswitch_2
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009d

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 291
    const-string v1, "daggereo"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto :goto_0

    .line 294
    :pswitch_3
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d2

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 295
    const-string v1, "grungepaper"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto :goto_0

    .line 298
    :pswitch_4
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020126

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 299
    const-string v1, "oldfilm"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto :goto_0

    .line 302
    :pswitch_5
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020128

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 303
    const-string v1, "paper"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto :goto_0

    .line 306
    :pswitch_6
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012d

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 307
    const-string v1, "sack_fx"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto :goto_0

    .line 310
    :pswitch_7
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020089

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 311
    const-string v1, "crack"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 314
    :pswitch_8
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020136

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 315
    const-string v1, "spray"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 318
    :pswitch_9
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020135

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 319
    const-string v1, "splash"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 322
    :pswitch_a
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020210

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 323
    const-string v1, "vintagepaper"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 326
    :pswitch_b
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020211

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 327
    const-string v1, "watercolor"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 330
    :pswitch_c
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009f

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 331
    const-string v1, "filmgrain"

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private setOffButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 437
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 438
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 439
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 440
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 441
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 442
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select7:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 443
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select8:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 444
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select9:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 445
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select10:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select12:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 448
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select13:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    return-void
.end method

.method private setTextViewOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 338
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_handler:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    return-void
.end method

.method private setTexture()V
    .locals 4

    .prologue
    .line 169
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 171
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->removeTextureBitmap()V

    .line 172
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setCurrentTexture()V

    .line 173
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->setTextureIndex(IILandroid/graphics/Bitmap;)V

    .line 175
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->removeTextureBitmap()V

    .line 177
    sget-boolean v0, Lcom/jellybus/fx_sub/PictureController;->isSameSize:Z

    if-eqz v0, :cond_0

    .line 178
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 179
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getTextureIndex(IILandroid/graphics/Bitmap;)V

    .line 180
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 181
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->removeTextureBitmap()V

    .line 189
    :goto_0
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changePreTextureToBlurIndex()V

    .line 192
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 193
    return-void

    .line 183
    :cond_0
    sget v0, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    .line 184
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getTextureIndex(IILandroid/graphics/Bitmap;)V

    .line 185
    const/4 v0, 0x1

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 186
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->removeTextureBitmap()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 606
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 610
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeTextureIndex()V

    .line 611
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 612
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->removeBitmap()V

    .line 614
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 615
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->startActivity(Landroid/content/Intent;)V

    .line 616
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->finish()V

    .line 617
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Texture;->overridePendingTransition(II)V

    .line 618
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 93
    const v0, 0x7f060059

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture_original:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select1:Landroid/widget/ImageView;

    .line 96
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select2:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select3:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select4:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select5:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select6:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select7:Landroid/widget/ImageView;

    .line 102
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select8:Landroid/widget/ImageView;

    .line 103
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select9:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select10:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select11:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f06006a

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select12:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select13:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f06005b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_sub:Landroid/widget/LinearLayout;

    .line 110
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_sub:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    const v0, 0x7f06006d

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_button_sub:Landroid/widget/ImageView;

    .line 112
    const v0, 0x7f06005c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_icon:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_button_compare:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f06005a

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_compare_info:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_seekbar:Landroid/widget/SeekBar;

    .line 120
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_view:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_text_view:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 123
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Texture;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getPreview()V

    .line 130
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTexture()V

    .line 132
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getTexturePreview()V

    .line 134
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_seekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 136
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture_original:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;

    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->opacity:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 139
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_seekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->opacity_listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->reset_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_button_compare:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 623
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 624
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 625
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 627
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 629
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 631
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 633
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 635
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 637
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 641
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 642
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 643
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 644
    :cond_0
    return-void
.end method

.method public texture_button_apply_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 580
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    return-void
.end method

.method public texture_button_cancel_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 590
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 594
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeTextureIndex()V

    .line 595
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 596
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->removeBitmap()V

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Texture;->startActivity(Landroid/content/Intent;)V

    .line 600
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->finish()V

    .line 601
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Texture;->overridePendingTransition(II)V

    .line 602
    return-void
.end method

.method public texture_button_sub_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_sub:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_sub:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    iput-boolean v2, p0, Lcom/jellybus/fx/Activity_Border_Texture;->isSubOn:Z

    .line 520
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_sub:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_button_sub:Landroid/widget/ImageView;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->isSubOn:Z

    goto :goto_0
.end method

.method public texture_select_listener(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const v3, 0x7f020044

    .line 346
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 347
    .local v0, past_texture:I
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setOffButton()V

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 429
    :goto_0
    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    if-eq v1, v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTexture()V

    .line 431
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->getTexturePreview()V

    .line 433
    :cond_0
    return-void

    .line 350
    :pswitch_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 1"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 352
    const/4 v1, 0x0

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 353
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 2"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 358
    const/4 v1, 0x1

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 359
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 362
    :pswitch_2
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 3"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 364
    const/4 v1, 0x2

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 365
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select3:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 368
    :pswitch_3
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 4"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 370
    const/4 v1, 0x3

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 371
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select4:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 374
    :pswitch_4
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 5"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 376
    const/4 v1, 0x4

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 377
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select5:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 380
    :pswitch_5
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 382
    const/4 v1, 0x5

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 383
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select6:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 386
    :pswitch_6
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 7"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 388
    const/4 v1, 0x6

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 389
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select7:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 392
    :pswitch_7
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 8"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 394
    const/4 v1, 0x7

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 395
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select8:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 398
    :pswitch_8
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 9"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 400
    const/16 v1, 0x8

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 401
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select9:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 404
    :pswitch_9
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 10"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 406
    const/16 v1, 0x9

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 407
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select10:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 410
    :pswitch_a
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 11"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 412
    const/16 v1, 0xa

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 413
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select11:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 416
    :pswitch_b
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 12"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 418
    const/16 v1, 0xb

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 419
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select12:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 422
    :pswitch_c
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;

    const-string v2, "Texture 13"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Texture;->setTextViewOn()V

    .line 424
    const/16 v1, 0xc

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->current_texture:I

    .line 425
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture;->texture_select13:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x7f06005f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
