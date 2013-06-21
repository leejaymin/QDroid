.class public final Lcom/mxtech/subtitle/PolishStylizer;
.super Ljava/lang/Object;


# direct methods
.method public static 癤욱븳援(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mxtech/subtitle/PolishStylizer;->癤욱븳援(Landroid/text/SpannableStringBuilder;I)V

    :goto_0
    const/16 v1, 0xa

    invoke-static {p0, v1, v0}, Leo;->癤욱븳援(Ljava/lang/CharSequence;II)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/mxtech/subtitle/PolishStylizer;->癤욱븳援(Landroid/text/SpannableStringBuilder;I)V

    goto :goto_0
.end method

.method private static 癤욱븳援(Landroid/text/SpannableStringBuilder;I)V
    .locals 6

    const/16 v5, 0x21

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const-class v0, Lcom/mxtech/subtitle/PolishStylizer$ItalicSpan;

    invoke-virtual {p0, p1, p1, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mxtech/subtitle/PolishStylizer$ItalicSpan;

    array-length v0, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/mxtech/subtitle/PolishStylizer$ItalicSpan;

    invoke-direct {v0}, Lcom/mxtech/subtitle/PolishStylizer$ItalicSpan;-><init>()V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void

    :cond_1
    const-class v0, Lcom/mxtech/subtitle/PolishStylizer$ItalicSpan;

    invoke-virtual {p0, p1, p1, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mxtech/subtitle/PolishStylizer$ItalicSpan;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v3, v4, p1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
