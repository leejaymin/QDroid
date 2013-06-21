.class public Lga;
.super Ljava/lang/Object;

# interfaces
.implements Lgh;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/media/FFPlayer;

.field private final 궗:I


# direct methods
.method public constructor <init>(Lcom/mxtech/media/FFPlayer;I)V
    .locals 0

    iput-object p1, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lga;->궗:I

    return-void
.end method

.method private 癤욱븳援(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lcom/mxtech/media/FFPlayer;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ㅼ꽑嫄()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ㅼ꽑嫄곗쓽()J
    .locals 2

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->洹(Lcom/mxtech/media/FFPlayer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public ㅼ쬆()I
    .locals 2

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->弱밧(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    return v0
.end method

.method public 寃껋씠()I
    .locals 2

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    return v0
.end method

.method public 弱밧()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 弱방떙()I
    .locals 2

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->쇰뒗(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    return v0
.end method

.method public 洹()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 꾨뱾()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 대떎()I
    .locals 2

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->대쫫(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    return v0
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 덉쓣()I
    .locals 1

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    invoke-virtual {v0}, Lcom/mxtech/media/FFPlayer;->duration()I

    move-result v0

    return v0
.end method

.method public 뚮Ц()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 뚮벏()I
    .locals 2

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->궗(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    return v0
.end method

.method public 뚮젮議뚮떎怨()[Ljava/lang/String;
    .locals 2

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

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
    .locals 2

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->ㅼ꽑嫄(Lcom/mxtech/media/FFPlayer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 먮()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 먯껜蹂대떎()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 먯꽌()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 몃Ъ()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 붿슧()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 쇰뒗()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lga;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 앸ぐ()I
    .locals 2

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->몃Ъ(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    return v0
.end method

.method public 留먰븷()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lga;->뚮젮議뚮떎怨()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgb;->癤욱븳援([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 紐낆옱()I
    .locals 2

    iget-object v0, p0, Lga;->癤욱븳援:Lcom/mxtech/media/FFPlayer;

    iget v1, p0, Lga;->궗:I

    invoke-static {v0, v1}, Lcom/mxtech/media/FFPlayer;->먯꽌(Lcom/mxtech/media/FFPlayer;I)I

    move-result v0

    return v0
.end method
