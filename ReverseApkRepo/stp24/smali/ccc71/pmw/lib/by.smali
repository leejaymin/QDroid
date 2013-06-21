.class final Lccc71/pmw/lib/by;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    .line 791
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, p0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 17
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super/range {p0 .. p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_applist;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v5

    const/high16 v1, 0x40c0

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_applist;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/d;->iQ:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Totals: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->D(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->F(Lccc71/pmw/lib/pmw_applist;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->D(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    invoke-static {v2}, Lccc71/pmw/a/d;->c(Landroid/content/pm/ApplicationInfo;)Z

    move-result v10

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v11}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v11}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, -0x1

    add-int/lit8 v3, v4, -0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v2

    goto/16 :goto_1

    :cond_7
    new-instance v11, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v11, v12}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v3}, Landroid/widget/TableRow;->setId(I)V

    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v12, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v13, Lccc71/pmw/lib/c;->P:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v13, Landroid/widget/TableRow$LayoutParams;

    const/4 v14, -0x1

    invoke-direct {v13, v6, v14}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x4

    const/16 v16, 0x2

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v13, 0x4000

    add-float/2addr v13, v5

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v9, :cond_9

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    :goto_3
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/high16 v13, 0x3f80

    invoke-direct {v2, v9, v10, v13}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v12, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x2

    invoke-virtual {v2, v9, v10, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v9, 0x4000

    sub-float v9, v5, v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/4 v10, -0x2

    const/4 v12, -0x2

    invoke-direct {v9, v10, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v2, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x2

    invoke-virtual {v2, v9, v10, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v9, 0x4000

    sub-float v9, v5, v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/4 v10, -0x2

    const/4 v12, -0x2

    invoke-direct {v9, v10, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v2, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->E(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v11}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    move v2, v3

    move v3, v4

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v10, :cond_8

    const/4 v2, 0x0

    const/4 v9, 0x0

    sget v10, Lccc71/pmw/lib/c;->av:I

    const/4 v13, 0x0

    invoke-virtual {v12, v2, v9, v10, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/by;->a:Lccc71/pmw/lib/pmw_applist;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V

    goto/16 :goto_0
.end method
