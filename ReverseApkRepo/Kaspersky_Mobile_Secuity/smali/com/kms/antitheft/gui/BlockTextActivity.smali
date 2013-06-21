.class public Lcom/kms/antitheft/gui/BlockTextActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:LfZ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->d:LfZ;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->d:LfZ;

    invoke-virtual {v0}, LfZ;->a()V

    .line 44
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/BlockTextActivity;->finish()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/BlockTextActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 24
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f03000a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/BlockTextActivity;->a(II)V

    .line 26
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/BlockTextActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 27
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/BlockTextActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    iput-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->d:LfZ;

    .line 31
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/BlockTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->a:Landroid/widget/Button;

    .line 32
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/BlockTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->b:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/BlockTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->c:Landroid/widget/TextView;

    .line 36
    iget-object v1, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kms/antitheft/gui/BlockTextActivity;->d:LfZ;

    invoke-virtual {v0, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method
