.class public Lcom/kms/gui/PremiumInstalledActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 11

    .prologue
    const v10, 0x7f08028d

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 91
    const v0, 0x7f0b00fb

    invoke-virtual {p0, v0}, Lcom/kms/gui/PremiumInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    const v1, 0x7f0b00fc

    invoke-virtual {p0, v1}, Lcom/kms/gui/PremiumInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    const v2, 0x7f0b00fd

    invoke-virtual {p0, v2}, Lcom/kms/gui/PremiumInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 94
    const v3, 0x7f0b00fe

    invoke-virtual {p0, v3}, Lcom/kms/gui/PremiumInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 95
    const v4, 0x7f0b00ff

    invoke-virtual {p0, v4}, Lcom/kms/gui/PremiumInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 97
    invoke-virtual {p0}, Lcom/kms/gui/PremiumInstalledActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.kms.gui.premium_settings_imported"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 98
    invoke-virtual {p0}, Lcom/kms/gui/PremiumInstalledActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.kms.gui.premium_version_updated"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 100
    if-eqz v6, :cond_0

    .line 102
    const v6, 0x7f080299

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 103
    const v0, 0x7f08029a

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 111
    :goto_0
    invoke-static {p0}, Lfp;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    if-nez v5, :cond_1

    .line 118
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :goto_1
    return-void

    .line 107
    :cond_0
    const v6, 0x7f08028a

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 108
    const v0, 0x7f08028b

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f08028c

    invoke-virtual {p0, v1}, Lcom/kms/gui/PremiumInstalledActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v10}, Lcom/kms/gui/PremiumInstalledActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected final a_()Z
    .locals 1

    .prologue
    .line 44
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

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const-string v0, "com.kms.free"

    invoke-static {v0}, Lfp;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 68
    const-class v1, Lgd;

    monitor-enter v1

    .line 70
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lgd;->x:Z

    .line 71
    iget-object v2, v0, Lgd;->t:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lgd;->b()V

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {p0}, Lcom/kms/gui/PremiumInstalledActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 75
    invoke-static {v2}, Lfn;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()V

    .line 79
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "com.kms.gui.next_activity"

    const-class v2, Lcom/kms/gui/KMSMain;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    const-string v1, "com.kms.gui.codeexpiration"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Lcom/kms/gui/PremiumInstalledActivity;->finish()V

    .line 83
    invoke-virtual {p0, v0}, Lcom/kms/gui/PremiumInstalledActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f0b00fe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030032

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/PremiumInstalledActivity;->a(II)V

    .line 26
    invoke-direct {p0}, Lcom/kms/gui/PremiumInstalledActivity;->c()V

    .line 28
    const v0, 0x7f0b00fe

    invoke-virtual {p0, v0}, Lcom/kms/gui/PremiumInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    const v1, 0x7f0b00ff

    invoke-virtual {p0, v1}, Lcom/kms/gui/PremiumInstalledActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 31
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kms/gui/PremiumInstalledActivity;->c()V

    .line 51
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onRestart()V

    .line 52
    return-void
.end method
