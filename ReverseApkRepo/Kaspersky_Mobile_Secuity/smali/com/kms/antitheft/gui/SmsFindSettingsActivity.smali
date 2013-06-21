.class public Lcom/kms/antitheft/gui/SmsFindSettingsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"

# interfaces
.implements Lej;


# instance fields
.field public a:Z

.field private b:Z

.field private c:Z

.field private d:Leb;

.field private e:LbL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b:Z

    .line 28
    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->c:Z

    .line 29
    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->e:LbL;

    return-void
.end method

.method public static synthetic a(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;I)Landroid/widget/CheckBox;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->d(I)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;)LbL;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->e:LbL;

    return-object v0
.end method

.method private declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic a(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b:Z

    return v0
.end method

.method public static synthetic b(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;I)Landroid/widget/CheckBox;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->d(I)Landroid/widget/CheckBox;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 59
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 61
    const/16 v1, 0x19

    invoke-static {v1}, Lgj;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, v2, v2}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b(IZ)V

    .line 64
    :cond_0
    const/16 v0, 0x1a

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0, v3, v2}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b(IZ)V

    .line 67
    :cond_1
    return-void
.end method

.method private declared-synchronized g()V
    .locals 3

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b:Z

    .line 163
    new-instance v0, Leb;

    const/4 v1, 0x0

    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, p0, v1, v2}, Leb;-><init>(Landroid/app/Activity;Lej;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->d:Leb;

    .line 168
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->d:Leb;

    invoke-virtual {v0}, Leb;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 3

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a:Z

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a:Z

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b:Z

    .line 176
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->e:LbL;

    invoke-virtual {v0}, LbL;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 179
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, LfZ;->a()V

    .line 181
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/kms/gui/KMSCommonSettingsActivity;->d(I)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcq;

    invoke-direct {v0, p0}, Lcq;-><init>(Lcom/kms/antitheft/gui/SmsFindSettingsActivity;)V

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method protected final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 214
    packed-switch p1, :pswitch_data_0

    .line 228
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->f()V

    .line 232
    return-void

    .line 217
    :pswitch_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 219
    const/16 v1, 0x9

    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->e(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 220
    invoke-virtual {v0}, LfZ;->a()V

    goto :goto_0

    .line 225
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/EmailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string v1, "emailSetting"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected final b(I)Z
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 189
    if-nez p1, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iput-boolean v1, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b:Z

    .line 193
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 195
    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->e(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, LfZ;->a(ILjava/lang/Object;)V

    .line 196
    invoke-virtual {v0}, LfZ;->a()V

    .line 209
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 200
    :cond_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 202
    invoke-virtual {v0, v3}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->g()V

    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->e:LbL;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, LbL;->a(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a(Z)V

    .line 88
    const/16 v0, 0x64

    return v0
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 256
    const v0, 0x7f060028

    return v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v2, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 36
    invoke-static {p0, v9}, LbL;->a(Landroid/content/Context;Z)LbL;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->e:LbL;

    .line 37
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    move-object v10, v0

    check-cast v10, LfZ;

    .line 39
    new-array v11, v12, [Ldk;

    new-instance v0, Ldk;

    const v1, 0x7f08010e

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f080116

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x9

    invoke-virtual {v10, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v11, v8

    new-instance v3, Ldk;

    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v4, p0

    move v5, v9

    invoke-direct/range {v3 .. v8}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v3, v11, v9

    new-instance v3, Ldk;

    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x7

    invoke-virtual {v10, v0}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, p0

    move v5, v12

    invoke-direct/range {v3 .. v9}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v3, v11, v2

    .line 52
    const v0, 0x7f08010f

    invoke-virtual {p0, v0, v11}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a(I[Ldk;)V

    .line 53
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->f()V

    .line 55
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->c(I)V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b:Z

    .line 248
    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->a:Z

    .line 249
    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->c:Z

    .line 250
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onDestroy()V

    .line 251
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 237
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->h()V

    .line 238
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 240
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/kms/antitheft/gui/SmsFindSettingsActivity;->b(ILjava/lang/String;)V

    .line 241
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onResume()V

    .line 242
    return-void
.end method
