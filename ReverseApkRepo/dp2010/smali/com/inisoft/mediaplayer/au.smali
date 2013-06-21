.class final Lcom/inisoft/mediaplayer/au;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CommonListActivity;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/CommonListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/au;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    const v0, 0x7f030038

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/inisoft/mediaplayer/au;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/au;->a:Lcom/inisoft/mediaplayer/CommonListActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/CommonListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/au;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/at;

    if-eqz v0, :cond_2

    const v1, 0x7f05008e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f05008f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/inisoft/mediaplayer/at;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/inisoft/mediaplayer/at;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method
