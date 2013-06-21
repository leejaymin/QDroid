.class Laj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lad;

.field final synthetic 궗:Lah;


# direct methods
.method constructor <init>(Lah;Lad;)V
    .locals 0

    iput-object p1, p0, Laj;->궗:Lah;

    iput-object p2, p0, Laj;->癤욱븳援:Lad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Laj;->궗:Lah;

    invoke-static {v0}, Lah;->궗(Lah;)Lbg;

    move-result-object v0

    iget-object v1, p0, Laj;->癤욱븳援:Lad;

    invoke-virtual {v0, v1}, Lbg;->궗(Lad;)V

    return-void
.end method
