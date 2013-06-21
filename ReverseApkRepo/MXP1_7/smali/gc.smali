.class Lgc;
.super Ljava/lang/Object;

# interfaces
.implements Lgh;


# instance fields
.field final synthetic 癤욱븳援:Lgb;

.field private final 궗:I


# direct methods
.method constructor <init>(Lgb;I)V
    .locals 0

    iput-object p1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgc;->궗:I

    return-void
.end method

.method private 癤욱븳援(I)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lgo;->癤욱븳援(IIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ㅼ꽑嫄()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ㅼ꽑嫄곗쓽()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-interface {v0, v1, v2}, Lgo;->洹(II)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public ㅼ쬆()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-interface {v0, v1, v2}, Lgo;->弱밧(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 寃껋씠()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-interface {v0, v1, v2}, Lgo;->癤욱븳援(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 弱밧()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 弱방떙()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-interface {v0, v1, v2}, Lgo;->쇰뒗(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 洹()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援()V
    .locals 0

    return-void
.end method

.method public 궗()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 꾨뱾()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 대떎()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-interface {v0, v1, v2}, Lgo;->대쫫(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 덉쓣()I
    .locals 1

    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-virtual {v0}, Lgb;->덉쓣()I

    move-result v0

    return v0
.end method

.method public 뚮Ц()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 뚮벏()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-interface {v0, v1, v2}, Lgo;->궗(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 뚮젮議뚮떎怨()[Ljava/lang/String;
    .locals 2

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "und"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public 롩퐢()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-interface {v0, v1, v2}, Lgo;->ㅼ꽑嫄(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 먮()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 먯껜蹂대떎()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 먯꽌()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 몃Ъ()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 붿슧()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 쇰뒗()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lgc;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 앸ぐ()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-interface {v0, v1, v2}, Lgo;->몃Ъ(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 留먰븷()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgc;->뚮젮議뚮떎怨()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgb;->癤욱븳援([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 紐낆옱()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v0}, Lgb;->癤욱븳援(Lgb;)Lgo;

    move-result-object v0

    iget-object v1, p0, Lgc;->癤욱븳援:Lgb;

    invoke-static {v1}, Lgb;->궗(Lgb;)I

    move-result v1

    iget v2, p0, Lgc;->궗:I

    invoke-interface {v0, v1, v2}, Lgo;->먯꽌(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
