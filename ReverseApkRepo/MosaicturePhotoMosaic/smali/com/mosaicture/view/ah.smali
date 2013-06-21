.class final Lcom/mosaicture/view/ah;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Lcom/mosaicture/view/am;

    invoke-direct {v0}, Lcom/mosaicture/view/am;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
