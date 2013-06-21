.class public final Lcom/thinkyeah/smartlock/bu;
.super Landroid/support/v4/app/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/bu;
    .locals 3

    new-instance v0, Lcom/thinkyeah/smartlock/bu;

    invoke-direct {v0}, Lcom/thinkyeah/smartlock/bu;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "emailAddress"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/bu;->e(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const v7, 0x7f0b001e

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/v4/app/d;->f:Landroid/app/Dialog;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b001c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;

    const-string v2, "emailAddress"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b001d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/thinkyeah/smartlock/bv;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/bv;-><init>(Lcom/thinkyeah/smartlock/bu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0020

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/thinkyeah/smartlock/bw;

    invoke-direct {v2, p0, v3}, Lcom/thinkyeah/smartlock/bw;-><init>(Lcom/thinkyeah/smartlock/bu;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0021

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/thinkyeah/smartlock/bx;

    invoke-direct {v4, p0}, Lcom/thinkyeah/smartlock/bx;-><init>(Lcom/thinkyeah/smartlock/bu;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    check-cast v2, Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v2}, Lcom/thinkyeah/smartlock/bn;->k()I

    move-result v2

    if-gtz v2, :cond_0

    const v2, 0x7f09005d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object v3

    :cond_0
    const v2, 0x7f09005e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b001f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->P:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f0b001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f09005e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f0b001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const v0, 0x7f0b0020

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
