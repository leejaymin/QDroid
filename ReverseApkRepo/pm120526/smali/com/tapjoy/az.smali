.class final Lcom/tapjoy/az;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/tapjoy/aw;


# direct methods
.method private constructor <init>(Lcom/tapjoy/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/az;->a:Lcom/tapjoy/aw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/aw;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/az;-><init>(Lcom/tapjoy/aw;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-wide/16 v7, 0x3e8

    const-wide/16 v5, 0x3c

    iget-object v0, p0, Lcom/tapjoy/az;->a:Lcom/tapjoy/aw;

    invoke-static {v0}, Lcom/tapjoy/aw;->a(Lcom/tapjoy/aw;)J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/tapjoy/aw;->a(Lcom/tapjoy/aw;J)V

    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "elapsed_time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/az;->a:Lcom/tapjoy/aw;

    invoke-static {v2}, Lcom/tapjoy/aw;->a(Lcom/tapjoy/aw;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/az;->a:Lcom/tapjoy/aw;

    invoke-static {v2}, Lcom/tapjoy/aw;->a(Lcom/tapjoy/aw;)J

    move-result-wide v2

    div-long/2addr v2, v7

    div-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/az;->a:Lcom/tapjoy/aw;

    invoke-static {v2}, Lcom/tapjoy/aw;->a(Lcom/tapjoy/aw;)J

    move-result-wide v2

    div-long/2addr v2, v7

    rem-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/aw;->j()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tapjoy_elapsed_time"

    iget-object v2, p0, Lcom/tapjoy/az;->a:Lcom/tapjoy/aw;

    invoke-static {v2}, Lcom/tapjoy/aw;->a(Lcom/tapjoy/aw;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/tapjoy/az;->a:Lcom/tapjoy/aw;

    invoke-static {v0}, Lcom/tapjoy/aw;->a(Lcom/tapjoy/aw;)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const-string v0, "TapjoyConnect"

    const-string v1, "timer done..."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/aw;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/aw;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "TapjoyConnect"

    const-string v1, "Calling PPA actionComplete..."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/az;->a:Lcom/tapjoy/aw;

    invoke-static {}, Lcom/tapjoy/aw;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/aw;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/az;->cancel()Z

    :cond_1
    return-void
.end method
