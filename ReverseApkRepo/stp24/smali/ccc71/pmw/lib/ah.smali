.class final Lccc71/pmw/lib/ah;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_analyzer;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_analyzer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    iput-object p2, p0, Lccc71/pmw/lib/ah;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lccc71/pmw/lib/ah;->c:Ljava/util/ArrayList;

    .line 471
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->f()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-object v7

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    iget-object v2, p0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v4, v0, Lccc71/pmw/b/t;->c:Ljava/lang/String;

    invoke-static {v2, v4}, Lccc71/pmw/b/q;->a(Landroid/content/Context;Ljava/lang/String;)Lccc71/pmw/b/p;

    move-result-object v2

    iget v0, v0, Lccc71/pmw/b/t;->a:I

    iput v0, v2, Lccc71/pmw/b/p;->a:I

    iget-object v0, p0, Lccc71/pmw/lib/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/b/t;

    iget v1, v0, Lccc71/pmw/b/t;->a:I

    invoke-static {v1}, Lccc71/pmw/lib/pmw_recorder;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lccc71/pmw/b/t;->d:I

    int-to-float v1, v1

    iget-object v3, p0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_analyzer;->t(Lccc71/pmw/lib/pmw_analyzer;)F

    move-result v5

    mul-float/2addr v3, v5

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    iget v1, v0, Lccc71/pmw/b/t;->a:I

    if-lez v1, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->u(Lccc71/pmw/lib/pmw_analyzer;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_analyzer;->v(Lccc71/pmw/lib/pmw_analyzer;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, v0, Lccc71/pmw/b/t;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lccc71/pmw/b/t;->a:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget v3, v0, Lccc71/pmw/b/t;->d:I

    invoke-static {v1, v3}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;I)V

    :cond_5
    iget-object v1, p0, Lccc71/pmw/lib/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    :goto_2
    if-lt v3, v5, :cond_6

    move v1, v2

    :goto_3
    if-nez v1, :cond_2

    iget-object v1, p0, Lccc71/pmw/lib/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lccc71/pmw/lib/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget v1, v1, Lccc71/pmw/b/t;->d:I

    iget v6, v0, Lccc71/pmw/b/t;->d:I

    if-ge v1, v6, :cond_7

    const/4 v1, 0x1

    iget-object v5, p0, Lccc71/pmw/lib/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 21
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super/range {p0 .. p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    sget v3, Lccc71/pmw/lib/d;->aV:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    sget v4, Lccc71/pmw/lib/d;->gh:I

    invoke-virtual {v3, v4}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    invoke-virtual {v3}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v4, 0x0

    move v12, v4

    :goto_0
    if-lt v12, v13, :cond_3

    if-eqz v11, :cond_0

    if-eqz v9, :cond_0

    invoke-virtual {v11}, Landroid/widget/TableRow;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v11, v3}, Landroid/widget/TableRow;->removeViewAt(I)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    sget v5, Lccc71/pmw/lib/g;->dy:I

    invoke-virtual {v4, v5}, Lccc71/pmw/lib/pmw_analyzer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x2

    const/4 v12, 0x5

    invoke-virtual {v3, v4, v5, v8, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_analyzer;->w(Lccc71/pmw/lib/pmw_analyzer;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v11, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v8, 0x2

    const/4 v12, 0x2

    invoke-virtual {v3, v4, v5, v8, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_analyzer;->w(Lccc71/pmw/lib/pmw_analyzer;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    div-int v4, v10, v9

    invoke-static {v4}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    const/16 v3, -0x10

    invoke-virtual {v11, v3}, Landroid/widget/TableRow;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v3, v3, Lccc71/pmw/lib/pmw_analyzer;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v3}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v3, v11}, Lccc71/pmw/lib/pmw_analyzer;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v11, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer;->z(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    :cond_0
    if-eqz v7, :cond_2

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_2

    invoke-virtual {v7}, Landroid/widget/TableRow;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v7, v3}, Landroid/widget/TableRow;->removeViewAt(I)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    sget v5, Lccc71/pmw/lib/g;->dz:I

    invoke-virtual {v4, v5}, Lccc71/pmw/lib/pmw_analyzer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x2

    const/4 v10, 0x5

    invoke-virtual {v3, v4, v5, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_analyzer;->w(Lccc71/pmw/lib/pmw_analyzer;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v8, 0x2

    const/4 v10, 0x2

    invoke-virtual {v3, v4, v5, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_analyzer;->w(Lccc71/pmw/lib/pmw_analyzer;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%.1f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v8, v10

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u00b0C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    const/16 v3, -0x40

    invoke-virtual {v7, v3}, Landroid/widget/TableRow;->setId(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v3, v3, Lccc71/pmw/lib/pmw_analyzer;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v3}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v3, v7}, Lccc71/pmw/lib/pmw_analyzer;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v7, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    if-eqz v11, :cond_1

    if-nez v9, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_analyzer;->z(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    sget v3, Lccc71/pmw/lib/d;->iC:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v3, v3, Lccc71/pmw/lib/pmw_analyzer;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer;->w(Lccc71/pmw/lib/pmw_analyzer;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    sget v3, Lccc71/pmw/lib/d;->fA:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_analyzer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer;->A(Lccc71/pmw/lib/pmw_analyzer;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccc71/pmw/b/t;

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/lib/ah;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccc71/pmw/b/p;

    new-instance v8, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-direct {v8, v14}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-direct {v14, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v15, v5, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_6

    iget-object v15, v5, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v15, Landroid/widget/TableRow$LayoutParams;

    const/16 v16, 0x20

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v17}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v15, v5, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    if-eqz v15, :cond_8

    iget-object v15, v5, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v15, 0x5

    const/16 v16, 0x2

    const/16 v17, 0x2

    const/16 v18, 0x5

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v15}, Lccc71/pmw/lib/pmw_analyzer;->w(Lccc71/pmw/lib/pmw_analyzer;)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    iget v15, v5, Lccc71/pmw/b/p;->a:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lccc71/pmw/lib/pmw_analyzer;->g(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    iget v15, v5, Lccc71/pmw/b/p;->a:I

    if-nez v15, :cond_9

    :cond_5
    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    invoke-virtual {v8, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x2

    const/16 v16, 0x2

    const/16 v17, 0x2

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v15}, Lccc71/pmw/lib/pmw_analyzer;->w(Lccc71/pmw/lib/pmw_analyzer;)F

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    iget v15, v5, Lccc71/pmw/b/p;->a:I

    const/16 v16, -0x10

    move/from16 v0, v16

    if-gt v15, v0, :cond_a

    iget v15, v5, Lccc71/pmw/b/p;->a:I

    const/16 v16, -0x30

    move/from16 v0, v16

    if-lt v15, v0, :cond_a

    iget-object v15, v4, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_a

    iget v5, v4, Lccc71/pmw/b/t;->d:I

    mul-int/lit8 v5, v5, 0xa

    iget-object v4, v4, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int v4, v5, v4

    add-int v5, v10, v4

    add-int/lit8 v4, v9, 0x1

    move/from16 v19, v6

    move v6, v4

    move/from16 v4, v19

    move-object/from16 v20, v7

    move v7, v5

    move-object/from16 v5, v20

    :goto_5
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    move v10, v7

    move-object v11, v8

    move v9, v6

    move-object v7, v5

    move v6, v4

    goto/16 :goto_0

    :cond_6
    iget v15, v4, Lccc71/pmw/b/t;->a:I

    if-lez v15, :cond_7

    sget v15, Lccc71/pmw/lib/c;->w:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_7
    iget v15, v4, Lccc71/pmw/b/t;->a:I

    if-nez v15, :cond_4

    sget v15, Lccc71/pmw/lib/c;->k:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v15, v5, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    iget v15, v4, Lccc71/pmw/b/t;->b:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_a
    iget v15, v5, Lccc71/pmw/b/p;->a:I

    const/16 v16, -0x40

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    iget-object v15, v4, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_b

    iget v5, v4, Lccc71/pmw/b/t;->d:I

    int-to-float v5, v5

    iget-object v4, v4, Lccc71/pmw/b/t;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    div-float v4, v5, v4

    move-object v5, v8

    move v6, v9

    move v7, v10

    move-object v8, v11

    goto :goto_5

    :cond_b
    iget v15, v5, Lccc71/pmw/b/p;->a:I

    packed-switch v15, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v15}, Lccc71/pmw/lib/pmw_analyzer;->x(Lccc71/pmw/lib/pmw_analyzer;)Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v15}, Lccc71/pmw/lib/pmw_analyzer;->y(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v15

    if-eqz v15, :cond_d

    const-wide/16 v15, 0x2710

    iget v4, v4, Lccc71/pmw/b/t;->d:I

    int-to-long v0, v4

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_analyzer;->y(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v17, v0

    div-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Lccc71/utils/ag;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-virtual {v8, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget v4, v5, Lccc71/pmw/b/p;->a:I

    invoke-virtual {v8, v4}, Landroid/widget/TableRow;->setId(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    iget-object v4, v4, Lccc71/pmw/lib/pmw_analyzer;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v4}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v4, v5, Lccc71/pmw/b/p;->a:I

    if-gtz v4, :cond_f

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v2, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v5, Lccc71/pmw/lib/c;->aS:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/4 v8, -0x1

    const/4 v14, 0x2

    invoke-direct {v5, v8, v14}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    move v4, v6

    move-object v5, v7

    move-object v8, v11

    move v7, v10

    move v6, v9

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v15}, Lccc71/pmw/lib/pmw_analyzer;->x(Lccc71/pmw/lib/pmw_analyzer;)Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v15}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v15

    if-eqz v15, :cond_c

    iget v4, v4, Lccc71/pmw/b/t;->d:I

    mul-int/lit8 v4, v4, 0x64

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v15}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v15

    div-int/2addr v4, v15

    int-to-long v15, v4

    invoke-static/range {v15 .. v16}, Lccc71/utils/ag;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    iget v4, v4, Lccc71/pmw/b/t;->d:I

    int-to-float v4, v4

    const/high16 v15, 0x42c8

    div-float/2addr v4, v15

    invoke-static {v4}, Lccc71/utils/ag;->a(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_d
    iget v4, v4, Lccc71/pmw/b/t;->d:I

    int-to-float v4, v4

    const/high16 v15, 0x42c8

    div-float/2addr v4, v15

    invoke-static {v4}, Lccc71/utils/ag;->a(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_e
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v8, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    move v4, v6

    move-object v5, v7

    move-object v8, v11

    move v7, v10

    move v6, v9

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v4, v8}, Lccc71/pmw/lib/pmw_analyzer;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {v3, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/lib/ah;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_analyzer;->z(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    :cond_10
    move v4, v6

    move-object v5, v7

    move-object v8, v11

    move v7, v10

    move v6, v9

    goto/16 :goto_5

    :cond_11
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
