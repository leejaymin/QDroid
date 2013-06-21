.class final Limoblife/toolbox/full/ui/bi;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ASplash;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ASplash;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/bi;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/bi;->a:Limoblife/toolbox/full/ui/ASplash;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ASplash;->d(Limoblife/toolbox/full/ui/ASplash;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
