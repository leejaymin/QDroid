.class public final Ler;
.super Leq;

# interfaces
.implements Lh;
.implements Ljava/lang/Runnable;


# static fields
.field public static final 궗:Ljava/lang/String;


# instance fields
.field private final ㅼ꽑嫄:Li;

.field private final 弱밧:I

.field private final 먯꽌:Lfb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lfc;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".AdMob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ler;->궗:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfb;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Leq;-><init>()V

    iput-object p1, p0, Ler;->먯꽌:Lfb;

    iput p3, p0, Ler;->弱밧:I

    invoke-interface {p1}, Lfb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lfb;->癤욱븳援()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Ll;->궗:Ll;

    move-object v2, v0

    :goto_0
    new-instance v3, Lcom/google/ads/AdView;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v3, v0, v2, p2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Ll;Ljava/lang/String;)V

    iput-object v3, p0, Ler;->癤욱븳援:Landroid/view/ViewGroup;

    iget-object v0, p0, Ler;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/google/ads/AdView;->setAdListener(Lh;)V

    new-instance v0, Li;

    invoke-direct {v0}, Li;-><init>()V

    iput-object v0, p0, Ler;->ㅼ꽑嫄:Li;

    invoke-interface {p1}, Lfb;->洹()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Ler;->ㅼ꽑嫄:Li;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Li;->癤욱븳援(Ljava/util/Set;)Li;

    :cond_0
    invoke-interface {p1}, Lfb;->몃Ъ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lee;->궗(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ler;->ㅼ꽑嫄:Li;

    invoke-virtual {v1, v0}, Li;->癤욱븳援(Landroid/location/Location;)Li;

    :cond_1
    return-void

    :pswitch_1
    sget-object v0, Ll;->ㅼ꽑嫄:Ll;

    move-object v2, v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Ll;->弱밧:Ll;

    move-object v2, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static 弱밧()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ler;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/ads/AdView;

    iget-object v1, p0, Ler;->ㅼ꽑嫄:Li;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->癤욱븳援(Li;)V

    iget v0, p0, Ler;->弱밧:I

    if-lez v0, :cond_0

    iget-object v0, p0, Ler;->먯꽌:Lfb;

    iget v1, p0, Ler;->弱밧:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-interface {v0, p0, v1, v2}, Lfb;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public ㅼ꽑嫄()V
    .locals 2

    iget-object v0, p0, Ler;->먯꽌:Lfb;

    invoke-interface {v0, p0}, Lfb;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ler;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setAdListener(Lh;)V

    iget-object v0, p0, Ler;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->癤욱븳援()V

    invoke-super {p0}, Leq;->ㅼ꽑嫄()V

    return-void
.end method

.method public ㅼ꽑嫄(Lf;)V
    .locals 1

    iget-object v0, p0, Ler;->먯꽌:Lfb;

    invoke-interface {v0, p0}, Lfb;->궗(Lfa;)V

    return-void
.end method

.method public 癤욱븳援(Lf;)V
    .locals 1

    iget-object v0, p0, Ler;->먯꽌:Lfb;

    invoke-interface {v0, p0}, Lfb;->癤욱븳援(Lfa;)V

    return-void
.end method

.method public 癤욱븳援(Lf;Lj;)V
    .locals 2

    iget-object v1, p0, Ler;->먯꽌:Lfb;

    sget-object v0, Lj;->먯꽌:Lj;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p0, v0}, Lfb;->癤욱븳援(Lfa;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 궗()V
    .locals 3

    invoke-super {p0}, Leq;->궗()V

    iget-object v0, p0, Ler;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->궗()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ler;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/ads/AdView;

    iget-object v1, p0, Ler;->ㅼ꽑嫄:Li;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->癤욱븳援(Li;)V

    :cond_0
    iget v0, p0, Ler;->弱밧:I

    if-lez v0, :cond_1

    iget-object v0, p0, Ler;->먯꽌:Lfb;

    invoke-interface {v0, p0}, Lfb;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Ler;->먯꽌:Lfb;

    iget v1, p0, Ler;->弱밧:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-interface {v0, p0, v1, v2}, Lfb;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public 궗(Lf;)V
    .locals 0

    return-void
.end method

.method public 대쫫()V
    .locals 2

    iget-object v0, p0, Ler;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/ads/AdView;

    iget-object v1, p0, Ler;->ㅼ꽑嫄:Li;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->癤욱븳援(Li;)V

    return-void
.end method

.method public 먯꽌()V
    .locals 1

    iget-object v0, p0, Ler;->먯꽌:Lfb;

    invoke-interface {v0, p0}, Lfb;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Leq;->먯꽌()V

    return-void
.end method

.method public 먯꽌(Lf;)V
    .locals 0

    return-void
.end method

.method public 쇰뒗()C
    .locals 1

    const/16 v0, 0x61

    return v0
.end method
