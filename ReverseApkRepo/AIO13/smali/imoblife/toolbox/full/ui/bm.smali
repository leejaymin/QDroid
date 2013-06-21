.class final Limoblife/toolbox/full/ui/bm;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AStartup;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/AStartup;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/bm;->a:Limoblife/toolbox/full/ui/AStartup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bm;->a:Limoblife/toolbox/full/ui/AStartup;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AStartup;->b(Limoblife/toolbox/full/ui/AStartup;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bm;->a:Limoblife/toolbox/full/ui/AStartup;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AStartup;->c(Limoblife/toolbox/full/ui/AStartup;)Limoblife/toolbox/full/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bn;->notifyDataSetChanged()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bm;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Limoblife/toolbox/full/ui/bm;->a:Limoblife/toolbox/full/ui/AStartup;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/bm;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Limoblife/toolbox/full/ui/bm;->b:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bm;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bm;->a:Limoblife/toolbox/full/ui/AStartup;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AStartup;->c(Limoblife/toolbox/full/ui/AStartup;)Limoblife/toolbox/full/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bn;->a()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bm;->a:Limoblife/toolbox/full/ui/AStartup;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AStartup;->c(Limoblife/toolbox/full/ui/AStartup;)Limoblife/toolbox/full/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bn;->notifyDataSetChanged()V

    return-void
.end method
