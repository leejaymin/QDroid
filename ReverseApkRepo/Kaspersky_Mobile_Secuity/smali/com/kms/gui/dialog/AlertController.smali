.class public final Lcom/kms/gui/dialog/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/ListAdapter;

.field private C:I

.field private D:Landroid/os/Handler;

.field private E:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/DialogInterface;

.field private final b:Landroid/view/Window;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Landroid/widget/Button;

.field private m:Ljava/lang/CharSequence;

.field private n:Landroid/os/Message;

.field private o:Landroid/widget/Button;

.field private p:Ljava/lang/CharSequence;

.field private q:Landroid/os/Message;

.field private r:Landroid/widget/Button;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/os/Message;

.field private u:Landroid/widget/ScrollView;

.field private v:I

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController;->k:Z

    .line 104
    iput v1, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    .line 120
    iput v1, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    .line 124
    new-instance v0, Lek;

    invoke-direct {v0, p0}, Lek;-><init>(Lcom/kms/gui/dialog/AlertController;)V

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->E:Landroid/view/View$OnClickListener;

    .line 171
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->a:Landroid/content/DialogInterface;

    .line 172
    iput-object p2, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    .line 173
    new-instance v0, Leq;

    invoke-direct {v0, p1}, Leq;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->D:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/dialog/AlertController;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    return p1
.end method

