.class public final Lay;
.super Ljava/lang/Exception;


# instance fields
.field public final 癤욱븳援:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lay;->癤욱븳援:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean p2, p0, Lay;->癤욱븳援:Z

    return-void
.end method


# virtual methods
.method public 癤욱븳援(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lay;->먯꽌(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcv;->癤욱븳援(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public 궗(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p1}, Lay;->먯꽌(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lay;->癤욱븳援:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public 먯꽌(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lay;->癤욱븳援:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lay;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
