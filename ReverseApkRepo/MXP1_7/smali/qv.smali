.class Lqv;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic 癤욱븳援:Lqp;


# direct methods
.method private constructor <init>(Lqp;)V
    .locals 0

    iput-object p1, p0, Lqv;->癤욱븳援:Lqp;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lqp;Lqv;)V
    .locals 0

    invoke-direct {p0, p1}, Lqv;-><init>(Lqp;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v0, p0, Lqv;->癤욱븳援:Lqp;

    invoke-static {v0}, Lqp;->癤욱븳援(Lqp;)Llx;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Llx;->癤욱븳援(IZ)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lqv;->癤욱븳援:Lqp;

    invoke-static {v0}, Lqp;->궗(Lqp;)[Lqt;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lqv;->癤욱븳援:Lqp;

    const/4 v1, 0x0

    new-array v1, v1, [Lqt;

    invoke-static {v0, v1}, Lqp;->癤욱븳援(Lqp;[Lqt;)V

    :cond_0
    iget-object v0, p0, Lqv;->癤욱븳援:Lqp;

    invoke-static {v0}, Lqp;->먯꽌(Lqp;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method
