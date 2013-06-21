.class public final Les;
.super Leq;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lry;


# static fields
.field public static final 궗:Ljava/lang/String;


# instance fields
.field private final 먯꽌:Lfb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lfc;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".AdPost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Les;->궗:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfb;Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x2

    invoke-direct {p0}, Leq;-><init>()V

    iput-object p1, p0, Les;->먯꽌:Lfb;

    invoke-interface {p1}, Lfb;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-direct {v1, v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    iget-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-virtual {v0, p2}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->setChannelID(Ljava/lang/String;)V

    iget-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->setTest(Z)V

    iget-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-virtual {v0, p0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->setListener(Lry;)V

    iget-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static 弱밧()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Les;->먯꽌:Lfb;

    invoke-interface {v0, p0}, Lfb;->癤욱븳援(Lfa;)V

    :cond_0
    return-void
.end method

.method public ㅼ꽑嫄()V
    .locals 0

    return-void
.end method

.method public 洹()V
    .locals 1

    iget-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->먯꽌()V

    const/4 v0, 0x0

    iput-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    return-void
.end method

.method public 癤욱븳援(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Les;->먯꽌:Lfb;

    invoke-interface {v0, p0}, Lfb;->癤욱븳援(Lfa;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Les;->먯꽌:Lfb;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, p0, v0}, Lfb;->癤욱븳援(Lfa;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public 궗()V
    .locals 1

    invoke-super {p0}, Leq;->궗()V

    iget-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->癤욱븳援()V

    iget-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Les;->먯꽌:Lfb;

    invoke-interface {v0, p0}, Lfb;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public 대쫫()V
    .locals 0

    return-void
.end method

.method public 먯꽌()V
    .locals 1

    iget-object v0, p0, Les;->癤욱븳援:Landroid/view/ViewGroup;

    check-cast v0, Lcom/nbpcorp/mobilead/sdk/MobileAdView;

    invoke-virtual {v0}, Lcom/nbpcorp/mobilead/sdk/MobileAdView;->궗()V

    invoke-super {p0}, Leq;->먯꽌()V

    iget-object v0, p0, Les;->먯꽌:Lfb;

    invoke-interface {v0, p0}, Lfb;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public 쇰뒗()C
    .locals 1

    const/16 v0, 0x76

    return v0
.end method
