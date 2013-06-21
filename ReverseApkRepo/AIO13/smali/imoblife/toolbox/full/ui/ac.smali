.class final Limoblife/toolbox/full/ui/ac;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ab;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ab;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/ac;->a:Limoblife/toolbox/full/ui/ab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/ui/ac;->a:Limoblife/toolbox/full/ui/ab;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ab;->c(Limoblife/toolbox/full/ui/ab;)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ac;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Limoblife/toolbox/full/ui/ac;->a:Limoblife/toolbox/full/ui/ab;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ab;->d(Limoblife/toolbox/full/ui/ab;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
