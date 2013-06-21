.class final Limoblife/toolbox/full/ui/bh;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ASplash;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ASplash;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/bh;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/bh;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ASplash;->a(Limoblife/toolbox/full/ui/ASplash;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/bh;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ASplash;->b(Limoblife/toolbox/full/ui/ASplash;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/bh;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ASplash;->a(Limoblife/toolbox/full/ui/ASplash;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bh;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ASplash;->b(Limoblife/toolbox/full/ui/ASplash;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/bh;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ASplash;->a(Limoblife/toolbox/full/ui/ASplash;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bh;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ASplash;->a(Limoblife/toolbox/full/ui/ASplash;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Limoblife/toolbox/full/ui/ASplash;->a(Limoblife/toolbox/full/ui/ASplash;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/bh;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ASplash;->c(Limoblife/toolbox/full/ui/ASplash;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/bh;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/ASplash;->finish()V

    goto :goto_0
.end method
