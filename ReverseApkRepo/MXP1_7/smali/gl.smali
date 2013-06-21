.class Lgl;
.super Ljava/lang/Object;

# interfaces
.implements Lfz;
.implements Lge;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lgi;


# direct methods
.method private constructor <init>(Lgi;)V
    .locals 0

    iput-object p1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgi;Lgl;)V
    .locals 0

    invoke-direct {p0, p1}, Lgl;-><init>(Lgi;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->궗(Lgi;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->먯꽌(Lgi;)B

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->먯꽌(Lgi;)B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    invoke-interface {v0}, Lgd;->ㅼ꽑嫄()I

    move-result v0

    iget-object v1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v1}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mxtech/media/FFPlayer;->ㅼ꽑嫄()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, -0x1388

    if-gt v1, v0, :cond_2

    if-gtz v0, :cond_2

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2nd is not started since 1st position is not advanced. 1st="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v2}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v2

    invoke-interface {v2}, Lgd;->ㅼ꽑嫄()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 2nd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v2}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mxtech/media/FFPlayer;->ㅼ꽑嫄()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->쇰뒗(Lgi;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->몃Ъ()V

    :goto_1
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0, v2}, Lgi;->癤욱븳援(Lgi;B)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    invoke-interface {v0}, Lgd;->대쫫()V

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    goto :goto_1
.end method

.method public ㅼ꽑嫄(Lgd;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgl;->癤욱븳援(Lgd;)V

    return-void
.end method

.method public 弱밧(Lgd;)V
    .locals 2

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    iget-object v1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-interface {v0, v1}, Lgk;->弱밧(Lgd;)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援(Lcom/mxtech/media/FFPlayer;Lcom/mxtech/media/FFPlayer$SubTrack;Z)V
    .locals 2

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgi;->癤욱븳援(Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgi;->癤욱븳援(Z)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg;

    check-cast v0, Lcom/mxtech/media/FFPlayer$SubTrack;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer$SubTrack;->몃Ъ()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public 癤욱븳援(Lgd;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, -0x1

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "2nd seek completed. pos="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lgd;->ㅼ꽑嫄()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->먯꽌(Lgi;)B

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->먯꽌(Lgi;)B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->쇰뒗(Lgi;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    :goto_0
    sget-object v4, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Starting 1st player: 1st="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v5}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v5

    invoke-interface {v5}, Lgd;->ㅼ꽑嫄()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " 2nd="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v2}, Lgi;->궗(Lgi;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v2}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mxtech/media/FFPlayer;->ㅼ꽑嫄()I

    move-result v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v2}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v2

    invoke-interface {v2}, Lgd;->몃Ъ()V

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0, v3}, Lgi;->癤욱븳援(Lgi;B)V

    :cond_0
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->대쫫(Lgi;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0, v1}, Lgi;->癤욱븳援(Lgi;Z)V

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    iget-object v1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-interface {v0, v1}, Lgk;->癤욱븳援(Lgd;)V

    :cond_1
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lgi;->癤욱븳援(Lgi;J)V

    return-void

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->먯꽌(Lgi;)B

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->대쫫()V

    :cond_4
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    invoke-interface {v0}, Lgd;->대쫫()V

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public 癤욱븳援(Lgd;I)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Lgd;II)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Lgd;Lhg;)V
    .locals 2

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    iget-object v1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-interface {v0, v1, p2}, Lgk;->癤욱븳援(Lgd;Lhg;)V

    :cond_0
    return-void
.end method

.method public 궗(Lgd;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    invoke-interface {v0}, Lgd;->弱밧()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lgr;->癤욱븳援:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    sget v0, Lgr;->癤욱븳援:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    sget v0, Lgr;->癤욱븳援:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_2

    check-cast p1, Lcom/mxtech/media/FFPlayer;

    invoke-virtual {p1}, Lcom/mxtech/media/FFPlayer;->pixelFormat()I

    move-result v0

    const/16 v1, 0x45

    if-gt v1, v0, :cond_2

    const/16 v1, 0x50

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    iget-object v1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-interface {v0, v1, v4, v3}, Lgk;->먯꽌(Lgd;II)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    invoke-interface {v0}, Lgd;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lgi;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    iget-object v1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-interface {v0, v1, v4, v3}, Lgk;->먯꽌(Lgd;II)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    iget-object v1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-interface {v0, v1}, Lgk;->궗(Lgd;)V

    goto :goto_0
.end method

.method public 궗(Lgd;I)V
    .locals 2

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    iget-object v1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-interface {v0, v1, p2}, Lgk;->궗(Lgd;I)V

    :cond_0
    return-void
.end method

.method public 궗(Lgd;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 먯꽌(Lgd;)V
    .locals 0

    return-void
.end method

.method public 먯꽌(Lgd;II)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lgi;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2nd(audio) error: what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    check-cast p1, Lcom/mxtech/media/FFPlayer;

    invoke-interface {v0, p1, p2, p3}, Lgk;->癤욱븳援(Lcom/mxtech/media/FFPlayer;II)V

    :cond_0
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->弱밧(Lgi;)Lcom/mxtech/media/FFPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->洹()V

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgi;->癤욱븳援(Lgi;Lcom/mxtech/media/FFPlayer;)V

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0, v4}, Lgi;->癤욱븳援(Lgi;I)V

    :cond_1
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    invoke-interface {v0}, Lgd;->弱밧()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->먯꽌(Lgi;)B

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    invoke-interface {v0}, Lgd;->몃Ъ()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lgi;->癤욱븳援(Lgi;B)V

    return v3

    :cond_3
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->먯꽌(Lgi;)B

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    invoke-interface {v0}, Lgd;->대쫫()V

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->ㅼ꽑嫄(Lgi;)Lgd;

    move-result-object v0

    invoke-interface {v0}, Lgd;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lgi;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgl;->癤욱븳援:Lgi;

    invoke-static {v0}, Lgi;->癤욱븳援(Lgi;)Lgk;

    move-result-object v0

    iget-object v1, p0, Lgl;->癤욱븳援:Lgi;

    invoke-interface {v0, v1, v3, v4}, Lgk;->먯꽌(Lgd;II)Z

    goto :goto_0
.end method
