.class public Lcom/tequnique/camerax/ImagePreviewActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/tequnique/camerax/bo;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iput-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->b:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->c:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->d:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->e:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->f:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->i:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->j:I

    iput-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->k:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/ImagePreviewActivity;)Lcom/tequnique/camerax/bo;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    return-object v0
.end method

.method private a(Landroid/widget/ImageButton;)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0}, Lcom/tequnique/camerax/bo;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->aD:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/ImagePreviewActivity;I)V
    .locals 0

    iput p1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->j:I

    return-void
.end method

.method static synthetic b(Lcom/tequnique/camerax/ImagePreviewActivity;)I
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->j:I

    return v0
.end method

.method static synthetic c(Lcom/tequnique/camerax/ImagePreviewActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/tequnique/camerax/ImagePreviewActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/tequnique/camerax/ImagePreviewActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->k:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v2, 0xb4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->b:Landroid/widget/ImageButton;

    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->c:Landroid/widget/ImageButton;

    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->d:Landroid/widget/ImageButton;

    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->e:Landroid/widget/ImageButton;

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->b:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->a(Landroid/widget/ImageButton;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->c:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->a(Landroid/widget/ImageButton;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->d:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->a(Landroid/widget/ImageButton;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/ImagePreviewActivity;->a(Landroid/widget/ImageButton;)V

    iget-object v3, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->b:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tequnique/camerax/ImagePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_2

    const v0, 0x7f02004e

    :goto_0
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tequnique/camerax/ImagePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020025

    :goto_1
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tequnique/camerax/ImagePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_4

    const v0, 0x7f020076

    :goto_2
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tequnique/camerax/ImagePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_5

    const v0, 0x7f02002a

    :goto_3
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->b:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tequnique/camerax/bp;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/bp;-><init>(Lcom/tequnique/camerax/ImagePreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->c:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tequnique/camerax/bq;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/bq;-><init>(Lcom/tequnique/camerax/ImagePreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->d:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tequnique/camerax/br;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/br;-><init>(Lcom/tequnique/camerax/ImagePreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->e:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tequnique/camerax/bs;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/bs;-><init>(Lcom/tequnique/camerax/ImagePreviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v3, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_4
    if-lez v0, :cond_7

    iget-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->i:I

    if-lez v1, :cond_7

    if-eq v0, v2, :cond_7

    add-int/lit16 v0, v0, -0xb4

    move v3, v0

    :goto_5
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v0, 0x1

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    iget-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->G:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    invoke-virtual {p0}, Lcom/tequnique/camerax/ImagePreviewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    :goto_6
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v6

    if-le v2, v6, :cond_0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v3

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->a:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->V:I

    iput v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->j:I

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->j:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tequnique/camerax/bt;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/bt;-><init>(Lcom/tequnique/camerax/ImagePreviewActivity;)V

    iput-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->k:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const v0, 0x7f02004f

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f020026

    goto/16 :goto_1

    :cond_4
    const v0, 0x7f020077

    goto/16 :goto_2

    :cond_5
    const v0, 0x7f02002b

    goto/16 :goto_3

    :pswitch_1
    move v0, v1

    goto/16 :goto_4

    :pswitch_2
    move v0, v2

    goto/16 :goto_4

    :pswitch_3
    const/16 v0, 0x5a

    goto/16 :goto_4

    :pswitch_4
    const/16 v0, 0x10e

    goto/16 :goto_4

    :cond_6
    :try_start_1
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v2, v1, v2

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_7
    move v3, v0

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/ImagePreviewActivity;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
