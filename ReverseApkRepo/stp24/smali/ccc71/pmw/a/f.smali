.class final Lccc71/pmw/a/f;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1675
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1679
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1680
    aget-object v1, v0, v5

    check-cast v1, Landroid/os/Handler;

    .line 1681
    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/String;

    .line 1682
    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    .line 1684
    const/4 v4, 0x3

    aget-object v0, v0, v4

    check-cast v0, Lccc71/pmw/a/a;

    .line 1686
    new-instance v4, Lccc71/pmw/a/g;

    invoke-direct {v4, p0, v2, v3, v0}, Lccc71/pmw/a/g;-><init>(Lccc71/pmw/a/f;Ljava/lang/String;Ljava/lang/String;Lccc71/pmw/a/a;)V

    .line 1819
    invoke-virtual {v4, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 1820
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1824
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1825
    iput v5, v2, Landroid/os/Message;->what:I

    .line 1826
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1827
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1828
    return-void
.end method
