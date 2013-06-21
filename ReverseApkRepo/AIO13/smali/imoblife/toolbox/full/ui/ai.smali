.class final Limoblife/toolbox/full/ui/ai;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Limoblife/toolbox/full/ui/ab;


# virtual methods
.method public final a(I)Limoblife/toolbox/full/ui/aj;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ai;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/aj;

    return-object v0
.end method

.method public final a(ILimoblife/toolbox/full/ui/aj;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ai;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ai;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/ai;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/aj;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ai;->b:Limoblife/toolbox/full/ui/ab;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ab;->b(Limoblife/toolbox/full/ui/ab;)Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/aj;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
