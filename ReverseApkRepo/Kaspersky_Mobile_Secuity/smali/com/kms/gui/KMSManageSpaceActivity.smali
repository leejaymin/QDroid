.class public Lcom/kms/gui/KMSManageSpaceActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03002b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/KMSManageSpaceActivity;->a(II)V

    .line 17
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSManageSpaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 18
    new-instance v1, LdR;

    invoke-direct {v1, p0}, LdR;-><init>(Lcom/kms/gui/KMSManageSpaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
