.class public final Lcom/rubycell/e/h;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/content/Context;

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/rubycell/e/h;->b:Landroid/content/Context;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/e/h;->a:Landroid/app/ProgressDialog;

    iput p2, p0, Lcom/rubycell/e/h;->c:I

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {}, Lcom/rubycell/pianisthd/d/k;->a()V

    iget-object v0, p0, Lcom/rubycell/e/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/k;->a(Landroid/content/Context;)V

    iget v0, p0, Lcom/rubycell/e/h;->c:I

    packed-switch v0, :pswitch_data_0

    move v0, v4

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    sput v4, Lcom/rubycell/pianisthd/d/b;->Z:I

    iget v0, p0, Lcom/rubycell/e/h;->c:I

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    iget-object v2, p0, Lcom/rubycell/e/h;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/m;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/d/k;->b(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v1, p0, Lcom/rubycell/e/h;->c:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->r:I

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    :cond_1
    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->r:I

    if-eq v1, v2, :cond_2

    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    :cond_2
    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->r:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->t:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    sget v2, Lcom/rubycell/pianisthd/d/b;->s:I

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sput v4, Lcom/rubycell/pianisthd/d/b;->aa:I

    iget v0, p0, Lcom/rubycell/e/h;->c:I

    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    iget-object v2, p0, Lcom/rubycell/e/h;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/m;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/d/k;->b(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v1, p0, Lcom/rubycell/e/h;->c:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->s:I

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    :cond_3
    sget v1, Lcom/rubycell/pianisthd/d/b;->ab:I

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/rubycell/e/h;->c:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->t:I

    iget-object v3, p0, Lcom/rubycell/e/h;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/rubycell/pianisthd/d/m;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/k;->b(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/rubycell/e/h;->c:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->t:I

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    :cond_4
    :goto_1
    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->r:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->t:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    sput v4, Lcom/rubycell/pianisthd/d/b;->ab:I

    iget v0, p0, Lcom/rubycell/e/h;->c:I

    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    iget-object v2, p0, Lcom/rubycell/e/h;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/m;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rubycell/pianisthd/d/k;->b(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v1, p0, Lcom/rubycell/e/h;->c:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->t:I

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    :cond_6
    sget v1, Lcom/rubycell/pianisthd/d/b;->aa:I

    if-ne v1, v4, :cond_8

    iget v1, p0, Lcom/rubycell/e/h;->c:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->s:I

    iget-object v3, p0, Lcom/rubycell/e/h;->b:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/rubycell/pianisthd/d/m;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/k;->b(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lcom/rubycell/e/h;->c:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->s:I

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    :cond_7
    :goto_2
    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->r:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    sget v2, Lcom/rubycell/pianisthd/d/b;->t:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/rubycell/pianisthd/d/k;->a(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/e/h;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/e/h;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/e/h;->b:Landroid/content/Context;

    const-string v1, "Cannot load HQ sound files. Default sound files were loaded"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/rubycell/e/h;->b:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/rubycell/e/h;->a:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/e/h;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/rubycell/e/h;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
