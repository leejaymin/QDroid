.class public Lrq;
.super Ljava/lang/Object;


# instance fields
.field public ㅼ꽑嫄:I

.field final 弱밧:Ljava/lang/String;

.field final synthetic 洹:Lcom/nbpcorp/mobilead/sdk/m;

.field public 癤욱븳援:Ljava/lang/String;

.field public 궗:Z

.field public 대쫫:Lrx;

.field public 먯꽌:I

.field public 쇰뒗:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lcom/nbpcorp/mobilead/sdk/m;)V
    .locals 2

    iput-object p1, p0, Lrq;->洹:Lcom/nbpcorp/mobilead/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lrq;->癤욱븳援:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrq;->궗:Z

    const-string v0, "nbp_ad_1234"

    iput-object v0, p0, Lrq;->弱밧:Ljava/lang/String;

    new-instance v0, Lrx;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx;-><init>(Lcom/nbpcorp/mobilead/sdk/m;Lrx;)V

    iput-object v0, p0, Lrq;->대쫫:Lrx;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nbpcorp/mobilead/sdk/m;Lrq;)V
    .locals 0

    invoke-direct {p0, p1}, Lrq;-><init>(Lcom/nbpcorp/mobilead/sdk/m;)V

    return-void
.end method
