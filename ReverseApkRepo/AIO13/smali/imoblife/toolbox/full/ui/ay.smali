.class final Limoblife/toolbox/full/ui/ay;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ax;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ax;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/ay;->a:Limoblife/toolbox/full/ui/ax;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ay;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->f(Limoblife/toolbox/full/ui/ax;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/ay;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->i(Limoblife/toolbox/full/ui/ax;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ay;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->h(Limoblife/toolbox/full/ui/ax;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/ay;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->g(Limoblife/toolbox/full/ui/ax;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ay;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->h(Limoblife/toolbox/full/ui/ax;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
