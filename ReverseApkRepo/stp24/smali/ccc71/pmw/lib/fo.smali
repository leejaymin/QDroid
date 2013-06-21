.class final Lccc71/pmw/lib/fo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_event_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_event_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 23
    .parameter

    .prologue
    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccc71/pmw/lib/fv;

    .line 399
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    sget v6, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v5, v6}, Lccc71/pmw/lib/pmw_event_apps;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableLayout;

    .line 400
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 402
    invoke-virtual {v5, v7}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    .line 406
    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    .line 476
    :cond_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {v5, v7}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_0

    .line 413
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v10

    .line 414
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v11

    .line 415
    const/high16 v6, 0x40c0

    add-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-virtual {v8}, Lccc71/pmw/lib/pmw_event_apps;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v8

    float-to-int v12, v6

    .line 416
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v13

    .line 417
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v14

    .line 419
    new-instance v15, Landroid/widget/TableRow$LayoutParams;

    const/4 v6, -0x1

    const/4 v8, -0x2

    const/high16 v9, 0x3f80

    invoke-direct {v15, v6, v8, v9}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 420
    new-instance v16, Landroid/widget/TableRow$LayoutParams;

    div-int/lit8 v6, v12, 0x2

    const/4 v8, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 421
    const/high16 v6, 0x4120

    move-object/from16 v0, p0

    iget-object v8, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-virtual {v8}, Lccc71/pmw/lib/pmw_event_apps;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    move-object/from16 v0, v16

    iput v6, v0, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    .line 423
    iget-object v6, v4, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 424
    const/4 v6, 0x0

    move v8, v6

    move v9, v7

    :goto_1
    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    .line 426
    iget-object v6, v4, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccc71/pmw/lib/fw;

    .line 428
    new-instance v18, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 429
    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/TableRow;->setId(I)V

    .line 431
    rem-int/lit8 v7, v8, 0x2

    if-nez v7, :cond_3

    .line 432
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 434
    :cond_3
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 435
    sget-object v19, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lccc71/pmw/lib/pmw_event_apps;->a(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnClickListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v19, Landroid/widget/TableRow$LayoutParams;

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v12, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 440
    sget-object v19, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 441
    iget v0, v6, Lccc71/pmw/lib/fw;->b:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 442
    sget v19, Lccc71/pmw/lib/c;->l:I

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    :goto_2
    iget v0, v6, Lccc71/pmw/lib/fw;->b:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lccc71/pmw/lib/pmw_event_apps;->a(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnClickListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 450
    const/16 v19, 0x4

    const/16 v20, 0x2

    const/16 v21, 0x4

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 451
    const/high16 v19, 0x4000

    add-float v19, v19, v11

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 452
    iget-object v0, v6, Lccc71/pmw/lib/fw;->c:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v6, Lccc71/pmw/lib/fw;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x2e

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 454
    iget-object v0, v4, Lccc71/pmw/lib/fv;->a:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 455
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lccc71/pmw/lib/pmw_event_apps;->b(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnClickListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v15}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    new-instance v19, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 463
    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    iget-object v0, v4, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v6, Lccc71/pmw/lib/fw;->d:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v7, v0, v1}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 465
    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 467
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    iget-object v7, v7, Lccc71/pmw/lib/pmw_event_apps;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 468
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v4, v7, v20

    const/16 v20, 0x1

    aput-object v6, v7, v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/pmw/lib/fo;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v7}, Lccc71/pmw/lib/pmw_event_apps;->c(Lccc71/pmw/lib/pmw_event_apps;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lccc71/pmw/b/h;->c:Z

    if-eqz v7, :cond_7

    iget-object v7, v4, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    const-string v20, "ccc71."

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 471
    move-object/from16 v0, v19

    iput-object v0, v6, Lccc71/pmw/lib/fw;->a:Landroid/widget/CheckBox;

    .line 473
    add-int/lit8 v7, v9, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v9, v15}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 424
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v9, v7

    goto/16 :goto_1

    .line 444
    :cond_5
    sget v19, Lccc71/pmw/lib/c;->M:I

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 457
    :cond_6
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 469
    :cond_7
    const/4 v7, 0x0

    goto :goto_4
.end method
