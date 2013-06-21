.class final Limoblife/toolbox/full/ui/v;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ACommunication;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ACommunication;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/v;->a:Limoblife/toolbox/full/ui/ACommunication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/v;->a:Limoblife/toolbox/full/ui/ACommunication;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACommunication;->f(Limoblife/toolbox/full/ui/ACommunication;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/v;->a:Limoblife/toolbox/full/ui/ACommunication;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACommunication;->h(Limoblife/toolbox/full/ui/ACommunication;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/v;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Limoblife/toolbox/full/ui/v;->a:Limoblife/toolbox/full/ui/ACommunication;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/v;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Limoblife/toolbox/full/ui/v;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Limoblife/toolbox/full/ui/v;->a:Limoblife/toolbox/full/ui/ACommunication;

    const v2, 0x7f070138

    invoke-virtual {v1, v2}, Limoblife/toolbox/full/ui/ACommunication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/v;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/v;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/v;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/v;->a:Limoblife/toolbox/full/ui/ACommunication;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACommunication;->g(Limoblife/toolbox/full/ui/ACommunication;)V

    return-void
.end method
