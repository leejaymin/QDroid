.class Lmi;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic 癤욱븳援:Lmd;


# direct methods
.method constructor <init>(Lmd;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lmi;->癤욱븳援:Lmd;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lmi;->癤욱븳援:Lmd;

    invoke-static {v0}, Lmd;->먯꽌(Lmd;)Lmj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmi;->癤욱븳援:Lmd;

    invoke-static {v0}, Lmd;->먯꽌(Lmd;)Lmj;

    move-result-object v0

    iget-object v1, p0, Lmi;->癤욱븳援:Lmd;

    invoke-interface {v0, v1, p1}, Lmj;->癤욱븳援(Lmd;Landroid/view/KeyEvent;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lmi;->癤욱븳援:Lmd;

    invoke-static {v0}, Lmd;->먯꽌(Lmd;)Lmj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmi;->癤욱븳援:Lmd;

    invoke-static {v0}, Lmd;->먯꽌(Lmd;)Lmj;

    move-result-object v0

    iget-object v1, p0, Lmi;->癤욱븳援:Lmd;

    invoke-interface {v0, v1, p1}, Lmj;->癤욱븳援(Lmd;Z)V

    :cond_0
    return-void
.end method
