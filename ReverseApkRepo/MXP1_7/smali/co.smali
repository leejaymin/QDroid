.class public Lco;
.super Li;


# instance fields
.field private ㅼ꽑嫄:I

.field private 弱밧:I

.field private 洹:I

.field private 궗:Ljava/lang/String;

.field private 꾨뱾:I

.field private 대쫫:I

.field private 뚮Ц:Lcp;

.field private 먮:Ljava/lang/String;

.field private 먯껜蹂대떎:I

.field private 먯꽌:I

.field private 몃Ъ:Ljava/lang/String;

.field private 붿슧:I

.field private 쇰뒗:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li;-><init>()V

    return-void
.end method

.method private 癤욱븳援(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public 癤욱븳援(Landroid/content/Context;)Ljava/util/Map;
    .locals 5

    const/16 v4, 0xff

    const-class v0, Lch;

    invoke-virtual {p0, v0}, Lco;->癤욱븳援(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch;

    if-nez v0, :cond_0

    new-instance v0, Lch;

    invoke-direct {v0}, Lch;-><init>()V

    invoke-virtual {p0, v0}, Lco;->癤욱븳援(Lcg;)Li;

    :cond_0
    iget-object v1, p0, Lco;->궗:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "q"

    iget-object v3, p0, Lco;->궗:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p0, Lco;->먯꽌:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bgcolor"

    iget v3, p0, Lco;->먯꽌:I

    invoke-direct {p0, v3}, Lco;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, p0, Lco;->ㅼ꽑嫄:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    iget v1, p0, Lco;->弱밧:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientfrom"

    iget v3, p0, Lco;->ㅼ꽑嫄:I

    invoke-direct {p0, v3}, Lco;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientto"

    iget v3, p0, Lco;->弱밧:I

    invoke-direct {p0, v3}, Lco;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v1, p0, Lco;->쇰뒗:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "hcolor"

    iget v3, p0, Lco;->쇰뒗:I

    invoke-direct {p0, v3}, Lco;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v1, p0, Lco;->대쫫:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "dcolor"

    iget v3, p0, Lco;->대쫫:I

    invoke-direct {p0, v3}, Lco;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v1, p0, Lco;->洹:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "acolor"

    iget v3, p0, Lco;->洹:I

    invoke-direct {p0, v3}, Lco;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lco;->몃Ъ:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "font"

    iget-object v3, p0, Lco;->몃Ъ:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "headersize"

    iget v3, p0, Lco;->먯껜蹂대떎:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lco;->꾨뱾:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bcolor"

    iget v3, p0, Lco;->꾨뱾:I

    invoke-direct {p0, v3}, Lco;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lco;->뚮Ц:Lcp;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "btype"

    iget-object v3, p0, Lco;->뚮Ц:Lcp;

    invoke-virtual {v3}, Lcp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bthick"

    iget v3, p0, Lco;->붿슧:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lco;->먮:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lch;->궗()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    iget-object v2, p0, Lco;->먮:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-super {p0, p1}, Li;->癤욱븳援(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
