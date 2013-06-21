.class final Lcom/thinkyeah/smartlock/cb;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/ref/WeakReference;

.field b:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/g;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/cb;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/thinkyeah/smartlock/cb;->b:I

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v4/app/g;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/cb;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    aget-object v1, p1, v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "000000"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/thinkyeah/smartlock/cb;->b:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/g;->f()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "sendingMailDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/k;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/d;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/g;->f()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "authEmailDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/k;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/thinkyeah/smartlock/bu;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/thinkyeah/smartlock/bu;->c(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f090061

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget v1, p0, Lcom/thinkyeah/smartlock/cb;->b:I

    const-string v2, "AuthenticationCode"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    check-cast v0, Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bn;->l()J

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/thinkyeah/smartlock/bn;->n()Lcom/thinkyeah/common/c;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f090062

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    check-cast v0, Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bn;->m()V

    goto :goto_1
.end method

.method protected final onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/thinkyeah/smartlock/cc;->F()Lcom/thinkyeah/smartlock/cc;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/app/g;->f()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v2, "sendingMailDialog"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
