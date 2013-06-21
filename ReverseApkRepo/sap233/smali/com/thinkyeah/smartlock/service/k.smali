.class public final Lcom/thinkyeah/smartlock/service/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/smartlock/service/j;


# static fields
.field private static a:Lcom/thinkyeah/common/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/thinkyeah/smartlock/k;

.field private d:Ljava/util/Map;

.field private e:Lcom/thinkyeah/smartlock/service/g;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/c;

    const-string v1, "TaskMonitor"

    invoke-direct {v0, v1}, Lcom/thinkyeah/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thinkyeah/smartlock/service/k;->a:Lcom/thinkyeah/common/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thinkyeah/smartlock/service/k;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->c:Lcom/thinkyeah/smartlock/k;

    invoke-static {p1, p0}, Lcom/thinkyeah/smartlock/service/g;->a(Landroid/content/Context;Lcom/thinkyeah/smartlock/service/j;)Lcom/thinkyeah/smartlock/service/g;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->e:Lcom/thinkyeah/smartlock/service/g;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/service/k;->k()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->b:Landroid/content/Context;

    const-string v1, "LockInstallApp"

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/k;->h:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->b:Landroid/content/Context;

    const-string v1, "LockUninstallApp"

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/k;->i:Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->b:Landroid/content/Context;

    const-string v1, "LockSetting"

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/k;->f:Z

    return-void
.end method

.method private a(I)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/k;->b:Landroid/content/Context;

    const-class v2, Lcom/thinkyeah/smartlock/LaunchLockingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "LockReason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/k;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->c:Lcom/thinkyeah/smartlock/k;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/k;->b()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->b:Landroid/content/Context;

    const-string v1, "LockAndroidMarket"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/service/k;->i()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/thinkyeah/smartlock/m;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    iget-object v3, v1, Lcom/thinkyeah/smartlock/m;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    iget-object v3, v1, Lcom/thinkyeah/smartlock/m;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    iget-object v1, v1, Lcom/thinkyeah/smartlock/m;->a:Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/thinkyeah/smartlock/service/k;->a:Lcom/thinkyeah/common/c;

    const-string v1, "stop task monitor"

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->e:Lcom/thinkyeah/smartlock/service/g;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/g;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thinkyeah/smartlock/m;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/service/k;->b:Landroid/content/Context;

    const-class v3, Lcom/thinkyeah/smartlock/LaunchLockingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "LockReason"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "LaunchingAppPackage"

    iget-object v3, v0, Lcom/thinkyeah/smartlock/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "LaunchingAppActivity"

    iget-object v0, v0, Lcom/thinkyeah/smartlock/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/m;

    iget-object v2, v0, Lcom/thinkyeah/smartlock/m;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 3

    sget-object v0, Lcom/thinkyeah/smartlock/service/k;->a:Lcom/thinkyeah/common/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start task monitor, skipFirst="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->e:Lcom/thinkyeah/smartlock/service/g;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->e:Lcom/thinkyeah/smartlock/service/g;

    invoke-virtual {v0, p1}, Lcom/thinkyeah/smartlock/service/g;->a(Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/service/k;->k()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/thinkyeah/smartlock/service/k;->h:Z

    if-eqz v2, :cond_0

    const-string v2, "cmp=com.android.packageinstaller/.PackageInstallerActivity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/thinkyeah/smartlock/service/k;->a:Lcom/thinkyeah/common/c;

    const-string v2, "caught launcing install app"

    invoke-virtual {v1, v2}, Lcom/thinkyeah/common/c;->b(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/thinkyeah/smartlock/service/k;->a(I)Landroid/content/Intent;

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/thinkyeah/smartlock/service/k;->i:Z

    if-eqz v2, :cond_1

    const-string v2, "cmp=com.android.packageinstaller/.UninstallerActivity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/thinkyeah/smartlock/service/k;->a:Lcom/thinkyeah/common/c;

    const-string v2, "caught launcing uninstall app"

    invoke-virtual {v1, v2}, Lcom/thinkyeah/common/c;->b(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/thinkyeah/smartlock/service/k;->a(I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/thinkyeah/smartlock/service/k;->f:Z

    if-eqz v2, :cond_3

    const-string v2, "cmp=com.android.settings/.InstalledAppDetails"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cmp=com.android.settings/.applications.InstalledAppDetails"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    sget-object v1, Lcom/thinkyeah/smartlock/service/k;->a:Lcom/thinkyeah/common/c;

    const-string v2, "caught launcing app details"

    invoke-virtual {v1, v2}, Lcom/thinkyeah/common/c;->b(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/thinkyeah/smartlock/service/k;->a(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/thinkyeah/smartlock/service/k;->g:Z

    if-eqz v2, :cond_4

    const-string v2, "cmp=com.android.vending/.AssetBrowserActivity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/thinkyeah/smartlock/service/k;->a:Lcom/thinkyeah/common/c;

    const-string v2, "caught launcing android market"

    invoke-virtual {v1, v2}, Lcom/thinkyeah/common/c;->b(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/thinkyeah/smartlock/service/k;->a(I)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/k;->h:Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->e:Lcom/thinkyeah/smartlock/service/g;

    invoke-virtual {v0, p1}, Lcom/thinkyeah/smartlock/service/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/k;->h:Z

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->e:Lcom/thinkyeah/smartlock/service/g;

    invoke-virtual {v0, p1}, Lcom/thinkyeah/smartlock/service/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/k;->i:Z

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/k;->i:Z

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/k;->f:Z

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/k;->f:Z

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/thinkyeah/smartlock/m;

    const-string v1, "com.android.vending"

    const-string v2, "com.android.vending.AssetBrowserActivity"

    invoke-direct {v0, v1, v2}, Lcom/thinkyeah/smartlock/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    const-string v2, "com.android.vending"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->c:Lcom/thinkyeah/smartlock/k;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/k;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/k;->d:Ljava/util/Map;

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
