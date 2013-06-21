.class public abstract Lcom/thinkyeah/common/thinklist/c;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/view/View;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/c;->setOrientation(I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/c;->getLayout()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract getLayout()I
.end method

.method getPosition()I
    .locals 1

    iget v0, p0, Lcom/thinkyeah/common/thinklist/c;->b:I

    return v0
.end method

.method public setDividerVisible(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/c;->a:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/c;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/c;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/thinkyeah/common/thinklist/c;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/c;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/c;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/c;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/c;->requestLayout()V

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/c;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/c;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/c;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/thinkyeah/common/thinklist/c;->b:I

    return-void
.end method
