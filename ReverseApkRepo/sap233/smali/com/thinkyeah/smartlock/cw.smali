.class final Lcom/thinkyeah/smartlock/cw;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/thinkyeah/smartlock/cp;


# direct methods
.method private constructor <init>(Lcom/thinkyeah/smartlock/cp;)V
    .locals 2

    iput-object p1, p0, Lcom/thinkyeah/smartlock/cw;->b:Lcom/thinkyeah/smartlock/cp;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Lcom/thinkyeah/smartlock/cp;->j()Landroid/support/v4/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/cw;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkyeah/smartlock/cp;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/cw;-><init>(Lcom/thinkyeah/smartlock/cp;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cw;->b:Lcom/thinkyeah/smartlock/cp;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cp;->a(Lcom/thinkyeah/smartlock/cp;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cw;->b:Lcom/thinkyeah/smartlock/cp;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cp;->a(Lcom/thinkyeah/smartlock/cp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cw;->b:Lcom/thinkyeah/smartlock/cp;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cp;->j()Landroid/support/v4/app/g;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/thinkyeah/smartlock/cx;

    invoke-direct {v1, p0, v2}, Lcom/thinkyeah/smartlock/cx;-><init>(Lcom/thinkyeah/smartlock/cw;B)V

    const v0, 0x7f0b0006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/thinkyeah/smartlock/cx;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/thinkyeah/smartlock/cx;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/cw;->b:Lcom/thinkyeah/smartlock/cp;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cp;->a(Lcom/thinkyeah/smartlock/cp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->f()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/thinkyeah/smartlock/cw;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/smartlock/l;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, v1, Lcom/thinkyeah/smartlock/cx;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v1, Lcom/thinkyeah/smartlock/cx;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/cx;

    move-object v1, v0

    goto :goto_0
.end method
