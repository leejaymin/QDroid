.class final Limoblife/toolbox/full/ui/an;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AHistory;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/AHistory;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->d(Limoblife/toolbox/full/ui/AHistory;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->c(Limoblife/toolbox/full/ui/AHistory;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->e(Limoblife/toolbox/full/ui/AHistory;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Limoblife/toolbox/full/ui/AHistory;->a(Limoblife/toolbox/full/ui/AHistory;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->c(Limoblife/toolbox/full/ui/AHistory;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    const v2, 0x7f070126

    invoke-virtual {v1, v2}, Limoblife/toolbox/full/ui/AHistory;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->c(Limoblife/toolbox/full/ui/AHistory;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->c(Limoblife/toolbox/full/ui/AHistory;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/an;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->c(Limoblife/toolbox/full/ui/AHistory;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
