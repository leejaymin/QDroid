.class public Lbl;
.super Ljava/lang/Object;


# static fields
.field private static 대쫫:J

.field private static 몃Ъ:J

.field private static 쇰뒗:J


# instance fields
.field private ㅼ꽑嫄:J

.field private 弱밧:Ljava/util/LinkedList;

.field private 洹:Ljava/lang/String;

.field private 癤욱븳援:Ljava/util/LinkedList;

.field private 궗:J

.field private 꾨뱾:Z

.field private 뚮Ц:Ljava/lang/String;

.field private 뚮젮議뚮떎怨:Ljava/util/LinkedList;

.field private 먮:Ljava/util/LinkedList;

.field private 먯껜蹂대떎:Z

.field private 먯꽌:J

.field private 붿슧:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lbl;->쇰뒗:J

    sput-wide v0, Lbl;->대쫫:J

    const-wide/16 v0, -0x1

    sput-wide v0, Lbl;->몃Ъ:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lbl;->먯껜蹂대떎:Z

    iput-boolean v0, p0, Lbl;->꾨뱾:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbl;->弱밧:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbl;->먮:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbl;->뚮젮議뚮떎怨:Ljava/util/LinkedList;

    invoke-virtual {p0}, Lbl;->癤욱븳援()V

    return-void
.end method

.method public static ㅼ꽑嫄곗쓽()J
    .locals 4

    sget-wide v0, Lbl;->몃Ъ:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lbl;->몃Ъ:J

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lbl;->몃Ъ:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized ㅼ꽑嫄()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbl;->먮:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method protected ㅼ쬆()V
    .locals 1

    const-string v0, "Interstitial no fill."

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl;->꾨뱾:Z

    return-void
.end method

.method protected 寃껋씠()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbl;->洹:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized 弱밧()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbl;->뚮젮議뚮떎怨:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Lan;->ordinal()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public 弱방떙()V
    .locals 3

    const-string v0, "Landing page dismissed."

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    iget-object v0, p0, Lbl;->弱밧:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected declared-synchronized 洹()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Ad request before rendering."

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lbl;->먯꽌:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized 癤욱븳援()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl;->궗:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl;->먯꽌:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbl;->ㅼ꽑嫄:J

    iget-object v0, p0, Lbl;->弱밧:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbl;->붿슧:J

    iget-object v0, p0, Lbl;->먮:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lbl;->뚮젮議뚮떎怨:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbl;->洹:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl;->먯껜蹂대떎:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl;->꾨뱾:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized 癤욱븳援(Lan;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbl;->먮:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lbl;->붿슧:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbl;->뚮젮議뚮떎怨:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 癤욱븳援(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior ad identifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    iput-object p1, p0, Lbl;->洹:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized 궗()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbl;->먮:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lbl;->뚮젮議뚮떎怨:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 궗(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prior impression ticket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    iput-object p1, p0, Lbl;->뚮Ц:Ljava/lang/String;

    return-void
.end method

.method protected 꾨뱾()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lbl;->弱밧:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    if-eqz v1, :cond_2

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lbl;->弱밧:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected 대떎()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbl;->뚮Ц:Ljava/lang/String;

    return-object v0
.end method

.method protected 대쫫()V
    .locals 2

    const-string v0, "Ad request loaded."

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lbl;->궗:J

    return-void
.end method

.method protected 덉쓣()V
    .locals 4

    const-string v0, "Ad request network error"

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    sget-wide v0, Lbl;->대쫫:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lbl;->대쫫:J

    return-void
.end method

.method protected 뚮Ц()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-eqz v1, :cond_1

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lbl;->궗:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected 뚮벏()Z
    .locals 1

    iget-boolean v0, p0, Lbl;->먯껜蹂대떎:Z

    return v0
.end method

.method protected 뚮젮議뚮떎怨()J
    .locals 2

    sget-wide v0, Lbl;->쇰뒗:J

    return-wide v0
.end method

.method protected 롩퐢()Z
    .locals 1

    iget-boolean v0, p0, Lbl;->꾨뱾:Z

    return v0
.end method

.method protected declared-synchronized 먮()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lbl;->먯꽌:J

    iget-wide v2, p0, Lbl;->ㅼ꽑嫄:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected 먯껜蹂대떎()J
    .locals 2

    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lbl;->弱밧:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public declared-synchronized 먯꽌()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lbl;->붿슧:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected 몃Ъ()V
    .locals 4

    const-string v0, "Ad request started."

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lbl;->ㅼ꽑嫄:J

    sget-wide v0, Lbl;->쇰뒗:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lbl;->쇰뒗:J

    return-void
.end method

.method protected 붿슧()J
    .locals 4

    iget-wide v0, p0, Lbl;->궗:J

    iget-wide v2, p0, Lbl;->ㅼ꽑嫄:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected 쇰뒗()V
    .locals 3

    const-string v0, "Ad clicked."

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    iget-object v0, p0, Lbl;->癤욱븳援:Ljava/util/LinkedList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected 留먰븷()J
    .locals 2

    sget-wide v0, Lbl;->대쫫:J

    return-wide v0
.end method

.method protected 紐낆옱()V
    .locals 1

    const-string v0, "Interstitial network error."

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl;->먯껜蹂대떎:Z

    return-void
.end method
