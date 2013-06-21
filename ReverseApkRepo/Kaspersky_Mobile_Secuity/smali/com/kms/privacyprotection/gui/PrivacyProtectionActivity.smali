.class public Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lgu;


# instance fields
.field private a:LgK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 27
    new-instance v0, LgK;

    invoke-direct {v0, p0}, LgK;-><init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)V

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a:LgK;

    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 85
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 86
    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->finish()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    .line 93
    iget-object v1, v1, Lcom/kms/kmsshared/KMSApplication;->a:Lgv;

    iget-boolean v0, v0, Lgf;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Lgv;->a(ZLgu;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 98
    const/4 v0, 0x0

    .line 99
    if-eqz p1, :cond_0

    move v0, v1

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a:LgK;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, LgK;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a:LgK;

    invoke-virtual {v1, v0}, LgK;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 52
    const v0, 0x7f030031

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a(II)V

    .line 53
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 54
    const v1, 0x7f0b0005

    invoke-virtual {p0, v1}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 55
    iget-boolean v0, v0, Lgf;->b:Z

    if-eqz v0, :cond_0

    .line 57
    const v0, 0x7f080083

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 64
    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a:LgK;

    new-instance v1, LgJ;

    invoke-direct {v1, p0}, LgJ;-><init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, LgK;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    :goto_1
    return-void

    .line 61
    :cond_0
    const v0, 0x7f080082

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->c()V

    goto :goto_1
.end method
