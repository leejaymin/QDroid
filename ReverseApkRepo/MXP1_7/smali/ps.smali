.class Lps;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lpo;


# direct methods
.method constructor <init>(Lpo;)V
    .locals 0

    iput-object p1, p0, Lps;->癤욱븳援:Lpo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic 癤욱븳援(Lps;)Lpo;
    .locals 1

    iget-object v0, p0, Lps;->癤욱븳援:Lpo;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lps;->癤욱븳援:Lpo;

    invoke-static {v0}, Lpo;->弱밧(Lpo;)Lri;

    move-result-object v0

    invoke-interface {v0}, Lri;->덉쓣()Lfm;

    move-result-object v0

    const-class v1, La;

    invoke-virtual {v0, v1}, Lfm;->癤욱븳援(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, La;

    iget-object v3, p0, Lps;->癤욱븳援:Lpo;

    invoke-static {v3}, Lpo;->ㅼ꽑嫄(Lpo;)Lafzkl/development/mColorPicker/views/ColorPanelView;

    move-result-object v3

    invoke-virtual {v3}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getColor()I

    move-result v3

    invoke-direct {v2, v1, v3}, La;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lps;->癤욱븳援:Lpo;

    invoke-static {v1}, Lpo;->弱밧(Lpo;)Lri;

    move-result-object v1

    invoke-interface {v1}, Lri;->留먰븷()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, La;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lee;->癤욱븳援(Landroid/view/Window;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, La;->癤욱븳援(Z)V

    invoke-virtual {v0, v2}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    new-instance v1, Lpt;

    invoke-direct {v1, p0}, Lpt;-><init>(Lps;)V

    invoke-virtual {v2, v1}, La;->癤욱븳援(Lc;)V

    invoke-virtual {v2, v0}, La;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, La;->show()V

    goto :goto_0
.end method