.method public static synthetic a(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/gui/dialog/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->B:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcom/kms/gui/dialog/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    return-object p1
.end method

.method private a(Landroid/widget/Button;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 545
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 546
    const/high16 v1, 0x3f00

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 547
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 549
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 551
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 552
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)Z
    .locals 7
    .parameter

    .prologue
    const v5, 0x7f0b001d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 405
    .line 407
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->A:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 409
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 412
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->A:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 416
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_0
    :goto_0
    return v2

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 420
    :goto_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v4, 0x7f0b001e

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    .line 421
    if-eqz v1, :cond_5

    .line 424
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    .line 426
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    iget v0, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    if-lez v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 418
    goto :goto_1

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 437
    :cond_4
    iget v0, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 446
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 451
    :cond_5
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 452
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v2, v3

    .line 455
    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->n:Landroid/os/Message;

    return-object v0
.end method

.method private b()V
    .locals 11

    .prologue
    const v5, 0x7f0b0025

    const v10, 0x7f0b0021

    const/4 v9, -0x1

    const/16 v8, 0x8

    .line 347
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 348
    invoke-direct {p0, v0}, Lcom/kms/gui/dialog/AlertController;->b(Landroid/widget/LinearLayout;)V

    .line 349
    invoke-direct {p0}, Lcom/kms/gui/dialog/AlertController;->c()Z

    move-result v2

    .line 351
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v3, 0x7f0b001c

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 353
    invoke-direct {p0, v1}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/widget/LinearLayout;)Z

    move-result v3

    .line 355
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v4, 0x7f0b0027

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 356
    if-nez v2, :cond_0

    .line 357
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 362
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 363
    iget-object v2, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v4, 0x7f0b0026

    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 364
    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-boolean v4, p0, Lcom/kms/gui/dialog/AlertController;->k:Z

    if-eqz v4, :cond_1

    .line 366
    iget v4, p0, Lcom/kms/gui/dialog/AlertController;->g:I

    iget v5, p0, Lcom/kms/gui/dialog/AlertController;->h:I

    iget v6, p0, Lcom/kms/gui/dialog/AlertController;->i:I

    iget v7, p0, Lcom/kms/gui/dialog/AlertController;->j:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    if-eqz v2, :cond_2

    .line 370
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 379
    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->d:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v2, 0x7f0b0020

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 381
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :cond_4
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    if-nez v1, :cond_5

    if-nez v3, :cond_6

    .line 388
    :cond_5
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v1, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 389
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_6
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->B:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    .line 393
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 394
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->B:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 397
    iget v0, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    if-ltz v0, :cond_7

    .line 398
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    iget v1, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 399
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    iget v1, p0, Lcom/kms/gui/dialog/AlertController;->C:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 402
    :cond_7
    return-void

    .line 373
    :cond_8
    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0b0023

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 462
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    .line 463
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 466
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    .line 467
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 477
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 479
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->e:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 483
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private static b(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    :goto_0
    return v0

    .line 181
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 182
    goto :goto_0

    .line 185
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 187
    :cond_2
    if-lez v2, :cond_3

    .line 188
    add-int/lit8 v2, v2, -0x1

    .line 189
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 190
    invoke-static {v3}, Lcom/kms/gui/dialog/AlertController;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 195
    goto :goto_0
.end method

.method public static synthetic c(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    return-object v0
.end method

.method private c()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 489
    .line 493
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    .line 494
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    .line 504
    :goto_0
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v4, 0x7f0b002b

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    .line 505
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 516
    :goto_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v4, 0x7f0b002a

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    .line 517
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    :goto_2
    if-ne v1, v3, :cond_4

    .line 533
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/widget/Button;)V

    .line 540
    :cond_0
    :goto_3
    if-eqz v1, :cond_6

    :goto_4
    return v3

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kms/gui/dialog/AlertController;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 501
    goto :goto_0

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 513
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    iget-object v4, p0, Lcom/kms/gui/dialog/AlertController;->s:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    or-int/lit8 v1, v1, 0x4

    goto :goto_2

    .line 534
    :cond_4
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 535
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    .line 536
    :cond_5
    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v3, v2

    .line 540
    goto :goto_4
.end method

.method public static synthetic d(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->q:Landroid/os/Message;

    return-object v0
.end method

.method public static synthetic e(Lcom/kms/gui/dialog/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->r:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic f(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->t:Landroid/os/Message;

    return-object v0
.end method

.method public static synthetic g(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->a:Landroid/content/DialogInterface;

    return-object v0
.end method

.method public static synthetic h(Lcom/kms/gui/dialog/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->D:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 200
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 202
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    invoke-static {v0}, Lcom/kms/gui/dialog/AlertController;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 207
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->b:Landroid/view/Window;

    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 208
    invoke-direct {p0}, Lcom/kms/gui/dialog/AlertController;->b()V

    .line 209
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 300
    iput p1, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    .line 301
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 302
    if-lez p1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    iget v1, p0, Lcom/kms/gui/dialog/AlertController;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    if-nez p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->x:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    if-eqz p3, :cond_0

    .line 269
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->D:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 272
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :pswitch_0
    iput-object p2, p0, Lcom/kms/gui/dialog/AlertController;->m:Ljava/lang/CharSequence;

    .line 276
    iput-object p4, p0, Lcom/kms/gui/dialog/AlertController;->n:Landroid/os/Message;

    .line 287
    :goto_0
    return-void

    .line 280
    :pswitch_1
    iput-object p2, p0, Lcom/kms/gui/dialog/AlertController;->p:Ljava/lang/CharSequence;

    .line 281
    iput-object p4, p0, Lcom/kms/gui/dialog/AlertController;->q:Landroid/os/Message;

    goto :goto_0

    .line 285
    :pswitch_2
    iput-object p2, p0, Lcom/kms/gui/dialog/AlertController;->s:Ljava/lang/CharSequence;

    .line 286
    iput-object p4, p0, Lcom/kms/gui/dialog/AlertController;->t:Landroid/os/Message;

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController;->k:Z

    .line 238
    return-void
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->f:Landroid/view/View;

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/dialog/AlertController;->k:Z

    .line 247
    iput p2, p0, Lcom/kms/gui/dialog/AlertController;->g:I

    .line 248
    iput p3, p0, Lcom/kms/gui/dialog/AlertController;->h:I

    .line 249
    iput p4, p0, Lcom/kms/gui/dialog/AlertController;->i:I

    .line 250
    iput p5, p0, Lcom/kms/gui/dialog/AlertController;->j:I

    .line 251
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->c:Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/kms/gui/dialog/AlertController;->d:Ljava/lang/CharSequence;

    .line 227
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/gui/dialog/AlertController;->u:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
