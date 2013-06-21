.class public final Ldl;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/kms/gui/KMSCommonSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldl;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/KMSCommonSettingsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b012c

    const/4 v7, -0x1

    const v6, -0x4d4d4e

    const/4 v5, 0x0

    .line 398
    iget-object v0, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v0

    aget-object v0, v0, p2

    iget-boolean v3, v0, Ldk;->e:Z

    .line 399
    const v0, 0x7f0b0005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v1, v1, Ldk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const v1, 0x7f0b0006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 403
    iget-object v2, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v2

    aget-object v2, v2, p2

    iget-object v2, v2, Ldk;->c:Ljava/lang/String;

    .line 404
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 406
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    :goto_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 415
    const v2, 0x7f0b001e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 416
    if-eqz v2, :cond_1

    .line 418
    iget-object v4, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v4}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v4

    aget-object v4, v4, p2

    iget-boolean v4, v4, Ldk;->f:Z

    if-eqz v4, :cond_5

    .line 420
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    :cond_1
    :goto_1
    if-eqz v3, :cond_6

    .line 429
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 431
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v0, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->c(Lcom/kms/gui/KMSCommonSettingsActivity;)Ldi;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v0, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 434
    if-eqz v2, :cond_2

    .line 436
    iget-object v0, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 439
    if-eqz v0, :cond_3

    .line 441
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    :cond_3
    :goto_2
    return-void

    .line 410
    :cond_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_5
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 446
    :cond_6
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    invoke-virtual {p1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    invoke-virtual {p1, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 450
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 451
    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 452
    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 453
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 454
    if-eqz v2, :cond_7

    .line 456
    iget-object v0, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_7
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 459
    if-eqz v0, :cond_3

    .line 461
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method private b(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 569
    const v0, 0x7f0b012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 570
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v1

    aget-object v1, v1, p2

    iget-boolean v1, v1, Ldk;->h:Z

    if-eqz v1, :cond_0

    .line 572
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 573
    const v0, 0x7f0b012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 574
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v1, v1, Ldk;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v0

    array-length v0, v0

    .line 586
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 605
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 611
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0b012e

    const v3, 0x7f0b007b

    const/4 v0, 0x0

    .line 470
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v1

    aget-object v1, v1, p1

    iget v1, v1, Ldk;->a:I

    packed-switch v1, :pswitch_data_0

    .line 564
    :cond_0
    :goto_0
    return-object v0

    .line 474
    :pswitch_0
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(Lcom/kms/gui/KMSCommonSettingsActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030048

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 475
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v1, v1, Ldk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 480
    :pswitch_1
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(Lcom/kms/gui/KMSCommonSettingsActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004b

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 481
    invoke-direct {p0, v0, p1}, Ldl;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(Lcom/kms/gui/KMSCommonSettingsActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004c

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 487
    invoke-direct {p0, v0, p1}, Ldl;->a(Landroid/view/View;I)V

    .line 488
    invoke-direct {p0, v0, p1}, Ldl;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 494
    :pswitch_3
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(Lcom/kms/gui/KMSCommonSettingsActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030049

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 495
    invoke-direct {p0, v0, p1}, Ldl;->a(Landroid/view/View;I)V

    .line 497
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 498
    iget-object v2, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->c(Lcom/kms/gui/KMSCommonSettingsActivity;)Ldi;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 499
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 500
    iget-object v2, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v2

    aget-object v2, v2, p1

    iget-boolean v2, v2, Ldk;->d:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 501
    iget-object v2, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v2

    aget-object v2, v2, p1

    iget-boolean v2, v2, Ldk;->e:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 507
    :pswitch_4
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(Lcom/kms/gui/KMSCommonSettingsActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004a

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 508
    invoke-direct {p0, v0, p1}, Ldl;->a(Landroid/view/View;I)V

    .line 510
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 511
    iget-object v2, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v2

    aget-object v2, v2, p1

    iget-boolean v2, v2, Ldk;->d:Z

    .line 513
    iget-object v3, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonSettingsActivity;->c(Lcom/kms/gui/KMSCommonSettingsActivity;)Ldi;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 514
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 515
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 516
    iget-object v3, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v3

    aget-object v3, v3, p1

    iget-boolean v3, v3, Ldk;->e:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 517
    invoke-direct {p0, v0, p1}, Ldl;->b(Landroid/view/View;I)V

    .line 518
    const v1, 0x7f0b012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 520
    if-eqz v1, :cond_0

    .line 522
    if-eqz v2, :cond_1

    iget-object v3, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v3

    aget-object v3, v3, p1

    iget v3, v3, Ldk;->i:I

    if-eqz v3, :cond_1

    .line 524
    iget-object v3, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v3}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v3

    aget-object v3, v3, p1

    iget v3, v3, Ldk;->i:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 526
    :cond_1
    if-nez v2, :cond_0

    iget-object v2, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v2

    aget-object v2, v2, p1

    iget v2, v2, Ldk;->j:I

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v2

    aget-object v2, v2, p1

    iget v2, v2, Ldk;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 534
    :pswitch_5
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->a(Lcom/kms/gui/KMSCommonSettingsActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03004d

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 535
    invoke-direct {p0, v0, p1}, Ldl;->a(Landroid/view/View;I)V

    .line 536
    iget-object v1, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v1

    aget-object v1, v1, p1

    iget-boolean v1, v1, Ldk;->e:Z

    .line 537
    if-eqz v1, :cond_2

    .line 539
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 541
    new-instance v2, Ldm;

    invoke-direct {v2, p0, p1}, Ldm;-><init>(Ldl;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 553
    iget-object v2, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v2}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v2

    aget-object v2, v2, p1

    check-cast v2, Ldj;

    invoke-virtual {v2, v1}, Ldj;->a(Landroid/widget/LinearLayout;)V

    goto/16 :goto_0

    .line 557
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 599
    iget-object v0, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->b(Lcom/kms/gui/KMSCommonSettingsActivity;)[Ldk;

    move-result-object v0

    aget-object v0, v0, p1

    iget-boolean v0, v0, Ldk;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldl;->a:Lcom/kms/gui/KMSCommonSettingsActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
