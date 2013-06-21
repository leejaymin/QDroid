.class public abstract Lcom/kms/gui/KMSBaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/gui/KMSBaseActivity;->a:I

    return-void
.end method

.method private c()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/kms/gui/KMSBaseActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 199
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 188
    :pswitch_1
    const v0, 0x7f0a0001

    goto :goto_0

    .line 192
    :pswitch_2
    const v0, 0x7f0a0002

    goto :goto_0

    .line 196
    :pswitch_3
    const v0, 0x7f0a0004

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 65
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->setContentView(I)V

    .line 68
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0, p2}, Lcom/kms/gui/KMSBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->e()V

    .line 74
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;->c()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->b_()I

    move-result v0

    if-nez v0, :cond_2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 78
    :cond_2
    return-void
.end method

.method protected a_()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b_()I
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->b_()I

    move-result v0

    invoke-static {p0, v0}, Ldb;->a(Landroid/app/Activity;I)V

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 43
    instance-of v3, p0, Lcom/kms/gui/KMSEnterCodeActivity;

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/kms/antitheft/gui/LockScreenActivity;

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v0, v0, Lgd;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 45
    :goto_0
    instance-of v3, p0, Lcom/kms/antitheft/gui/LockScreenActivity;

    if-nez v3, :cond_2

    move v3, v1

    .line 47
    :goto_1
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    .line 48
    iput v2, p0, Lcom/kms/gui/KMSBaseActivity;->a:I

    .line 57
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void

    :cond_1
    move v0, v2

    .line 43
    goto :goto_0

    :cond_2
    move v3, v2

    .line 45
    goto :goto_1

    .line 49
    :cond_3
    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/kms/gui/KMSBaseActivity;->a:I

    goto :goto_2

    .line 51
    :cond_4
    if-nez v0, :cond_5

    .line 52
    iput v1, p0, Lcom/kms/gui/KMSBaseActivity;->a:I

    goto :goto_2

    .line 53
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/kms/gui/KMSBaseActivity;->a:I

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 249
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 246
    :pswitch_0
    new-instance v0, Ldt;

    const v1, 0x7f070016

    invoke-direct {v0, p0, v1}, Ldt;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0xf3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;->c()I

    move-result v0

    .line 207
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->b_()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 210
    invoke-virtual {v1, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 213
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 237
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 225
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string v2, "com.kms.gui.helpid"

    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->b_()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/activation/gui/PasswordRecoveryActionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0144
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->a_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 91
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->r()V

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 103
    invoke-static {p0}, Lfp;->d(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 108
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->a_()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgd;

    .line 115
    iget-boolean v1, v1, Lgd;->b:Z

    .line 120
    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/kms/gui/KMSHelpActivity;

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseActivity;->finish()V

    .line 130
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->d(Z)V

    .line 134
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->t()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const-string v1, "com.kms.gui.entercodemode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "com.kms.gui.entercodenonext"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 171
    return-void

    .line 147
    :cond_2
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgg;

    .line 148
    invoke-virtual {v1, v3}, Lgg;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->i()V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {v0, v3}, Lcom/kms/kmsshared/KMSApplication;->d(Z)V

    goto :goto_0
.end method
