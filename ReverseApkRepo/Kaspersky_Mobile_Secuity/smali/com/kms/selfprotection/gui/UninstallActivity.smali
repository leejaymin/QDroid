.class public Lcom/kms/selfprotection/gui/UninstallActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->a:I

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {p0}, Lfp;->c(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 62
    :cond_0
    invoke-virtual {p0, v1}, Lcom/kms/selfprotection/gui/UninstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->finish()V

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 69
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 70
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->finish()V

    .line 72
    invoke-virtual {p0, v1}, Lcom/kms/selfprotection/gui/UninstallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->b:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->finish()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->c()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lfp;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LeO;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    const v1, 0x7f08025e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 186
    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 188
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 189
    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->a:I

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->h()V

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 210
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 211
    iget-boolean v0, v0, Lgf;->b:Z

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/kms/selfprotection/gui/UninstallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 228
    iget-object v1, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lfn;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->b(Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-boolean v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->b:Z

    if-nez v0, :cond_2

    .line 234
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->e(Z)V

    .line 238
    :cond_2
    invoke-static {p0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public final a_()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->h()V

    .line 205
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/kms/gui/KMSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b000e

    if-ne v0, v1, :cond_3

    .line 133
    iget v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->a:I

    if-ne v0, v3, :cond_2

    .line 137
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 138
    iget-object v0, v0, Lgd;->a:Ljava/lang/String;

    .line 140
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v1, "com.kms.gui.entercodemode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "com.kms.gui.codeexpiration"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v1, "com.kms.gui.unblockuninstall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string v1, "com.kms.gui.entercodenonext"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->f()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LeO;->g(Landroid/content/Context;)V

    .line 161
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->h()V

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b001a

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 167
    invoke-static {v4}, Lcom/kms/kmsshared/KMSApplication;->e(Z)V

    .line 168
    iget-object v1, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lfn;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 170
    iget-object v1, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->b(Ljava/lang/String;)V

    .line 172
    :cond_4
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->d()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030053

    invoke-virtual {p0, v0, v2}, Lcom/kms/selfprotection/gui/UninstallActivity;->a(II)V

    .line 46
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/selfprotection/gui/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kms.uninstall.blockedapp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->c:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.kms.UninstallActivity.launchedFromAd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->b:Z

    .line 52
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplication()Landroid/app/Application;

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->e(Z)V

    .line 95
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->d()V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onRestart()V

    .line 117
    invoke-virtual {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->getApplication()Landroid/app/Application;

    .line 119
    iget v0, p0, Lcom/kms/selfprotection/gui/UninstallActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/kms/selfprotection/gui/UninstallActivity;->f()V

    .line 126
    :cond_0
    return-void
.end method
