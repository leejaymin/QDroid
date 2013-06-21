.class Lak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ㅼ꽑嫄:Lah;

.field final synthetic 癤욱븳援:Lao;

.field final synthetic 궗:Landroid/view/View;

.field final synthetic 먯꽌:Lal;


# direct methods
.method constructor <init>(Lah;Lao;Landroid/view/View;Lal;)V
    .locals 0

    iput-object p1, p0, Lak;->ㅼ꽑嫄:Lah;

    iput-object p2, p0, Lak;->癤욱븳援:Lao;

    iput-object p3, p0, Lak;->궗:Landroid/view/View;

    iput-object p4, p0, Lak;->먯꽌:Lal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lak;->ㅼ꽑嫄:Lah;

    iget-object v1, p0, Lak;->癤욱븳援:Lao;

    invoke-static {v0, v1}, Lah;->癤욱븳援(Lah;Lao;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Trying to switch GWAdNetworkAmbassadors, but GWController().destroy() has been called. Destroying the new ambassador and terminating mediation."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lak;->ㅼ꽑嫄:Lah;

    invoke-static {v0}, Lah;->궗(Lah;)Lbg;

    move-result-object v0

    iget-object v1, p0, Lak;->궗:Landroid/view/View;

    iget-object v2, p0, Lak;->癤욱븳援:Lao;

    iget-object v3, p0, Lak;->먯꽌:Lal;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lbg;->癤욱븳援(Landroid/view/View;Lao;Lal;Z)V

    goto :goto_0
.end method
