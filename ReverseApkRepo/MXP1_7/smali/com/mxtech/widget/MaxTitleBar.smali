.class public Lcom/mxtech/widget/MaxTitleBar;
.super Landroid/widget/LinearLayout;


# instance fields
.field public ㅼ꽑嫄:Landroid/view/View;

.field public 癤욱븳援:Landroid/view/View;

.field public 궗:Landroid/widget/TextView;

.field public 먯꽌:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lgz;->subMark:I

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/MaxTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/widget/MaxTitleBar;->癤욱븳援:Landroid/view/View;

    sget v0, Lgz;->text:I

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/MaxTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mxtech/widget/MaxTitleBar;->궗:Landroid/widget/TextView;

    sget v0, Lgz;->spin:I

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/MaxTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/widget/MaxTitleBar;->먯꽌:Landroid/view/View;

    sget v0, Lgz;->refresh:I

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/MaxTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/widget/MaxTitleBar;->ㅼ꽑嫄:Landroid/view/View;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/widget/MaxTitleBar;->궗:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mxtech/widget/MaxTitleBar;->癤욱븳援:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public 癤욱븳援()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/widget/MaxTitleBar;->ㅼ꽑嫄:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/widget/MaxTitleBar;->먯꽌:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public 궗()V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/widget/MaxTitleBar;->먯꽌:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/widget/MaxTitleBar;->ㅼ꽑嫄:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
