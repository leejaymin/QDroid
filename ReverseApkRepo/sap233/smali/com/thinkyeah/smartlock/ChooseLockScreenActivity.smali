.class public Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;
.super Landroid/support/v4/app/g;


# static fields
.field private static s:Lcom/thinkyeah/common/c;


# instance fields
.field private m:Landroid/widget/ImageView;

.field private n:I

.field private o:Landroid/net/Uri;

.field private p:Lcom/thinkyeah/smartlock/ap;

.field private q:Lcom/thinkyeah/common/thinklist/a;

.field private r:Landroid/graphics/Bitmap;

.field private t:Lcom/thinkyeah/common/thinklist/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/c;

    const-class v1, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thinkyeah/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->s:Lcom/thinkyeah/common/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/ab;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/ab;-><init>(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->t:Lcom/thinkyeah/common/thinklist/e;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)Lcom/thinkyeah/common/thinklist/a;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->q:Lcom/thinkyeah/common/thinklist/a;

    return-object v0
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    return-void
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->g()V

    return-void
.end method

.method static synthetic d(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)Lcom/thinkyeah/smartlock/ap;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->p:Lcom/thinkyeah/smartlock/ap;

    return-object v0
.end method

.method static synthetic e(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)I
    .locals 1

    iget v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    return v0
.end method

.method static synthetic f(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->o:Landroid/net/Uri;

    return-object v0
.end method

.method private g()V
    .locals 2

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private h()V
    .locals 4

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->o:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/thinkyeah/common/b;->a(Landroid/graphics/BitmapFactory$Options;)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->o:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->r:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->s:Lcom/thinkyeah/common/c;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->s:Lcom/thinkyeah/common/c;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->o:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->h()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->p:Lcom/thinkyeah/smartlock/ap;

    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/thinkyeah/smartlock/ac;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/ac;-><init>(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/thinkyeah/smartlock/ad;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/ad;-><init>(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v2, 0x7f0900a0

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v5, v2}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->t:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v2, 0x7f0900a1

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v4, v2}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->t:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v2, Lcom/thinkyeah/common/thinklist/a;

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->p:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v3}, Lcom/thinkyeah/smartlock/ap;->h()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/thinkyeah/common/thinklist/a;-><init>(Ljava/util/List;I)V

    iput-object v2, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->q:Lcom/thinkyeah/common/thinklist/a;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->q:Lcom/thinkyeah/common/thinklist/a;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->p:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->h()I

    move-result v0

    if-nez v0, :cond_2

    iput v5, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->g()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->p:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->h()I

    move-result v0

    if-ne v0, v4, :cond_0

    iput v4, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->p:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->o:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    const-string v0, "screenSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    iget v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    if-ne v0, v4, :cond_0

    const-string v0, "imageUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->o:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->h()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->r:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/g;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "screenSelection"

    iget v1, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->o:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, "imageUri"

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->o:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
