.class public Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030005

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->a(II)V

    .line 18
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 19
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 22
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbm;

    invoke-direct {v1, p0}, Lbm;-><init>(Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbn;

    invoke-direct {v1, p0}, Lbn;-><init>(Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
