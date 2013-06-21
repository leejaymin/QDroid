.class public final Lgb;
.super Ljava/lang/Object;

# interfaces
.implements Lgf;
.implements Lgg;


# instance fields
.field private final 癤욱븳援:Lgo;

.field private 궗:I


# direct methods
.method public constructor <init>(Lgo;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgb;->癤욱븳援:Lgo;

    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    invoke-static {p2}, Lgb;->癤욱븳援(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgo;->癤욱븳援(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lgb;->궗:I

    iget v0, p0, Lgb;->궗:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic 癤욱븳援(Lgb;)Lgo;
    .locals 1

    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    return-object v0
.end method

.method public static 癤욱븳援(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static 癤욱븳援([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v3, p0, v0

    invoke-static {v3}, Lek;->癤욱븳援(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic 궗(Lgb;)I
    .locals 1

    iget v0, p0, Lgb;->궗:I

    return v0
.end method

.method private 궗(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lgo;->癤욱븳援(IILjava/lang/String;)Ljava/lang/String;
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
.method public embedSubtitle()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-interface {v0, v1}, Lgo;->대쫫(I)Z
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

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lgb;->癤욱븳援()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public frameTime()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-interface {v0, v1}, Lgo;->먯꽌(I)I
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

.method public getStreamCount()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-interface {v0, v1}, Lgo;->洹(I)I
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

.method public getStreamTypes()[I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-interface {v0, v1}, Lgo;->몃Ъ(I)[I
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

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public ㅼ꽑嫄()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 寃껋씠()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-interface {v0, v1}, Lgo;->쇰뒗(I)I
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

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 洹()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援(IIIZ)Landroid/graphics/Bitmap;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lgo;->癤욱븳援(IIIIZ)Landroid/graphics/Bitmap;
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

.method public 癤욱븳援(I)Lgh;
    .locals 1

    new-instance v0, Lgc;

    invoke-direct {v0, p0, p1}, Lgc;-><init>(Lgb;I)V

    return-object v0
.end method

.method public 癤욱븳援()V
    .locals 3

    iget v0, p0, Lgb;->궗:I

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-interface {v0, v1}, Lgo;->癤욱븳援(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lgb;->궗:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public 궗()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 꾨뱾()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 덉쓣()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-interface {v0, v1}, Lgo;->ㅼ꽑嫄(I)I
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

.method public 뚮Ц()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 뚮벏()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-interface {v0, v1}, Lgo;->弱밧(I)I
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

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

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

.method public 먮()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 먯껜蹂대떎()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 먯꽌()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 몃Ъ()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 붿슧()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 쇰뒗()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lgb;->궗(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 留먰븷()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgb;->뚮젮議뚮떎怨()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgb;->癤욱븳援([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 紐낆옱()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lgb;->癤욱븳援:Lgo;

    iget v1, p0, Lgb;->궗:I

    invoke-interface {v0, v1}, Lgo;->궗(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
