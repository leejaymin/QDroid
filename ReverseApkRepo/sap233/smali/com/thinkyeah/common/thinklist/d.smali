.class public abstract Lcom/thinkyeah/common/thinklist/d;
.super Lcom/thinkyeah/common/thinklist/c;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/thinkyeah/common/thinklist/e;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/thinkyeah/common/thinklist/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/d;->a:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {p0, p2}, Lcom/thinkyeah/common/thinklist/d;->setId(I)V

    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/d;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/thinkyeah/common/thinklist/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/d;->a:Lcom/thinkyeah/common/thinklist/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/d;->a:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/d;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/d;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/thinkyeah/common/thinklist/e;->a(II)V

    :cond_0
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/d;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/common/thinklist/d;->a:Lcom/thinkyeah/common/thinklist/e;

    return-void
.end method
