.class public final Lcom/thinkyeah/smartlock/h;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/AddAppActivity;


# direct methods
.method public constructor <init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/h;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/h;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/h;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/h;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/thinkyeah/smartlock/i;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/i;-><init>(Lcom/thinkyeah/smartlock/h;)V

    const v0, 0x7f0b0008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/thinkyeah/smartlock/i;->a:Landroid/widget/ImageView;

    const v0, 0x7f0b0009

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/thinkyeah/smartlock/i;->b:Landroid/widget/TextView;

    const v0, 0x7f0b000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/thinkyeah/smartlock/i;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/h;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/h;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v2}, Lcom/thinkyeah/smartlock/AddAppActivity;->g(Lcom/thinkyeah/smartlock/AddAppActivity;)Lcom/thinkyeah/smartlock/n;

    move-result-object v2

    iget-object v3, v1, Lcom/thinkyeah/smartlock/i;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/thinkyeah/smartlock/n;->a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/thinkyeah/smartlock/i;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/thinkyeah/smartlock/i;->c:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/h;->a:Lcom/thinkyeah/smartlock/AddAppActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/AddAppActivity;->c(Lcom/thinkyeah/smartlock/AddAppActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/i;

    move-object v1, v0

    goto :goto_0
.end method
