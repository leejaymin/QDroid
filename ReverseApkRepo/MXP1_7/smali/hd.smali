.class public abstract Lhd;
.super Ljava/lang/Object;

# interfaces
.implements Lhg;


# instance fields
.field protected final 癤욱븳援:Landroid/net/Uri;

.field protected final 궗:Ljava/lang/String;

.field protected final 먯꽌:Lcom/mxtech/collection/SeekableRangeMap;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mxtech/collection/SeekableRangeMap;

    const/4 v1, -0x1

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/mxtech/collection/SeekableRangeMap;-><init>(II)V

    iput-object v0, p0, Lhd;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    iput-object p1, p0, Lhd;->癤욱븳援:Landroid/net/Uri;

    invoke-static {p1}, Lhd;->癤욱븳援(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhd;->궗:Ljava/lang/String;

    return-void
.end method

.method public static final 癤욱븳援(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mxtech/FileUtils;->궗(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public next()I
    .locals 1

    iget-object v0, p0, Lhd;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableRangeMap;->next()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public previous()I
    .locals 1

    iget-object v0, p0, Lhd;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableRangeMap;->previous()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
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

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract 癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;
.end method

.method public 癤욱븳援(Z)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(I)Z
    .locals 1

    iget-object v0, p0, Lhd;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {v0, p1}, Lcom/mxtech/collection/SeekableRangeMap;->seek(I)Z

    move-result v0

    return v0
.end method

.method public 궗()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 궗(I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lhd;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {v0}, Lcom/mxtech/collection/SeekableRangeMap;->begin()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lhd;->먯꽌:Lcom/mxtech/collection/SeekableRangeMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mxtech/collection/SeekableRangeMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lhd;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lhd;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    array-length v1, v0

    if-lt v2, v1, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-static {v3}, Leo;->癤욱븳援(Landroid/text/Spannable;)V

    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lhd;->癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhd;->궗:Ljava/lang/String;

    return-object v0
.end method

.method public 먯꽌()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public 쇰뒗()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lhd;->癤욱븳援:Landroid/net/Uri;

    return-object v0
.end method
