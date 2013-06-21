.class Lfi;
.super Landroid/os/Handler;


# instance fields
.field final synthetic 癤욱븳援:Lfh;


# direct methods
.method constructor <init>(Lfh;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lfi;->癤욱븳援:Lfh;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lfi;->癤욱븳援:Lfh;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lfl;

    invoke-static {v1, v0}, Lfh;->癤욱븳援(Lfh;[Lfl;)V

    :cond_0
    return-void
.end method
