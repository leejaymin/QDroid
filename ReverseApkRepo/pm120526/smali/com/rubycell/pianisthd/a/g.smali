.class public final Lcom/rubycell/pianisthd/a/g;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/a/g;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/rubycell/pianisthd/a/g;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/a/g;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/g;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a0118

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/h;

    const v2, 0x7f0a0134

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v4, Lcom/rubycell/pianisthd/a/h;

    invoke-direct {v4, p0, p1}, Lcom/rubycell/pianisthd/a/h;-><init>(Lcom/rubycell/pianisthd/a/g;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0135

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v4, Lcom/rubycell/pianisthd/a/i;

    invoke-direct {v4, p0, p1}, Lcom/rubycell/pianisthd/a/i;-><init>(Lcom/rubycell/pianisthd/a/g;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0136

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v4, Lcom/rubycell/pianisthd/a/j;

    invoke-direct {v4, p0, p1}, Lcom/rubycell/pianisthd/a/j;-><init>(Lcom/rubycell/pianisthd/a/g;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0133

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v4, Lcom/rubycell/pianisthd/a/k;

    invoke-direct {v4, p0, p1}, Lcom/rubycell/pianisthd/a/k;-><init>(Lcom/rubycell/pianisthd/a/g;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v4, Lcom/rubycell/pianisthd/d/b;->M:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    const v2, 0x7f0a0137

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v4, Lcom/rubycell/pianisthd/a/l;

    invoke-direct {v4, p0, p1}, Lcom/rubycell/pianisthd/a/l;-><init>(Lcom/rubycell/pianisthd/a/g;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3
.end method
