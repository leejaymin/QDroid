.class public Lcom/kms/additional/gui/WidgetSettingsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x6

    const/4 v3, 0x1

    .line 78
    packed-switch p1, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 82
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/kms/additional/gui/WidgetSettingsActivity;->e(I)Z

    move-result v1

    .line 83
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 84
    const-class v2, Lgd;

    monitor-enter v2

    .line 85
    :try_start_0
    iput-boolean v1, v0, Lgd;->g:Z

    .line 86
    invoke-virtual {v0}, Lgd;->b()V

    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-static {p0}, Leu;->a(Landroid/content/Context;)Z

    .line 89
    if-eqz v1, :cond_0

    .line 91
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/kms/gui/widget/KMSWidget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/kms/additional/gui/WidgetSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 101
    :goto_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/WidgetSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 97
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/kms/gui/widget/KMSWidget;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/kms/additional/gui/WidgetSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1

    .line 106
    :pswitch_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 107
    invoke-virtual {p0, p1}, Lcom/kms/additional/gui/WidgetSettingsActivity;->e(I)Z

    move-result v1

    .line 108
    const-class v2, Lgd;

    monitor-enter v2

    .line 109
    :try_start_1
    iput-boolean v1, v0, Lgd;->h:Z

    .line 110
    invoke-virtual {v0}, Lgd;->b()V

    .line 111
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 112
    invoke-static {p0}, Leu;->a(Landroid/content/Context;)Z

    goto :goto_0

    .line 111
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f060029

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x2

    .line 29
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 32
    const-class v1, Lgd;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-boolean v5, v0, Lgd;->g:Z

    .line 34
    iget-boolean v6, v0, Lgd;->h:Z

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    new-array v7, v2, [Ldk;

    new-instance v0, Ldk;

    const v1, 0x7f0801e9

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/WidgetSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0801ea

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/WidgetSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v7, v9

    const/4 v8, 0x1

    new-instance v0, Ldk;

    const v1, 0x7f0801ee

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/WidgetSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0801ef

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/WidgetSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v7, v8

    .line 48
    const v0, 0x7f0801e7

    invoke-virtual {p0, v0, v7}, Lcom/kms/additional/gui/WidgetSettingsActivity;->a(I[Ldk;)V

    .line 49
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0b0127

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/WidgetSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 52
    const v1, 0x7f0b0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0801e8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 72
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f0801ec

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f0801ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
