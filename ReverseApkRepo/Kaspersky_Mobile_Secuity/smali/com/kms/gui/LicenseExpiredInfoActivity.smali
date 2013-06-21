.class public Lcom/kms/gui/LicenseExpiredInfoActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030024

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/LicenseExpiredInfoActivity;->a(II)V

    .line 25
    invoke-virtual {p0}, Lcom/kms/gui/LicenseExpiredInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 26
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    invoke-virtual {p0}, Lcom/kms/gui/LicenseExpiredInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 30
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/kms/gui/LicenseExpiredInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgd;

    .line 33
    const-class v2, Lgd;

    monitor-enter v2

    .line 34
    :try_start_0
    invoke-virtual {v1}, Lgd;->a()V

    .line 35
    iget-boolean v1, v1, Lgd;->m:Z

    .line 36
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v1, :cond_0

    .line 38
    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 40
    :cond_0
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/gui/LicenseExpiredInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, LdS;

    invoke-direct {v1, p0}, LdS;-><init>(Lcom/kms/gui/LicenseExpiredInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
