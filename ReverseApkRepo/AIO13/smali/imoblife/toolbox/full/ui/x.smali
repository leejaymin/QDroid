.class public final Limoblife/toolbox/full/ui/x;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ACommunication;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/ACommunication;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/x;->a:Limoblife/toolbox/full/ui/ACommunication;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toggleChecked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/z;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/z;->c()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/x;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(IZ)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setChecked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/z;

    invoke-virtual {v0, p2}, Limoblife/toolbox/full/ui/z;->a(Z)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/x;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Limoblife/toolbox/full/ui/z;)Z
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Limoblife/toolbox/full/ui/z;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/z;

    return-object v0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/y;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/y;-><init>(Limoblife/toolbox/full/ui/x;)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final b(Limoblife/toolbox/full/ui/z;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Limoblife/toolbox/full/ui/z;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/z;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/z;

    iget-object v1, p0, Limoblife/toolbox/full/ui/x;->a:Limoblife/toolbox/full/ui/ACommunication;

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/ACommunication;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v0, p2}, Limoblife/toolbox/full/ui/z;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
