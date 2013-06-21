.class public Lcom/thinkyeah/smartlock/LaunchLockingActivity;
.super Lcom/thinkyeah/smartlock/bn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/bn;-><init>()V

    return-void
.end method

.method private o()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0, p2}, Lcom/thinkyeah/smartlock/ap;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->s:Lcom/thinkyeah/smartlock/ap;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/ap;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const v2, 0x7f020023

    iget-object v1, p0, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ap;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/ap;->d()V

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_3

    invoke-static {p0, p2, p3, v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne v1, p1, :cond_4

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/k;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v1, p1, :cond_5

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/k;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne v1, p1, :cond_6

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/k;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/k;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->s:Lcom/thinkyeah/smartlock/ap;

    iget-object v1, v0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    invoke-interface {v0, p1}, Lcom/thinkyeah/smartlock/service/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->s:Lcom/thinkyeah/smartlock/ap;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ap;->b()V

    :cond_1
    invoke-static {}, Lcom/thinkyeah/smartlock/bi;->F()Lcom/thinkyeah/smartlock/bi;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/g;->b:Landroid/support/v4/app/l;

    const-string v2, "notLicensedDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-static {p0}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/service/LicenseCheckService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final g()V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->o()V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->finish()V

    return-void
.end method

.method protected final h()V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->o()V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/LaunchLockingActivity;->finish()V

    return-void
.end method

.method protected final i()V
    .locals 0

    return-void
.end method
