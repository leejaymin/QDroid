.class public final Lhu;
.super Ljava/lang/Object;

# interfaces
.implements Lhg;


# instance fields
.field private final 癤욱븳援:Landroid/net/Uri;

.field private final 궗:Ljava/lang/String;

.field private final 먯꽌:Lcom/mxtech/collection/SeekableMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mxtech/collection/SeekableMap;

    const/4 v1, -0x1

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v3}, Lcom/mxtech/collection/SeekableMap;-><init>(II)V

    iput-object v0, p0, Lhu;->먯꽌:Lcom/mxtech/collection/SeekableMap;

    new-instance v3, Lhv;

    invoke-direct {v3, v2}, Lhv;-><init>(Lhv;)V

    const/4 v0, 0x0

    new-instance v4, Len;

    invoke-direct {v4, p1}, Len;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Len;->癤욱븳援()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lhu;->먯꽌:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/zip/DataFormatException;

    invoke-direct {v0}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {v3, v1}, Lhv;->癤욱븳援(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v5, p0, Lhu;->먯꽌:Lcom/mxtech/collection/SeekableMap;

    iget v1, v3, Lhv;->癤욱븳援:I

    mul-int/lit16 v6, v1, 0x3e8

    iget-object v1, v3, Lhv;->궗:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v3, Lhv;->궗:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v6, v1}, Lcom/mxtech/collection/SeekableMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lhu;->먯꽌:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v1}, Lcom/mxtech/collection/SeekableMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/util/zip/DataFormatException;

    invoke-direct {v0}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v0

    :cond_4
    iput-object p2, p0, Lhu;->癤욱븳援:Landroid/net/Uri;

    invoke-static {p2}, Lhd;->癤욱븳援(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhu;->궗:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public next()I
    .locals 1

    iget-object v0, p0, Lhu;->먯꽌:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableMap;->next()I

    move-result v0

    return v0
.end method

.method public previous()I
    .locals 1

    iget-object v0, p0, Lhu;->먯꽌:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableMap;->previous()I

    move-result v0

    return v0
.end method

.method public ㅼ꽑嫄()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 弱밧()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 洹()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 癤욱븳援()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 癤욱븳援(Z)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(I)Z
    .locals 1

    iget-object v0, p0, Lhu;->먯꽌:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0, p1}, Lcom/mxtech/collection/SeekableMap;->seek(I)Z

    move-result v0

    return v0
.end method

.method public 궗()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 궗(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhu;->먯꽌:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableMap;->begin()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lhu;->먯꽌:Lcom/mxtech/collection/SeekableMap;

    invoke-virtual {v1, v0}, Lcom/mxtech/collection/SeekableMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lhk;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-static {v0}, Lcom/mxtech/subtitle/PolishStylizer;->癤욱븳援(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhu;->궗:Ljava/lang/String;

    return-object v0
.end method

.method public 먯꽌()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public 쇰뒗()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lhu;->癤욱븳援:Landroid/net/Uri;

    return-object v0
.end method
