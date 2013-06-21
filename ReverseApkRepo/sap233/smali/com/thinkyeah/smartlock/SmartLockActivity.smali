.class public Lcom/thinkyeah/smartlock/SmartLockActivity;
.super Lcom/thinkyeah/common/b/d;


# static fields
.field private static final p:Lcom/thinkyeah/common/c;


# instance fields
.field private q:Lcom/thinkyeah/smartlock/ap;

.field private r:Lcom/thinkyeah/smartlock/k;

.field private s:Z

.field private t:Landroid/os/Handler;

.field private u:Lcom/a/a/a/a/m;

.field private v:Lcom/a/a/a/a/i;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/c;

    const-class v1, Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thinkyeah/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thinkyeah/smartlock/SmartLockActivity;->p:Lcom/thinkyeah/common/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/thinkyeah/common/b/d;-><init>()V

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->s:Z

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/SmartLockActivity;)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/thinkyeah/smartlock/eg;->F()Lcom/thinkyeah/smartlock/eg;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "setPwdRetrieveDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :cond_0
    const-string v0, "HasShownGVPromotion"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/thinkyeah/smartlock/ee;->F()Lcom/thinkyeah/smartlock/ee;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "promotionDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    const-string v0, "HasShownGVPromotion"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/SmartLockActivity;Z)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0, p1}, Lcom/thinkyeah/smartlock/ap;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/SmartLockActivity;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const-string v0, "pkg"

    :goto_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/thinkyeah/smartlock/SmartLockActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/SmartLockActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->w:Z

    return-void
.end method

.method static synthetic d(Lcom/thinkyeah/smartlock/SmartLockActivity;)Lcom/thinkyeah/smartlock/ap;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    return-object v0
.end method

.method static synthetic e(Lcom/thinkyeah/smartlock/SmartLockActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l()Lcom/thinkyeah/common/c;
    .locals 1

    sget-object v0, Lcom/thinkyeah/smartlock/SmartLockActivity;->p:Lcom/thinkyeah/common/c;

    return-object v0
.end method


# virtual methods
.method protected final g()V
    .locals 3

    const-string v0, "Protect"

    invoke-static {}, Lcom/thinkyeah/smartlock/cp;->F()Lcom/thinkyeah/common/b/f;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/cp;

    invoke-virtual {p0, v0, v1, v2}, Lcom/thinkyeah/smartlock/SmartLockActivity;->a(Ljava/lang/String;Lcom/thinkyeah/common/b/f;Ljava/lang/Class;)V

    const-string v0, "Setting"

    invoke-static {}, Lcom/thinkyeah/smartlock/di;->F()Lcom/thinkyeah/common/b/f;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/di;

    invoke-virtual {p0, v0, v1, v2}, Lcom/thinkyeah/smartlock/SmartLockActivity;->a(Ljava/lang/String;Lcom/thinkyeah/common/b/f;Ljava/lang/Class;)V

    const-string v0, "More"

    invoke-static {}, Lcom/thinkyeah/smartlock/cj;->F()Lcom/thinkyeah/common/b/f;

    move-result-object v1

    const-class v2, Lcom/thinkyeah/smartlock/cj;

    invoke-virtual {p0, v0, v1, v2}, Lcom/thinkyeah/smartlock/SmartLockActivity;->a(Ljava/lang/String;Lcom/thinkyeah/common/b/f;Ljava/lang/Class;)V

    return-void
.end method

.method protected final h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->s:Z

    return-void
.end method

.method public final i()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.thinkyeah.galleryvault"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cg;->a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/cg;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "marketExceptionDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cg;->a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/cg;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "marketExceptionDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j()Landroid/support/v4/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final k()Landroid/support/v4/app/Fragment;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->s:Z

    const v0, 0x7f09004e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/thinkyeah/common/b/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->r:Lcom/thinkyeah/smartlock/k;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->t:Landroid/os/Handler;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "FreshInstall"

    invoke-static {v0, v1, v4}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v1, "FreshInstall"

    invoke-static {v0, v1, v3}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/thinkyeah/smartlock/ea;->F()Lcom/thinkyeah/smartlock/ea;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "installShortcutDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->o()Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->c()V

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/thinkyeah/smartlock/dx;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/dx;-><init>(Lcom/thinkyeah/smartlock/SmartLockActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    if-eqz p1, :cond_2

    const-string v0, "bundleIsLicenseChecked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->w:Z

    :cond_2
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/thinkyeah/smartlock/dy;

    invoke-direct {v1, p0, v3}, Lcom/thinkyeah/smartlock/dy;-><init>(Lcom/thinkyeah/smartlock/SmartLockActivity;B)V

    iput-object v1, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->u:Lcom/a/a/a/a/m;

    new-instance v1, Lcom/a/a/a/a/i;

    new-instance v2, Lcom/a/a/a/a/t;

    new-instance v3, Lcom/a/a/a/a/a;

    sget-object v4, Lcom/thinkyeah/smartlock/bk;->a:[B

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/a/a/a/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/a/a/a/a/t;-><init>(Landroid/content/Context;Lcom/a/a/a/a/p;)V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiIJji1ARrYPgQC5kphsYi0J+Ap3U9zBk8bc1bdu53GeH1Pi+XS8bziNucRlnpPKp/kilueRfzMa1S1xw5frccKTd0NsHXl9zV49dm8YcEF9uzBVEZNt+YYPbpQSw4gZMZTAcx7+nid3ayFGy0w3vgR0Ibq4BB9J5mIY+yFAjPv28+D1K4AKjAWDS/2uBhSrSVZrGID3LfD3VicDAZaeNojdo1+SJrs04ZNOdJ28VPOQ8JuxjSjAGIwvAW7IW2hzesBuHyxzf4vvNgBg8kDmTWfL097rugKmpAg0ROawO4lBPgvF38xpDyTmbvV8lB0cOBa6Ey9hXWun+cJI0KKItrQIDAQAB"

    invoke-direct {v1, p0, v2, v0}, Lcom/a/a/a/a/i;-><init>(Landroid/content/Context;Lcom/a/a/a/a/q;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->v:Lcom/a/a/a/a/i;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->q:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->r:Lcom/thinkyeah/smartlock/k;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/k;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ej;->a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/ej;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "whatsNewDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/mnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/thinkyeah/smartlock/ec;->F()Lcom/thinkyeah/smartlock/ec;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "moveToPhoneDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-super {p0}, Lcom/thinkyeah/common/b/d;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/thinkyeah/common/b/d;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->s:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bundleIsLicenseChecked"

    iget-boolean v1, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->w:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/thinkyeah/common/b/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/thinkyeah/common/b/d;->onStart()V

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->v:Lcom/a/a/a/a/i;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->u:Lcom/a/a/a/a/m;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a/i;->a(Lcom/a/a/a/a/m;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SmartLockActivity;->v:Lcom/a/a/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/a/a/i;->a()V

    invoke-super {p0}, Lcom/thinkyeah/common/b/d;->onStop()V

    return-void
.end method
