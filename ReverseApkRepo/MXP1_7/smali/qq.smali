.class Lqq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lqp;

.field private final 궗:J

.field private final 먯꽌:I


# direct methods
.method constructor <init>(Lqp;JI)V
    .locals 0

    iput-object p1, p0, Lqq;->癤욱븳援:Lqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lqq;->궗:J

    iput p4, p0, Lqq;->먯꽌:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lqq;->癤욱븳援:Lqp;

    iget-wide v1, p0, Lqq;->궗:J

    iget v3, p0, Lqq;->먯꽌:I

    invoke-virtual {v0, v1, v2, v3}, Lqp;->궗(JI)V

    return-void
.end method
