.class final Lcom/inisoft/mediaplayer/ch;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/inisoft/mediaplayer/by;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/by;Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ch;->c:Lcom/inisoft/mediaplayer/by;

    const v0, 0x7f030022

    invoke-direct {p0, p2, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/inisoft/mediaplayer/ch;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/ch;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ch;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ch;->c:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->b(Lcom/inisoft/mediaplayer/by;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ch;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ch;->c:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0, p1}, Lcom/inisoft/mediaplayer/by;->a(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/ch;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/ch;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/inisoft/mediaplayer/ch;->insert(Ljava/lang/Object;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v7, 0x38

    const/16 v6, 0x13

    const/4 v5, -0x2

    const/16 v4, 0xa

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ch;->c:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->a(Lcom/inisoft/mediaplayer/by;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ch;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const v1, 0x7f05004b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    const v1, 0x7f05004a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    const v0, 0x7f020068

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
