.class public final Lhz;
.super Ljava/lang/Object;


# static fields
.field private static final 癤욱븳援:Lia;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lia;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lia;-><init>(Lia;)V

    sput-object v0, Lhz;->癤욱븳援:Lia;

    return-void
.end method

.method private static 癤욱븳援(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Lic;

    invoke-interface {v0, v3, v10, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    if-ltz v0, :cond_0

    instance-of v0, p0, Landroid/text/Editable;

    if-eqz v0, :cond_3

    check-cast p0, Landroid/text/Editable;

    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Lib;

    invoke-interface {p0, v3, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lib;

    array-length v4, v0

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    invoke-interface {p0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const-class v1, Lic;

    invoke-interface {p0, v6, v6, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lic;

    array-length v8, v1

    if-eq v8, v10, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_4
    aget-object v8, v1, v3

    invoke-interface {p0, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    aget-object v9, v1, v3

    invoke-interface {p0, v9}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    if-lt v9, v7, :cond_2

    invoke-interface {p0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    aget-object v1, v1, v3

    invoke-interface {p0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    new-instance v1, Liq;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0, v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-direct {v1, v5}, Liq;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    sub-int v5, v7, v6

    sub-int v5, v9, v5

    const/16 v6, 0x21

    invoke-interface {p0, v1, v8, v5, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method public static 癤욱븳援(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lhz;->癤욱븳援:Lia;

    iput p1, v0, Lia;->癤욱븳援:I

    const/4 v0, 0x0

    sget-object v1, Lhz;->癤욱븳援:Lia;

    invoke-static {p0, v0, v1}, Lhx;->癤욱븳援(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Lhz;->癤욱븳援(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
