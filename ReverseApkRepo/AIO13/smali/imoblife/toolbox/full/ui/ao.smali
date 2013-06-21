.class final Limoblife/toolbox/full/ui/ao;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Limoblife/toolbox/full/ui/AHistory;


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/AHistory;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/ao;->b:Limoblife/toolbox/full/ui/AHistory;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ao;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ao;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(I)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toggleChecked(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Limoblife/toolbox/full/ui/ao;->b:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v2}, Limoblife/toolbox/full/ui/AHistory;->a(Limoblife/toolbox/full/ui/AHistory;)Limoblife/toolbox/full/ui/ao;

    move-result-object v2

    invoke-virtual {v2}, Limoblife/toolbox/full/ui/ao;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/ui/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/ap;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ap;->a(Limoblife/toolbox/full/ui/ap;)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ao;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Limoblife/toolbox/full/ui/ap;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(I)Limoblife/toolbox/full/ui/ap;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/ap;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ao;->a:Ljava/util/List;

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

    iget-object v0, p0, Limoblife/toolbox/full/ui/ao;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/ap;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ao;->b:Limoblife/toolbox/full/ui/AHistory;

    invoke-virtual {v0, p2}, Limoblife/toolbox/full/ui/ap;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
