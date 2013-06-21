.class final Limoblife/toolbox/full/ui/ad;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ab;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ab;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/ad;->a:Limoblife/toolbox/full/ui/ab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ad;->a:Limoblife/toolbox/full/ui/ab;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ab;->e(Limoblife/toolbox/full/ui/ab;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/ad;->a:Limoblife/toolbox/full/ui/ab;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ab;->f(Limoblife/toolbox/full/ui/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
