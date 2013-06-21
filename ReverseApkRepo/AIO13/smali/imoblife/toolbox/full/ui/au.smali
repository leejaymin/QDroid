.class public final Limoblife/toolbox/full/ui/au;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Limoblife/toolbox/full/ui/AInstaller;


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/AInstaller;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/au;->b:Limoblife/toolbox/full/ui/AInstaller;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/ui/au;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)Limoblife/toolbox/full/ui/at;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/at;

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/au;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/au;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/at;

    invoke-virtual {v0, p2}, Limoblife/toolbox/full/ui/at;->a(Z)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/au;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Limoblife/toolbox/full/ui/at;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/av;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/av;-><init>(Limoblife/toolbox/full/ui/au;)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/au;->a:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toggleChecked(): index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/ui/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/at;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/at;->d()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/au;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/au;->a:Ljava/util/List;

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

    iget-object v0, p0, Limoblife/toolbox/full/ui/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/at;

    iget-object v1, p0, Limoblife/toolbox/full/ui/au;->b:Limoblife/toolbox/full/ui/AInstaller;

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/AInstaller;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0, p2}, Limoblife/toolbox/full/ui/at;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
