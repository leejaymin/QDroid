.class final Limoblife/toolbox/full/ui/ae;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ab;

.field private b:Landroid/app/ProgressDialog;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ab;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/ae;->a:Limoblife/toolbox/full/ui/ab;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ae;)J
    .locals 2

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ae;->d:J

    return-wide v0
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ae;J)V
    .locals 0

    iput-wide p1, p0, Limoblife/toolbox/full/ui/ae;->c:J

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ae;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/ae;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/ae;J)V
    .locals 0

    iput-wide p1, p0, Limoblife/toolbox/full/ui/ae;->d:J

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Limoblife/toolbox/full/g/b;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ae;->a:Limoblife/toolbox/full/ui/ab;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ab;->b(Limoblife/toolbox/full/ui/ab;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Limoblife/toolbox/full/g/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Limoblife/toolbox/full/ui/af;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/af;-><init>(Limoblife/toolbox/full/ui/ae;)V

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/g/b;->a(Limoblife/toolbox/full/d/c;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/g/b;->a()V

    invoke-virtual {v0}, Limoblife/toolbox/full/g/b;->b()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/ui/ae;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ae;->a:Limoblife/toolbox/full/ui/ab;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ab;->b(Limoblife/toolbox/full/ui/ab;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ae;->a:Limoblife/toolbox/full/ui/ab;

    const v3, 0x7f07009b

    invoke-virtual {v2, v3}, Limoblife/toolbox/full/ui/ab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Limoblife/toolbox/full/ui/ae;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Limoblife/toolbox/full/ui/ae;->a:Limoblife/toolbox/full/ui/ab;

    const v3, 0x7f070079

    invoke-virtual {v2, v3}, Limoblife/toolbox/full/ui/ab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Limoblife/toolbox/full/ui/ae;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ae;->a:Limoblife/toolbox/full/ui/ab;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ab;->b(Limoblife/toolbox/full/ui/ab;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ae;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ae;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ae;->a:Limoblife/toolbox/full/ui/ab;

    const v2, 0x7f07009d

    invoke-virtual {v1, v2}, Limoblife/toolbox/full/ui/ab;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ae;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ae;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ae;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
