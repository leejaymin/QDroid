.class public Lcom/kms/antitheft/gui/SimWatchSettingsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# instance fields
.field private a:[Ldk;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/kms/antitheft/gui/SimWatchSettingsActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b:Z

    return v0
.end method

.method private a(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a:[Ldk;

    aget-object v0, v0, v4

    iget-boolean v0, v0, Ldk;->d:Z

    if-eqz v0, :cond_3

    .line 102
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 103
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    .line 108
    :goto_0
    if-nez v1, :cond_3

    .line 111
    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p0, v3}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->showDialog(I)V

    :goto_1
    move v0, v3

    .line 125
    :goto_2
    return v0

    :cond_1
    move v1, v4

    .line 104
    goto :goto_0

    .line 117
    :cond_2
    const/4 v1, 0x5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 118
    invoke-virtual {v0}, LfZ;->a()V

    .line 119
    invoke-virtual {p0, v4, v4}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a(IZ)V

    .line 120
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c()V

    goto :goto_1

    :cond_3
    move v0, v4

    .line 125
    goto :goto_2
.end method

.method private c()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a:[Ldk;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Ldk;->d:Z

    .line 76
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(IZ)V

    .line 77
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(IZ)V

    .line 78
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(IZ)V

    .line 79
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(IZ)V

    .line 81
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 84
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 85
    const/16 v1, 0x15

    invoke-static {v1}, Lgj;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, v2, v2}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(IZ)V

    .line 88
    :cond_0
    const/16 v0, 0x16

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0, v3, v2}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(IZ)V

    .line 90
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(IZ)V

    .line 91
    invoke-virtual {p0, v4, v2}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(IZ)V

    .line 92
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(IZ)V

    .line 94
    :cond_1
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/high16 v5, 0x7f08

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 261
    invoke-static {p0, v3}, Lfp;->b(Landroid/content/Context;Z)V

    .line 262
    invoke-static {p0}, Lfp;->c(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 263
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "ResolverActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f080159

    new-instance v2, Lce;

    invoke-direct {v2, p0}, Lce;-><init>(Lcom/kms/antitheft/gui/SimWatchSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 327
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {p0, v4}, Lfp;->b(Landroid/content/Context;Z)V

    .line 287
    const v1, 0x7f08015a

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 288
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 289
    new-instance v2, Les;

    invoke-direct {v2, p0}, Les;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Les;->a(I)Les;

    move-result-object v2

    invoke-virtual {v2, v1}, Les;->a(Ljava/lang/CharSequence;)Les;

    move-result-object v1

    const v2, 0x7f08015b

    new-instance v3, Lcg;

    invoke-direct {v3, p0, v0}, Lcg;-><init>(Lcom/kms/antitheft/gui/SimWatchSettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f08015c

    new-instance v2, Lcf;

    invoke-direct {v2, p0}, Lcf;-><init>(Lcom/kms/antitheft/gui/SimWatchSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->d()V

    .line 200
    return-void

    .line 167
    :pswitch_1
    const/4 v1, 0x5

    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->e(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 168
    invoke-virtual {v0}, LfZ;->a()V

    .line 169
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c()V

    .line 170
    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->p()V

    goto :goto_0

    .line 176
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/PhoneNumberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const-string v1, "phoneNumberSetting"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c:Z

    .line 179
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 183
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/EmailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    const-string v1, "emailSetting"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c:Z

    .line 186
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :pswitch_4
    const/16 v1, 0x8

    invoke-virtual {p0, p1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->e(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 191
    invoke-virtual {v0}, LfZ;->a()V

    goto :goto_0

    .line 195
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/BlockTextActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final b(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 238
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a:[Ldk;

    aget-object v1, v1, p1

    iget-boolean v1, v1, Ldk;->d:Z

    if-nez v1, :cond_0

    .line 240
    invoke-static {}, Lfp;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    invoke-static {p0}, LeO;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    invoke-static {}, Lfp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    invoke-static {p0, v0}, Lfp;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->f()V

    .line 252
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 386
    const v0, 0x7f060024

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x3

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 34
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    move-object v10, v0

    check-cast v10, LfZ;

    .line 35
    const/4 v0, 0x7

    new-array v11, v0, [Ldk;

    new-instance v0, Ldk;

    const v1, 0x7f080108

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f080109

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v13}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v11, v8

    new-instance v3, Ldk;

    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v4, p0

    move v5, v9

    invoke-direct/range {v3 .. v8}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v3, v11, v9

    new-instance v3, Ldk;

    const v0, 0x7f080104

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x6

    invoke-virtual {v10, v0}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, p0

    move v5, v12

    invoke-direct/range {v3 .. v9}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v3, v11, v2

    new-instance v3, Ldk;

    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x7

    invoke-virtual {v10, v0}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, p0

    move v5, v12

    invoke-direct/range {v3 .. v9}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v3, v11, v12

    const/4 v0, 0x4

    new-instance v3, Ldk;

    const v1, 0x7f080106

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v4, p0

    move v5, v9

    invoke-direct/range {v3 .. v8}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v3, v11, v0

    new-instance v0, Ldk;

    const v1, 0x7f080107

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0801b3

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v11, v13

    const/4 v0, 0x6

    new-instance v3, Ldk;

    const v1, 0x7f0800f3

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v2}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, p0

    move v5, v12

    invoke-direct/range {v3 .. v9}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v3, v11, v0

    iput-object v11, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a:[Ldk;

    .line 67
    const v0, 0x7f080102

    iget-object v1, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a:[Ldk;

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a(I[Ldk;)V

    .line 68
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c()V

    .line 69
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->d()V

    .line 71
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c(I)V

    .line 72
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 204
    packed-switch p1, :pswitch_data_0

    .line 231
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080213

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f080215

    new-instance v2, Lcc;

    invoke-direct {v2, p0}, Lcc;-><init>(Lcom/kms/antitheft/gui/SimWatchSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f080216

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 220
    new-instance v1, Lcd;

    invoke-direct {v1, p0}, Lcd;-><init>(Lcom/kms/antitheft/gui/SimWatchSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 130
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 132
    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSCommonSettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onPause()V

    .line 156
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c:Z

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a(Z)Z

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c:Z

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 360
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onResume()V

    .line 361
    invoke-static {}, Lfp;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-static {p0}, LeO;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->d:Z

    .line 368
    :cond_0
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->d:Z

    if-eqz v0, :cond_1

    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    const-string v1, "reason"

    const-string v2, "die"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b:Z

    .line 374
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->d:Z

    .line 375
    invoke-static {p0, v3}, Lfp;->b(Landroid/content/Context;Z)V

    .line 377
    :cond_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v4}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 378
    invoke-virtual {v0, v5}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(ILjava/lang/String;)V

    .line 379
    const/4 v2, 0x3

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(ILjava/lang/String;)V

    .line 380
    invoke-virtual {v0, v4}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v5, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(ILjava/lang/String;)V

    .line 381
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->d:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;->onStop()V

    .line 151
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 332
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v4}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 333
    iget-boolean v1, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b:Z

    if-eqz v1, :cond_1

    .line 335
    iput-boolean v2, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b:Z

    .line 336
    invoke-static {p0}, Lfp;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p0, v5, v3}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a(IZ)V

    .line 339
    invoke-virtual {p0, v2, v3}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->a(IZ)V

    .line 340
    invoke-direct {p0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->c()V

    .line 342
    const/16 v1, 0x8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LfZ;->a(ILjava/lang/Object;)V

    .line 343
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, LfZ;->a(ILjava/lang/Object;)V

    .line 344
    invoke-virtual {v0}, LfZ;->a()V

    .line 347
    :cond_0
    iput-boolean v3, p0, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->d:Z

    .line 349
    :cond_1
    if-eqz p1, :cond_2

    .line 351
    invoke-virtual {v0, v6}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(ILjava/lang/String;)V

    .line 352
    const/4 v2, 0x3

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(ILjava/lang/String;)V

    .line 353
    invoke-virtual {v0, v4}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v6, v0}, Lcom/kms/antitheft/gui/SimWatchSettingsActivity;->b(ILjava/lang/String;)V

    .line 355
    :cond_2
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onWindowFocusChanged(Z)V

    .line 356
    return-void
.end method
