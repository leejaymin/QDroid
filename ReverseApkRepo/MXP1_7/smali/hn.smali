.class public final Lhn;
.super Lhd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lhd;-><init>(Landroid/net/Uri;)V

    new-instance v1, Lhl;

    new-instance v2, Lgw;

    invoke-direct {v2, v0}, Lgw;-><init>(Z)V

    const/16 v3, 0x7b

    const/16 v4, 0x7d

    invoke-direct {v1, v2, v3, v4}, Lhl;-><init>(Lgu;CC)V

    new-instance v2, Len;

    invoke-direct {v2, p1}, Len;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Len;->癤욱븳援()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lhn;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableRangeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/zip/DataFormatException;

    invoke-direct {v0}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {v1, v3}, Lhl;->癤욱븳援(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lhn;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    iget v4, v1, Lhl;->癤욱븳援:I

    iget v5, v1, Lhl;->궗:I

    iget-object v6, v1, Lhl;->먯꽌:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/mxtech/collection/SeekableRangeMap;->putRange(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lhn;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {v3}, Lcom/mxtech/collection/SeekableRangeMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/util/zip/DataFormatException;

    invoke-direct {v0}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method protected 癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p1, p2}, Lhk;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
