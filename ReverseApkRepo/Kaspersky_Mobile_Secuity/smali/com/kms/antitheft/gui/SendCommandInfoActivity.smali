.class public Lcom/kms/antitheft/gui/SendCommandInfoActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SendCommandInfoActivity;->showDialog(I)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030045

    const v1, 0x7f0b002e

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/SendCommandInfoActivity;->a(II)V

    .line 34
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SendCommandInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0b0125

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SendCommandInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 36
    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/kms/antitheft/gui/SendCommandInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 38
    const v3, 0x7f0802a7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 39
    const v0, 0x7f0802a8

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SendCommandInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcb;

    invoke-direct {v0, p0}, Lcb;-><init>(Lcom/kms/antitheft/gui/SendCommandInfoActivity;)V

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 64
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801c2

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {v1, v2, v0}, Les;->c(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f0801c3

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
