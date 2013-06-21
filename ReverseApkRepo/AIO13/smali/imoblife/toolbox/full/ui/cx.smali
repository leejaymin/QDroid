.class public final Limoblife/toolbox/full/ui/cx;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Limoblife/toolbox/full/ui/AUninstaller;


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/AUninstaller;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/cx;->b:Limoblife/toolbox/full/ui/AUninstaller;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/ui/cx;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/cx;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/cz;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cz;->c()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/cx;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/cz;

    invoke-virtual {v0, p2}, Limoblife/toolbox/full/ui/cz;->a(Z)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/cx;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Limoblife/toolbox/full/ui/cz;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(I)Limoblife/toolbox/full/ui/cz;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/cz;

    return-object v0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/cy;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/cy;-><init>(Limoblife/toolbox/full/ui/cx;)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/cx;->a:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cx;->a:Ljava/util/List;

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

    iget-object v0, p0, Limoblife/toolbox/full/ui/cx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/cz;

    iget-object v1, p0, Limoblife/toolbox/full/ui/cx;->b:Limoblife/toolbox/full/ui/AUninstaller;

    invoke-virtual {v0, p2}, Limoblife/toolbox/full/ui/cz;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
