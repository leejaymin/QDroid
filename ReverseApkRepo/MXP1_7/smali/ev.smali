.class public Lev;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/ad/Banner;


# direct methods
.method public constructor <init>(Lcom/mxtech/ad/Banner;)V
    .locals 0

    iput-object p1, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    invoke-static {v0}, Lcom/mxtech/ad/Banner;->궗(Lcom/mxtech/ad/Banner;)Lfa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    invoke-static {v0}, Lcom/mxtech/ad/Banner;->궗(Lcom/mxtech/ad/Banner;)Lfa;

    move-result-object v0

    invoke-interface {v0}, Lfa;->ㅼ꽑嫄()V

    iget-object v0, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mxtech/ad/Banner;->癤욱븳援(Lcom/mxtech/ad/Banner;Lfa;)V

    iget-object v0, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    iget-object v1, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    invoke-static {v1}, Lcom/mxtech/ad/Banner;->먯꽌(Lcom/mxtech/ad/Banner;)Lfa;

    move-result-object v1

    invoke-interface {v1}, Lfa;->癤욱븳援()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mxtech/ad/Banner;->癤욱븳援(Lcom/mxtech/ad/Banner;Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    invoke-virtual {v0}, Lcom/mxtech/ad/Banner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    invoke-static {v0}, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄(Lcom/mxtech/ad/Banner;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    iget-object v1, p0, Lev;->癤욱븳援:Lcom/mxtech/ad/Banner;

    invoke-static {v1}, Lcom/mxtech/ad/Banner;->ㅼ꽑嫄(Lcom/mxtech/ad/Banner;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mxtech/ad/Banner;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
