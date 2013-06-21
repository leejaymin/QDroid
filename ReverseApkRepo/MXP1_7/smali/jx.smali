.class public Ljx;
.super Ljava/lang/Object;


# instance fields
.field final 癤욱븳援:Ljava/lang/String;

.field final 궗:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgg;II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Ljx;->궗:I

    invoke-interface {p2, p3}, Lgg;->癤욱븳援(I)Lgh;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lgf;->쇰뒗()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lgf;->留먰븷()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget v0, Lnt;->audiotrack_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Ljx;->癤욱븳援:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lgf;->癤욱븳援()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lgf;->癤욱븳援()V

    throw v0
.end method
