.class public Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# instance fields
.field private a:[Ldk;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->b:Z

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 48
    const/16 v1, 0x17

    invoke-static {v1}, Lgj;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0, v2, v2}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->b(IZ)V

    .line 51
    :cond_0
    const/16 v0, 0x18

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->b(IZ)V

    .line 54
    :cond_1
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/high16 v5, 0x7f08

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-static {p0, v3}, Lfp;->b(Landroid/content/Context;Z)V

    .line 119
    invoke-static {p0}, Lfp;->c(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 120
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "ResolverActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f0800fa

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f0800fb

    new-instance v2, Lch;

    invoke-direct {v2, p0}, Lch;-><init>(Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 191
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {p0, v4}, Lfp;->b(Landroid/content/Context;Z)V

    .line 144
    const v1, 0x7f0800f7

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 146
    new-instance v2, Les;

    invoke-direct {v2, p0}, Les;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Les;->a(I)Les;

    move-result-object v2

    invoke-virtual {v2, v1}, Les;->a(Ljava/lang/CharSequence;)Les;

    move-result-object v1

    const v2, 0x7f0800f8

    new-instance v3, Lcj;

    invoke-direct {v3, p0, v0}, Lcj;-><init>(Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f0800f9

    new-instance v2, Lci;

    invoke-direct {v2, p0}, Lci;-><init>(Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 195
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->c()V

    .line 210
    return-void

    .line 197
    :pswitch_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 199
    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->e(I)Z

    move-result v1

    .line 200
    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LfZ;->a(ILjava/lang/Object;)V

    .line 201
    invoke-virtual {v0}, LfZ;->a()V

    goto :goto_0

    .line 205
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/BlockTextActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final b(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 59
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->a:[Ldk;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Ldk;->d:Z

    if-nez v1, :cond_0

    .line 61
    invoke-static {}, Lfp;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {p0}, LeO;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-static {}, Lfp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-static {p0, v0}, Lfp;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->d()V

    .line 73
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 240
    const v0, 0x7f060025

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x2

    .line 27
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LfZ;

    .line 29
    new-array v8, v2, [Ldk;

    new-instance v0, Ldk;

    const v1, 0x7f0800f1

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0800f2

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v9}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v8, v9

    new-instance v0, Ldk;

    const/4 v5, 0x3

    const v1, 0x7f0800f3

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move v2, v5

    move v5, v9

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v8, v6

    iput-object v8, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->a:[Ldk;

    .line 38
    const v0, 0x7f0800f0

    iget-object v1, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->a:[Ldk;

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->a(I[Ldk;)V

    .line 39
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->c()V

    .line 41
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->c(I)V

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 214
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onResume()V

    .line 215
    invoke-static {}, Lfp;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p0}, LeO;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->c:Z

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->c:Z

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v1, "reason"

    const-string v2, "die"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->b:Z

    .line 228
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->c:Z

    .line 229
    invoke-static {p0, v3}, Lfp;->b(Landroid/content/Context;Z)V

    .line 231
    :cond_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v4}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 233
    invoke-virtual {v0, v3}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->a(IZ)V

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0, v4}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->b(ILjava/lang/String;)V

    .line 235
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->c:Z

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onStop()V

    .line 114
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->b:Z

    if-eqz v0, :cond_1

    .line 86
    iput-boolean v2, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->b:Z

    .line 87
    invoke-static {p0}, Lfp;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v2, v3}, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->a(IZ)V

    .line 90
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 92
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LfZ;->a(ILjava/lang/Object;)V

    .line 93
    invoke-virtual {v0}, LfZ;->a()V

    .line 95
    :cond_0
    if-nez p1, :cond_1

    .line 97
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SmsBlockSettingsActivity;->c:Z

    .line 100
    :cond_1
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onWindowFocusChanged(Z)V

    .line 101
    return-void
.end method
