.class public Ledu/umich/PowerTutor/service/IterationData;
.super Ljava/lang/Object;
.source "IterationData.java"


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/service/IterationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private uidPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/service/PowerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    .line 32
    sput-object v0, Ledu/umich/PowerTutor/service/IterationData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/service/IterationData;->uidPower:Landroid/util/SparseArray;

    .line 45
    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/service/IterationData;
    .locals 2

    .prologue
    .line 38
    sget-object v1, Ledu/umich/PowerTutor/service/IterationData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/service/IterationData;

    .line 39
    .local v0, result:Ledu/umich/PowerTutor/service/IterationData;
    if-eqz v0, :cond_0

    .line 40
    .end local v0           #result:Ledu/umich/PowerTutor/service/IterationData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/service/IterationData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/service/IterationData;

    .end local v0           #result:Ledu/umich/PowerTutor/service/IterationData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/service/IterationData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V
    .locals 1
    .parameter "uid"
    .parameter "power"

    .prologue
    .line 70
    iget-object v0, p0, Ledu/umich/PowerTutor/service/IterationData;->uidPower:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public getUidPowerData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/service/PowerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Ledu/umich/PowerTutor/service/IterationData;->uidPower:Landroid/util/SparseArray;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ledu/umich/PowerTutor/service/IterationData;->uidPower:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 52
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Ledu/umich/PowerTutor/service/IterationData;->uidPower:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Ledu/umich/PowerTutor/service/IterationData;->uidPower:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 62
    sget-object v1, Ledu/umich/PowerTutor/service/IterationData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 63
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Ledu/umich/PowerTutor/service/IterationData;->uidPower:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/umich/PowerTutor/service/PowerData;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/service/PowerData;->recycle()V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V
    .locals 1
    .parameter "power"

    .prologue
    .line 66
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Ledu/umich/PowerTutor/service/IterationData;->addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V

    .line 67
    return-void
.end method
