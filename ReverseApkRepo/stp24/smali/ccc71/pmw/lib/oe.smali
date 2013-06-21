.class final Lccc71/pmw/lib/oe;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_startup_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_startup_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    .line 131
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1
    new-instance v5, Lccc71/pmw/b/m;

    iget-object v0, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    iget-object v2, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_startup_apps;->c(Lccc71/pmw/lib/pmw_startup_apps;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lccc71/pmw/b/m;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_startup_apps;->c(Lccc71/pmw/lib/pmw_startup_apps;)Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x220

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Boot receivers found: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v4, v1

    :goto_0
    if-lt v4, v8, :cond_2

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_startup_apps;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v0, v6}, Lccc71/pmw/lib/pmw_startup_apps;->a(Lccc71/pmw/lib/pmw_startup_apps;Ljava/util/ArrayList;)V

    :cond_1
    return-object v3

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_startup_apps;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_3

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v2, v1

    :goto_1
    if-lt v2, v10, :cond_4

    move-object v0, v3

    :goto_2
    if-nez v0, :cond_8

    new-instance v10, Lccc71/pmw/lib/of;

    iget-object v0, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-direct {v10, v0, v1}, Lccc71/pmw/lib/of;-><init>(Lccc71/pmw/lib/pmw_startup_apps;B)V

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v10, Lccc71/pmw/lib/of;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, v10, Lccc71/pmw/lib/of;->b:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, v10, Lccc71/pmw/lib/of;->c:Ljava/lang/String;

    iget-object v0, v10, Lccc71/pmw/lib/of;->a:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Lccc71/pmw/b/m;->c(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lccc71/pmw/lib/of;->d:Ljava/lang/String;

    iget-object v0, v10, Lccc71/pmw/lib/of;->a:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Lccc71/pmw/b/m;->b(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v10, Lccc71/pmw/lib/of;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    iget-object v2, v10, Lccc71/pmw/lib/of;->b:Ljava/lang/String;

    iget-object v9, v10, Lccc71/pmw/lib/of;->c:Ljava/lang/String;

    invoke-static {v0, v2, v9}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lccc71/pmw/lib/of;->g:Z

    iget-object v0, p0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    iget-object v2, v10, Lccc71/pmw/lib/of;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lccc71/pmw/lib/of;->h:Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v2, v1

    :goto_3
    if-lt v2, v9, :cond_6

    move v0, v1

    :goto_4
    if-nez v0, :cond_3

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/of;

    iget-object v0, v0, Lccc71/pmw/lib/of;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/of;

    iget-object v0, v0, Lccc71/pmw/lib/of;->b:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/of;

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    invoke-static {}, Lccc71/pmw/lib/pmw_startup_apps;->e()Ljava/text/Collator;

    move-result-object v11

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/of;

    iget-object v0, v0, Lccc71/pmw/lib/of;->d:Ljava/lang/String;

    iget-object v12, v10, Lccc71/pmw/lib/of;->d:Ljava/lang/String;

    invoke-virtual {v11, v0, v12}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v6, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_8
    iget-object v2, v0, Lccc71/pmw/lib/of;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lccc71/pmw/lib/of;->c:Ljava/lang/String;

    goto :goto_5
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 18
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super/range {p0 .. p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_startup_apps;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    sget v2, Lccc71/pmw/lib/d;->gp:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_startup_apps;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_startup_apps;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

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

    iget-object v2, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v5

    const/high16 v2, 0x40c0

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_startup_apps;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->aC(Landroid/content/Context;)I

    move-result v9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    sget v4, Lccc71/pmw/lib/g;->dN:I

    invoke-virtual {v3, v4}, Lccc71/pmw/lib/pmw_startup_apps;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_startup_apps;->a(Lccc71/pmw/lib/pmw_startup_apps;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-lt v4, v11, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_startup_apps;->d(Lccc71/pmw/lib/pmw_startup_apps;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_startup_apps;->a(Lccc71/pmw/lib/pmw_startup_apps;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/pmw/lib/of;

    if-eqz v2, :cond_5

    iget-object v3, v2, Lccc71/pmw/lib/of;->a:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lccc71/pmw/a/d;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    new-instance v12, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-direct {v12, v13}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v4}, Landroid/widget/TableRow;->setId(I)V

    rem-int/lit8 v13, v4, 0x2

    if-nez v13, :cond_2

    invoke-virtual {v12, v9}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    :cond_2
    new-instance v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v14, v2, Lccc71/pmw/lib/of;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v14, Landroid/widget/TableRow$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v14, v6, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/16 v16, 0x4

    const/16 v17, 0x2

    invoke-virtual/range {v13 .. v17}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v14, 0x4000

    add-float/2addr v14, v5

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v14, v2, Lccc71/pmw/lib/of;->d:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v3, :cond_6

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_startup_apps;->e(Lccc71/pmw/lib/pmw_startup_apps;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, v2, Lccc71/pmw/lib/of;->h:Z

    if-eqz v3, :cond_3

    const/high16 v3, -0x1

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/high16 v16, 0x3f80

    move/from16 v0, v16

    invoke-direct {v3, v14, v15, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v13, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-direct {v13, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v3, v14, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, v2, Lccc71/pmw/lib/of;->g:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    iget-object v3, v3, Lccc71/pmw/lib/pmw_startup_apps;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v13, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v13, v4}, Landroid/widget/CheckBox;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/oe;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_startup_apps;->f(Lccc71/pmw/lib/pmw_startup_apps;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lccc71/pmw/b/h;->c:Z

    if-eqz v3, :cond_7

    iget-object v3, v2, Lccc71/pmw/lib/of;->b:Ljava/lang/String;

    const-string v14, "ccc71."

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v13, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iput-object v13, v2, Lccc71/pmw/lib/of;->f:Landroid/widget/CheckBox;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x1

    const/4 v13, -0x2

    const/high16 v14, 0x3f80

    invoke-direct {v2, v3, v13, v14}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v12, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method
