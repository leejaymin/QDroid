.class public Lfy;
.super Ljava/lang/Object;

# interfaces
.implements Lgf;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/media/FFPlayer;


# direct methods
.method public constructor <init>(Lcom/mxtech/media/FFPlayer;)V
    .locals 0

    iput-object p1, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ㅼ꽑嫄()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 寃껋씠()I
    .locals 1

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->width()I

    move-result v0

    return v0
.end method

.method public 弱밧()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 洹()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援()V
    .locals 0

    return-void
.end method

.method public 궗()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 꾨뱾()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 덉쓣()I
    .locals 1

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->duration()I

    move-result v0

    return v0
.end method

.method public 뚮Ц()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 뚮벏()I
    .locals 1

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->height()I

    move-result v0

    return v0
.end method

.method public 뚮젮議뚮떎怨()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

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
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 먯껜蹂대떎()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 먯꽌()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 몃Ъ()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 붿슧()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 쇰뒗()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfy;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->留먰븷(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 留먰븷()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lfy;->뚮젮議뚮떎怨()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgb;->癤욱븳援([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
