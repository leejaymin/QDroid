.class Lqg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field 癤욱븳援:Ljava/lang/CharSequence;

.field final 궗:Ljava/lang/String;

.field final 먯꽌:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lqg;->궗:Ljava/lang/String;

    iput p3, p0, Lqg;->먯꽌:I

    if-ne p3, v1, :cond_2

    sget v0, Lnt;->font_open:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    :cond_0
    :goto_0
    if-eq p3, v1, :cond_1

    invoke-static {p2, v4}, Liu;->癤욱븳援(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lit;

    invoke-direct {v2, v0}, Lit;-><init>(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iput-object v1, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    if-nez p2, :cond_3

    sget v0, Lnt;->font_default:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    const-string v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lnt;->font_mono:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    const-string v0, "sans-serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lnt;->font_sanserif:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_5
    const-string v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lnt;->font_serif:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/mxtech/FileUtils;->궗(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lqg;

    invoke-virtual {p0, p1}, Lqg;->癤욱븳援(Lqg;)I

    move-result v0

    return v0
.end method

.method public 癤욱븳援(Lqg;)I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lqg;->먯꽌:I

    if-ne v1, v0, :cond_2

    iget v1, p1, Lqg;->먯꽌:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget v1, p1, Lqg;->먯꽌:I

    if-eq v1, v0, :cond_0

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p0, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lqg;->癤욱븳援:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method 癤욱븳援()Z
    .locals 2

    iget v0, p0, Lqg;->먯꽌:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lqg;->먯꽌:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
