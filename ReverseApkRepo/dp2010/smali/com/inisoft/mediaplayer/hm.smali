.class public final Lcom/inisoft/mediaplayer/hm;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/text/style/RelativeSizeSpan;

.field private b:Landroid/widget/RelativeLayout$LayoutParams;

.field private c:Landroid/widget/TableLayout;

.field private d:Landroid/widget/TableRow;

.field private e:Landroid/widget/TableRow;

.field private f:Lcom/inisoft/mediaplayer/gs;

.field private g:Z

.field private h:Landroid/graphics/Typeface;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hm;->h:Landroid/graphics/Typeface;

    iput v1, p0, Lcom/inisoft/mediaplayer/hm;->i:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/inisoft/mediaplayer/hm;->j:I

    iput v2, p0, Lcom/inisoft/mediaplayer/hm;->k:I

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/hm;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/hm;->m:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/inisoft/mediaplayer/hm;->n:I

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/hm;->g:Z

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f4ccccd

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hm;->a:Landroid/text/style/RelativeSizeSpan;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hm;->b:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/widget/TableLayout;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/hm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hm;->c:Landroid/widget/TableLayout;

    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/hm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hm;->d:Landroid/widget/TableRow;

    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/hm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hm;->e:Landroid/widget/TableRow;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/hm;->c()Lcom/inisoft/mediaplayer/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/hm;->c()Lcom/inisoft/mediaplayer/gs;

    move-result-object v0

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/gs;->a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hm;->e:Landroid/widget/TableRow;

    invoke-virtual {v1, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c()Lcom/inisoft/mediaplayer/gs;
    .locals 2

    new-instance v0, Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/hm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inisoft/mediaplayer/gs;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hm;->h:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->a(Landroid/graphics/Typeface;)V

    iget v1, p0, Lcom/inisoft/mediaplayer/hm;->i:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->c(I)V

    iget v1, p0, Lcom/inisoft/mediaplayer/hm;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->a(F)V

    iget v1, p0, Lcom/inisoft/mediaplayer/hm;->k:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->b(I)V

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/hm;->l:Z

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->a(Z)V

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/hm;->m:Z

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->b(Z)V

    iget v1, p0, Lcom/inisoft/mediaplayer/hm;->n:I

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->a(I)V

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/hm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hm;->d:Landroid/widget/TableRow;

    invoke-virtual {v1, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/hm;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gs;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gs;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/inisoft/mediaplayer/hm;->i:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->c(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hm;->h:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->a(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/hm;->removeAllViews()V

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/hm;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/hm;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->c:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->d:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->removeAllViews()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->e:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->removeAllViews()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v0, "<ruby>"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/hm;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const-string v0, "<ruby>"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/hm;->b(Ljava/lang/String;)V

    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/inisoft/mediaplayer/hm;->c(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    :goto_1
    const-string v3, "<rt>"

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x4

    const-string v1, "</rt>"

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v1, 0x5

    move v8, v1

    move-object v1, v0

    move v0, v3

    move v3, v8

    :goto_2
    if-gez v3, :cond_7

    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/hm;->b(Ljava/lang/String;)V

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/hm;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->c:Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hm;->d:Landroid/widget/TableRow;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->c:Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hm;->e:Landroid/widget/TableRow;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->c:Landroid/widget/TableLayout;

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/hm;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v8, v1

    move-object v1, v0

    move v0, v3

    move v3, v8

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    const-string v6, "</ruby>"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "</RUBY>"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_2

    :cond_5
    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_6

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/hm;->b(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/hm;->c(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_8
    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/hm;->g:Z

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x2

    iput v1, p0, Lcom/inisoft/mediaplayer/hm;->n:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->a(I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    iput p1, p0, Lcom/inisoft/mediaplayer/hm;->j:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gs;->a(F)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/hm;->l:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->a(Z)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    iput p1, p0, Lcom/inisoft/mediaplayer/hm;->k:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->b(I)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/hm;->m:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->b(Z)V

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 1

    iput p1, p0, Lcom/inisoft/mediaplayer/hm;->i:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->d(I)V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->c(Z)V

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->f(I)V

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hm;->f:Lcom/inisoft/mediaplayer/gs;

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gs;->e(I)V

    :cond_0
    return-void
.end method
