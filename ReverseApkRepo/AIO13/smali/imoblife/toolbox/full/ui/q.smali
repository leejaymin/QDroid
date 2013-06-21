.class final Limoblife/toolbox/full/ui/q;
.super Landroid/a/a/d;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ACache;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ACache;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/q;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-direct {p0}, Landroid/a/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/pm/PackageStats;)V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/ui/q;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACache;->f(Limoblife/toolbox/full/ui/ACache;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PackageStats"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/q;->a:Limoblife/toolbox/full/ui/ACache;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ACache;->f(Limoblife/toolbox/full/ui/ACache;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
