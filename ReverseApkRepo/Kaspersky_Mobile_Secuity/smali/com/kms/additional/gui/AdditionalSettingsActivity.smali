.class public Lcom/kms/additional/gui/AdditionalSettingsActivity;
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

.method private c()V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    const-string v1, "com.kms.gui.entercodemode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method private f(I)V
    .locals 3
    .parameter

    .prologue
    .line 191
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 192
    invoke-virtual {p0, p1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->e(I)Z

    move-result v1

    .line 193
    const-class v2, Lgd;

    monitor-enter v2

    .line 194
    :try_start_0
    iput-boolean v1, v0, Lgd;->c:Z

    .line 195
    invoke-virtual {v0}, Lgd;->b()V

    .line 196
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    invoke-static {v0}, LdT;->a(Z)V

    .line 204
    :goto_0
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 201
    :cond_0
    invoke-static {}, LdT;->d()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x6

    .line 119
    packed-switch p1, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    return-void

    .line 128
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->f(I)V

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 133
    invoke-virtual {p0, p1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->e(I)Z

    move-result v1

    .line 134
    const-class v2, Lgd;

    monitor-enter v2

    .line 135
    :try_start_0
    iput-boolean v1, v0, Lgd;->d:Z

    .line 136
    invoke-virtual {v0}, Lgd;->b()V

    .line 137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 138
    :pswitch_3
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 142
    invoke-virtual {p0, p1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->e(I)Z

    move-result v1

    .line 143
    const-class v2, Lgd;

    monitor-enter v2

    .line 144
    :try_start_1
    iput-boolean v1, v0, Lgd;->e:Z

    .line 145
    invoke-virtual {v0}, Lgd;->b()V

    .line 146
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 147
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/additional/gui/WidgetSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    :pswitch_5
    invoke-direct {p0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->c()V

    goto :goto_0

    .line 161
    :pswitch_6
    invoke-virtual {p0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getApplication()Landroid/app/Application;

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/selfprotection/gui/UninstallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/kms/kmsshared/KMSApplication;->e(Z)V

    .line 164
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    const-string v1, "com.kms.UninstallActivity.launchedFromAd"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/ReportsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/additional/gui/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 215
    const v0, 0x7f060002

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    .line 50
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 54
    const-class v1, Lgd;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-boolean v6, v0, Lgd;->c:Z

    .line 56
    iget-boolean v7, v0, Lgd;->d:Z

    .line 57
    iget-boolean v8, v0, Lgd;->e:Z

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/16 v0, 0xa

    new-array v9, v0, [Ldk;

    const/4 v10, 0x0

    new-instance v0, Ldk;

    const/4 v2, 0x1

    const v1, 0x7f080176

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v10

    const/4 v10, 0x1

    new-instance v0, Ldk;

    const/4 v2, 0x2

    const v1, 0x7f080177

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f080178

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v10

    const/4 v6, 0x2

    new-instance v0, Ldk;

    const/4 v2, 0x2

    const v1, 0x7f080179

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f08017a

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v6

    const/4 v6, 0x3

    new-instance v0, Ldk;

    const/4 v2, 0x2

    const v1, 0x7f08017b

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f08017c

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v6

    const/4 v6, 0x4

    new-instance v0, Ldk;

    const/4 v2, 0x3

    const v1, 0x7f08017d

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f08017e

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v6

    const/4 v6, 0x5

    new-instance v0, Ldk;

    const/4 v2, 0x3

    const v1, 0x7f08017f

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v6

    const/4 v6, 0x6

    new-instance v0, Ldk;

    const/4 v2, 0x3

    const v1, 0x7f08028e

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v6

    const/4 v6, 0x7

    new-instance v0, Ldk;

    const/4 v2, 0x1

    const v1, 0x7f080180

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v9, v6

    const/16 v7, 0x8

    new-instance v0, Ldk;

    const/4 v2, 0x3

    const v1, 0x7f0802c3

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v9, v7

    const/16 v7, 0x9

    new-instance v0, Ldk;

    const/4 v2, 0x3

    const v1, 0x7f080182

    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v9, v7

    .line 113
    const v0, 0x7f080029

    invoke-virtual {p0, v0, v9}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->a(I[Ldk;)V

    .line 114
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getApplication()Landroid/app/Application;

    .line 39
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfp;->e(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->e(Z)V

    .line 45
    :cond_0
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onResume()V

    .line 46
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/kms/additional/gui/AdditionalSettingsActivity;->getApplication()Landroid/app/Application;

    .line 186
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->e(Z)V

    .line 187
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onStop()V

    .line 188
    return-void
.end method
