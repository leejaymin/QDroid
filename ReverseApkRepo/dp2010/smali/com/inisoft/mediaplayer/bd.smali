.class final Lcom/inisoft/mediaplayer/bd;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bd;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    const v0, 0x7f030023

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/inisoft/mediaplayer/bd;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bd;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const/16 v0, 0xe

    :try_start_1
    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bd;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->e:Landroid/content/SharedPreferences;

    const-string v2, "theme"

    const-string v3, "Light"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Light"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/bd;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    const v0, 0x7f05004c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bd;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    const v0, 0x7f05004d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bd;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bd;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bd;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/bd;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/bd;->a:Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;

    iget-object v3, v3, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
