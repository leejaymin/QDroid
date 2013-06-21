.class public Lcom/kms/activation/gui/ActivationSettingsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f060001

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onResume()V

    .line 141
    return-void
.end method
