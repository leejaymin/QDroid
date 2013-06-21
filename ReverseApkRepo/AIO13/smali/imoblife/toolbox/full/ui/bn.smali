.class public final Limoblife/toolbox/full/ui/bn;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Limoblife/toolbox/full/ui/AStartup;


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/AStartup;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/bn;->b:Limoblife/toolbox/full/ui/AStartup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/ui/bn;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bn;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/bn;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bn;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/bo;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bo;->a()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/bn;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Limoblife/toolbox/full/ui/bo;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bn;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(I)Limoblife/toolbox/full/ui/bo;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bn;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/bo;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bn;->a:Ljava/util/List;

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

    iget-object v0, p0, Limoblife/toolbox/full/ui/bn;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/bo;

    iget-object v1, p0, Limoblife/toolbox/full/ui/bn;->b:Limoblife/toolbox/full/ui/AStartup;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bo;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
