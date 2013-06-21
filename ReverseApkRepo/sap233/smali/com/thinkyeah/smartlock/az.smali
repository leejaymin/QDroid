.class final Lcom/thinkyeah/smartlock/az;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/support/v4/app/g;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/az;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/az;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    if-nez v0, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/thinkyeah/common/e;

    invoke-direct {v1}, Lcom/thinkyeah/common/e;-><init>()V

    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Landroid/support/v4/app/g;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/thinkyeah/common/e;->a:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/g;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/app/g;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/thinkyeah/smartlock/cf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/thinkyeah/common/e;->b:Ljava/lang/String;

    aget-object v0, p1, v4

    iput-object v0, v1, Lcom/thinkyeah/common/e;->c:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, v1, Lcom/thinkyeah/common/e;->g:Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, v1, Lcom/thinkyeah/common/e;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/thinkyeah/common/e;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/thinkyeah/common/e;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v1, Lcom/thinkyeah/common/e;->e:Ljava/lang/String;

    new-instance v0, Lcom/thinkyeah/common/d;

    invoke-direct {v0}, Lcom/thinkyeah/common/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/d;->a(Lcom/thinkyeah/common/e;)V

    invoke-virtual {v0}, Lcom/thinkyeah/common/d;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/thinkyeah/smartlock/FeedbackActivity;->g()Lcom/thinkyeah/common/c;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method final a(Landroid/support/v4/app/g;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/az;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/az;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/az;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/g;->f()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "sendingDataDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/k;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/d;->a()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/thinkyeah/smartlock/av;->F()Lcom/thinkyeah/smartlock/av;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/app/g;->f()Landroid/support/v4/app/k;

    move-result-object v2

    const-string v3, "feedbackSucceededDialog"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/thinkyeah/smartlock/at;->F()Lcom/thinkyeah/smartlock/at;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/app/g;->f()Landroid/support/v4/app/k;

    move-result-object v2

    const-string v3, "feedbackFailedDialog"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/support/v4/app/g;->finish()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/support/v4/app/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/support/v4/app/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/az;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/thinkyeah/smartlock/ba;->F()Lcom/thinkyeah/smartlock/ba;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/app/g;->f()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v2, "sendingDataDialog"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
