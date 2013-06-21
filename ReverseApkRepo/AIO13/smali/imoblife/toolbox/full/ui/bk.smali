.class final Limoblife/toolbox/full/ui/bk;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AStartup;

.field private b:Landroid/app/ProgressDialog;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/AStartup;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/bk;->a:Limoblife/toolbox/full/ui/AStartup;

    iput-object p2, p0, Limoblife/toolbox/full/ui/bk;->c:Ljava/lang/String;

    iput-object p3, p0, Limoblife/toolbox/full/ui/bk;->d:Ljava/lang/String;

    iput-boolean p4, p0, Limoblife/toolbox/full/ui/bk;->e:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/ui/bk;->a:Limoblife/toolbox/full/ui/AStartup;

    iget-object v1, p0, Limoblife/toolbox/full/ui/bk;->c:Ljava/lang/String;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bk;->d:Ljava/lang/String;

    iget-boolean v3, p0, Limoblife/toolbox/full/ui/bk;->e:Z

    invoke-static {v0, v1, v2, v3}, Limoblife/toolbox/full/ui/AStartup;->a(Limoblife/toolbox/full/ui/AStartup;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bk;->a:Limoblife/toolbox/full/ui/AStartup;

    iget-object v1, p0, Limoblife/toolbox/full/ui/bk;->c:Ljava/lang/String;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bk;->d:Ljava/lang/String;

    iget-boolean v3, p0, Limoblife/toolbox/full/ui/bk;->e:Z

    invoke-virtual {v0, v1, v2, v3}, Limoblife/toolbox/full/ui/AStartup;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bk;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Limoblife/toolbox/full/ui/bk;->a:Limoblife/toolbox/full/ui/AStartup;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/bk;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Limoblife/toolbox/full/ui/bk;->b:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bk;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bk;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bk;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
