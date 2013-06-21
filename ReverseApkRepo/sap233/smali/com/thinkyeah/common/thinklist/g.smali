.class public final Lcom/thinkyeah/common/thinklist/g;
.super Lcom/thinkyeah/common/thinklist/d;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/thinkyeah/common/thinklist/d;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/thinkyeah/common/thinklist/g;->d:Ljava/lang/String;

    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/g;->b:Landroid/widget/TextView;

    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/g;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/thinkyeah/common/thinklist/d;->a()V

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/g;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/common/thinklist/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020050

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/g;->setBackgroundResource(I)V

    return-void
.end method

.method protected final getLayout()I
    .locals 1

    const v0, 0x7f030027

    return v0
.end method

.method public final setChecked(Z)V
    .locals 2

    iget-object v1, p0, Lcom/thinkyeah/common/thinklist/g;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final setTitleText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/thinkyeah/common/thinklist/g;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/g;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/common/thinklist/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
