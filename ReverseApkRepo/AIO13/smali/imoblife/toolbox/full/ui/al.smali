.class final Limoblife/toolbox/full/ui/al;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AHistory;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/AHistory;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/al;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/ui/al;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->c(Limoblife/toolbox/full/ui/AHistory;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/al;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->c(Limoblife/toolbox/full/ui/AHistory;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
