.class final Limoblife/toolbox/full/ui/o;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Limoblife/toolbox/full/ui/ACache;


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/ACache;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/o;->b:Limoblife/toolbox/full/ui/ACache;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/ui/o;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/o;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Limoblife/toolbox/full/ui/p;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/o;->a:Ljava/util/List;

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
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/ui/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/p;

    iget-object v1, p0, Limoblife/toolbox/full/ui/o;->b:Limoblife/toolbox/full/ui/ACache;

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/ACache;->getApplicationContext()Landroid/content/Context;

    if-nez p2, :cond_0

    iget-object v1, v0, Limoblife/toolbox/full/ui/p;->f:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ACache;->g(Limoblife/toolbox/full/ui/ACache;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Limoblife/toolbox/full/ui/r;

    iget-object v1, v0, Limoblife/toolbox/full/ui/p;->f:Limoblife/toolbox/full/ui/ACache;

    invoke-direct {v2, v1}, Limoblife/toolbox/full/ui/r;-><init>(Limoblife/toolbox/full/ui/ACache;)V

    const v1, 0x7f080055

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Limoblife/toolbox/full/ui/r;->a:Landroid/widget/ImageView;

    iget-object v1, v2, Limoblife/toolbox/full/ui/r;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Limoblife/toolbox/full/ui/p;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f080056

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Limoblife/toolbox/full/ui/r;->b:Landroid/widget/TextView;

    iget-object v1, v2, Limoblife/toolbox/full/ui/r;->b:Landroid/widget/TextView;

    iget-object v3, v0, Limoblife/toolbox/full/ui/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080057

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Limoblife/toolbox/full/ui/r;->c:Landroid/widget/TextView;

    iget-object v1, v2, Limoblife/toolbox/full/ui/r;->c:Landroid/widget/TextView;

    iget-object v0, v0, Limoblife/toolbox/full/ui/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Limoblife/toolbox/full/ui/r;

    iget-object v2, v1, Limoblife/toolbox/full/ui/r;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Limoblife/toolbox/full/ui/p;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Limoblife/toolbox/full/ui/r;->b:Landroid/widget/TextView;

    iget-object v3, v0, Limoblife/toolbox/full/ui/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Limoblife/toolbox/full/ui/r;->c:Landroid/widget/TextView;

    iget-object v0, v0, Limoblife/toolbox/full/ui/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
