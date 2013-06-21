.class final Lcom/rubycell/adcenter/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f060001

    const/high16 v2, 0x7f06

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->a(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->b(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Lcom/rubycell/adcenter/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v1}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->a(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a/b;->b(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->c(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Inactive"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->c(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-virtual {v1}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-virtual {v1}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->b(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Lcom/rubycell/adcenter/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v1}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a/b;->b(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Inactive"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-virtual {v1}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->c(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-static {v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->c(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/adcenter/b;->a:Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-virtual {v1}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
