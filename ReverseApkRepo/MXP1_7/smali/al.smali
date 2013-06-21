.class public Lal;
.super Ljava/lang/Object;


# instance fields
.field private final ㅼ꽑嫄:Ljava/util/List;

.field private final 弱밧:Ljava/util/List;

.field private final 癤욱븳援:Ljava/lang/String;

.field private final 궗:Ljava/lang/String;

.field private final 먯꽌:Ljava/lang/String;

.field private final 쇰뒗:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lct;->癤욱븳援(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lct;->癤욱븳援(Ljava/lang/String;)V

    :cond_0
    invoke-static {p3}, Lct;->癤욱븳援(Ljava/lang/String;)V

    iput-object p1, p0, Lal;->癤욱븳援:Ljava/lang/String;

    iput-object p2, p0, Lal;->궗:Ljava/lang/String;

    iput-object p3, p0, Lal;->먯꽌:Ljava/lang/String;

    iput-object p4, p0, Lal;->ㅼ꽑嫄:Ljava/util/List;

    iput-object p5, p0, Lal;->弱밧:Ljava/util/List;

    iput-object p6, p0, Lal;->쇰뒗:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ㅼ꽑嫄()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lal;->ㅼ꽑嫄:Ljava/util/List;

    return-object v0
.end method

.method public 癤욱븳援()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lal;->癤욱븳援:Ljava/lang/String;

    return-object v0
.end method

.method public 궗()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lal;->궗:Ljava/lang/String;

    return-object v0
.end method

.method public 먯꽌()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lal;->먯꽌:Ljava/lang/String;

    return-object v0
.end method
