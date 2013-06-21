.class public final Lcom/rubycell/pianisthd/a/b;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/rubycell/pianisthd/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/a/b;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/h;->j()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/b;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0a0117

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0118

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rubycell/pianisthd/c/h;

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/h;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a011b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/a/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/rubycell/pianisthd/a/c;-><init>(Lcom/rubycell/pianisthd/a/b;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a011c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/a/d;

    invoke-direct {v1, p0, p2, p1}, Lcom/rubycell/pianisthd/a/d;-><init>(Lcom/rubycell/pianisthd/a/b;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a011d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/a/e;

    invoke-direct {v1, p0, v3}, Lcom/rubycell/pianisthd/a/e;-><init>(Lcom/rubycell/pianisthd/a/b;Lcom/rubycell/pianisthd/c/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a011e

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    new-instance v5, Lcom/rubycell/pianisthd/a/f;

    invoke-direct {v5, p0, v3}, Lcom/rubycell/pianisthd/a/f;-><init>(Lcom/rubycell/pianisthd/a/b;Lcom/rubycell/pianisthd/c/h;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Lcom/rubycell/pianisthd/c/a;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a0119

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    :try_start_0
    invoke-virtual {v3}, Lcom/rubycell/pianisthd/c/h;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-object v4

    :pswitch_0
    const v0, 0x7f020100

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f02016e

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020043

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/a;

    return-object p0
.end method

.method public final getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/a;->b()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/a/b;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a004c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rubycell/pianisthd/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/a;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
