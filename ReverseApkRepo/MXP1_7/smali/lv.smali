.class Llv;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic 癤욱븳援:Llp;


# direct methods
.method private constructor <init>(Llp;)V
    .locals 0

    iput-object p1, p0, Llv;->癤욱븳援:Llp;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llp;Llv;)V
    .locals 0

    invoke-direct {p0, p1}, Llv;-><init>(Llp;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    iget-object v0, p0, Llv;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->癤욱븳援(Llp;)Llx;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Llx;->癤욱븳援(IZ)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Llv;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->궗(Llp;)[Llr;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Llv;->癤욱븳援:Llp;

    const/4 v1, 0x0

    new-array v1, v1, [Llr;

    invoke-static {v0, v1}, Llp;->癤욱븳援(Llp;[Llr;)V

    :cond_0
    iget-object v0, p0, Llv;->癤욱븳援:Llp;

    invoke-static {v0}, Llp;->먯꽌(Llp;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method
