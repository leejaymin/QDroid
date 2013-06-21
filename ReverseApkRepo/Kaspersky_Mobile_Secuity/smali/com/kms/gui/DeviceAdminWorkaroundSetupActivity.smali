.class public Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 37
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    invoke-static {p0}, LeO;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->d()V

    .line 41
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    const v1, 0x7f0b0054

    invoke-virtual {p0, v1}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 46
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    const v1, 0x7f080295

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 104
    const-class v1, Lgd;

    monitor-enter v1

    .line 106
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lgd;->w:Z

    .line 107
    invoke-virtual {v0}, Lgd;->b()V

    .line 108
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-virtual {p0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->finish()V

    .line 111
    invoke-virtual {p0, v0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a_()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    invoke-direct {p0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->f()V

    goto :goto_0

    .line 86
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    :pswitch_1
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    invoke-static {p0}, LeO;->d(Landroid/content/Context;)Z

    .line 95
    invoke-direct {p0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->f()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x7f0b0054
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030012

    const v1, 0x7f0b004f

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->a(II)V

    .line 23
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 24
    invoke-direct {p0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->c()V

    .line 25
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kms/gui/DeviceAdminWorkaroundSetupActivity;->c()V

    .line 32
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onResume()V

    .line 33
    return-void
.end method
