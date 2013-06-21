.class public Lcom/pgmsoft/wifinder/SaveRotate;
.super Ljava/lang/Object;
.source "SaveRotate.java"


# instance fields
.field private counter_base:J

.field private counter_to_finish:J

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;JJ)V
    .locals 3
    .parameter
    .parameter "counter_to_finish"
    .parameter "counter_base"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-wide/16 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgmsoft/wifinder/SaveRotate;->result:Ljava/util/List;

    .line 8
    iput-wide v1, p0, Lcom/pgmsoft/wifinder/SaveRotate;->counter_to_finish:J

    .line 9
    iput-wide v1, p0, Lcom/pgmsoft/wifinder/SaveRotate;->counter_base:J

    .line 12
    iput-object p1, p0, Lcom/pgmsoft/wifinder/SaveRotate;->result:Ljava/util/List;

    .line 13
    iput-wide p2, p0, Lcom/pgmsoft/wifinder/SaveRotate;->counter_to_finish:J

    .line 14
    iput-wide p4, p0, Lcom/pgmsoft/wifinder/SaveRotate;->counter_base:J

    .line 15
    return-void
.end method


# virtual methods
.method public getCounterBase()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/pgmsoft/wifinder/SaveRotate;->counter_base:J

    return-wide v0
.end method

.method public getCounterToFinish()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/pgmsoft/wifinder/SaveRotate;->counter_to_finish:J

    return-wide v0
.end method

.method public getScanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pgmsoft/wifinder/SaveRotate;->result:Ljava/util/List;

    return-object v0
.end method
