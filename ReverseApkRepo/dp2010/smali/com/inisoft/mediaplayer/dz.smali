.class final Lcom/inisoft/mediaplayer/dz;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaPathActivity;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/MediaPathActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dz;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/inisoft/mediaplayer/dz;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/dz;->c:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/dz;->d:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v4, 0x0

    const v5, -0x333334

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/eb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/eb;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lcom/inisoft/mediaplayer/ec;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/dz;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f030036

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setLongClickable(Z)V

    const v1, 0x7f05008d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dz;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    const-string v3, "DICE_SETTINGS"

    invoke-virtual {v2, v3, v4}, Lcom/inisoft/mediaplayer/MediaPathActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "theme"

    const-string v4, "Light"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ec;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/inisoft/mediaplayer/ea;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/dz;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f030035

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f05008b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v1, 0x7f05008c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/inisoft/mediaplayer/ea;->a:Lcom/inisoft/mediaplayer/bp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
