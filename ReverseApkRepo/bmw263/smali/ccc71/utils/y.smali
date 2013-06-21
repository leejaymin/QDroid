.class final Lccc71/utils/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field final synthetic a:Lccc71/utils/ccc71_list_view;


# direct methods
.method constructor <init>(Lccc71/utils/ccc71_list_view;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/utils/y;)Lccc71/utils/ccc71_list_view;
    .locals 1
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    return-object v0
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 380
    :goto_0
    return v0

    .line 375
    :cond_0
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->b(Lccc71/utils/ccc71_list_view;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->b(Lccc71/utils/ccc71_list_view;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 387
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v1}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    .line 389
    :cond_0
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->b(Lccc71/utils/ccc71_list_view;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->b(Lccc71/utils/ccc71_list_view;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    goto :goto_0

    .line 392
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 398
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 404
    const/4 v0, -0x1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 411
    if-eqz p2, :cond_2

    move-object v0, p2

    .line 413
    check-cast v0, Lccc71/utils/ccc71_grid_view;

    move-object v1, v0

    .line 420
    :goto_0
    const-wide/16 v2, 0x0

    .line 421
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_grid_view;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    .line 424
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v4}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    .line 425
    iget-object v4, v0, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-eqz v4, :cond_3

    .line 427
    iget-object v2, v0, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 428
    iget-object v4, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    iget-boolean v4, v4, Lccc71/utils/ccc71_list_view;->a:Z

    invoke-virtual {v1, v0, v4}, Lccc71/utils/ccc71_grid_view;->setHistory(Lccc71/bmw/data/b;Z)V

    .line 441
    :goto_1
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lccc71/utils/z;

    invoke-direct {v0, p0, v2, v3}, Lccc71/utils/z;-><init>(Lccc71/utils/y;J)V

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_grid_view;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 459
    :cond_0
    new-instance v0, Lccc71/utils/aa;

    invoke-direct {v0, p0}, Lccc71/utils/aa;-><init>(Lccc71/utils/y;)V

    invoke-virtual {v1, v0}, Lccc71/utils/ccc71_grid_view;->setOnViewSwitch(Lccc71/utils/ak;)V

    .line 544
    if-eqz p2, :cond_1

    .line 545
    invoke-virtual {v1}, Lccc71/utils/ccc71_grid_view;->invalidate()V

    .line 547
    :cond_1
    return-object v1

    .line 417
    :cond_2
    new-instance v0, Lccc71/utils/ccc71_grid_view;

    iget-object v1, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v1}, Lccc71/utils/ccc71_list_view;->c(Lccc71/utils/ccc71_list_view;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/utils/ccc71_grid_view;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    goto :goto_0

    .line 432
    :cond_3
    iget v4, v0, Lccc71/bmw/data/b;->b:I

    invoke-virtual {v1, v4}, Lccc71/utils/ccc71_grid_view;->setId(I)V

    .line 433
    iget-object v0, v0, Lccc71/bmw/data/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v6, v0}, Lccc71/utils/ccc71_grid_view;->setText(ZLjava/lang/String;)V

    goto :goto_1

    .line 438
    :cond_4
    iget-object v0, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v0}, Lccc71/utils/ccc71_list_view;->b(Lccc71/utils/ccc71_list_view;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v1, v6, v0}, Lccc71/utils/ccc71_grid_view;->setText(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 563
    iget-object v1, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v1}, Lccc71/utils/ccc71_list_view;->a(Lccc71/utils/ccc71_list_view;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 567
    :cond_1
    iget-object v1, p0, Lccc71/utils/y;->a:Lccc71/utils/ccc71_list_view;

    invoke-static {v1}, Lccc71/utils/ccc71_list_view;->b(Lccc71/utils/ccc71_list_view;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 572
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    return-void
.end method
