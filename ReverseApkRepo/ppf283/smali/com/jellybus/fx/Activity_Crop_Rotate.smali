.class public Lcom/jellybus/fx/Activity_Crop_Rotate;
.super Landroid/app/Activity;
.source "Activity_Crop_Rotate.java"


# instance fields
.field private final apply_handler:Landroid/os/Handler;

.field private degree:I

.field private empty_text_view:Landroid/widget/TextView;

.field private empty_view:Landroid/widget/ImageView;

.field private flipH:I

.field private flipV:I

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private preview:Landroid/graphics/Bitmap;

.field private rotate_pic:Landroid/widget/ImageView;

.field private rotate_sub_layout:Landroid/widget/LinearLayout;

.field private rotated_Bmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I

    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I

    .line 131
    new-instance v0, Lcom/jellybus/fx/Activity_Crop_Rotate$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Crop_Rotate$1;-><init>(Lcom/jellybus/fx/Activity_Crop_Rotate;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->none_listener:Landroid/view/View$OnTouchListener;

    .line 141
    new-instance v0, Lcom/jellybus/fx/Activity_Crop_Rotate$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Crop_Rotate$2;-><init>(Lcom/jellybus/fx/Activity_Crop_Rotate;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->apply_handler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Crop_Rotate;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->removeBitmap()V

    return-void
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Crop_Rotate;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I

    return v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Crop_Rotate;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I

    return v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Crop_Rotate;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    return v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Crop_Rotate;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Crop_Rotate;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static flipBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "b"
    .parameter "h"
    .parameter "v"

    .prologue
    .line 253
    if-eqz p0, :cond_0

    .line 254
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 255
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 257
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 262
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    :goto_0
    return-object p0

    .line 258
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getBitmap()V
    .locals 3

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->removeBitmap()V

    .line 268
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    .line 269
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 270
    return-void
.end method

.method private getNewBitmap()V
    .locals 3

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->removeRotatedBitmap()V

    .line 311
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    .line 312
    return-void
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 290
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    .line 297
    :cond_1
    return-void
.end method

.method private removeRotatedBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_pic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 303
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    .line 305
    :cond_0
    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 240
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 241
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 244
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 250
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    :goto_0
    return-object p0

    .line 245
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v7

    .line 247
    .local v7, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "test"

    const-string v1, "Over Memory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->removeBitmap()V

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->startActivity(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->finish()V

    .line 283
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Crop_Rotate;->overridePendingTransition(II)V

    .line 284
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_pic:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_sub_layout:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_view:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_text_view:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_view:Landroid/widget/ImageView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 62
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_text_view:Landroid/widget/TextView;

    const v1, 0x7f050065

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_text_view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getBitmap()V

    .line 69
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->preview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 318
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    if-nez v0, :cond_1

    .line 319
    const-string v0, "4EZYBVGR4X8UBEAITHT4"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 321
    const-string v0, "HMWN2AGW2LYRYQ7ICC4U"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_2
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 323
    const-string v0, "3IDYI4ZBTFXHBC8BSSQZ"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_3
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 325
    const-string v0, "4UX5JWZGU78W1H642Q4E"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_4
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 327
    const-string v0, "SHHUZX9C5PR2PR3GRMFH"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_5
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 329
    const-string v0, "D2IQFQKELNZMA7LDJ4XT"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_6
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 331
    const-string v0, "YCU2I7ZKF1MZXMUZ84LA"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 336
    sget v0, Lcom/jellybus/fx_sub/PictureController;->market:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 337
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 338
    :cond_0
    return-void
.end method

.method public rotate_button_apply_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->apply_handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 221
    return-void
.end method

.method public rotate_button_cancel_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->removeBitmap()V

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->startActivity(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->finish()V

    .line 233
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Crop_Rotate;->overridePendingTransition(II)V

    .line 234
    return-void
.end method

.method public rotate_button_reset_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    .line 113
    iput v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I

    .line 114
    iput v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I

    .line 115
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getNewBitmap()V

    .line 116
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    return-void
.end method

.method public rotate_button_sub_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_sub_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_sub_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f020098

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    :goto_0
    return-void

    .line 125
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_sub_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    const v0, 0x7f020099

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public rotate_listener(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    if-gez v0, :cond_4

    .line 90
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    add-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    .line 96
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Crop_Rotate;->getNewBitmap()V

    .line 99
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    .line 103
    :cond_1
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I

    if-eq v0, v2, :cond_3

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I

    iget v2, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotate_pic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->rotated_Bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    return-void

    .line 75
    :pswitch_0
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    add-int/lit8 v0, v0, -0x5a

    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    goto :goto_0

    .line 78
    :pswitch_1
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    goto :goto_0

    .line 81
    :pswitch_2
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipH:I

    goto :goto_0

    .line 84
    :pswitch_3
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->flipV:I

    goto :goto_0

    .line 91
    :cond_4
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 92
    iget v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    add-int/lit16 v0, v0, -0x168

    iput v0, p0, Lcom/jellybus/fx/Activity_Crop_Rotate;->degree:I

    goto :goto_1

    .line 73
    :pswitch_data_0
    .packed-switch 0x7f060030
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
