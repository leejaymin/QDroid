.class final Lcom/tapjoy/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/y;


# direct methods
.method constructor <init>(Lcom/tapjoy/y;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/aa;->a:Lcom/tapjoy/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tapjoy/aa;->a:Lcom/tapjoy/y;

    invoke-static {v0}, Lcom/tapjoy/y;->a(Lcom/tapjoy/y;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/ah;

    iget-object v2, p0, Lcom/tapjoy/aa;->a:Lcom/tapjoy/y;

    invoke-static {v2}, Lcom/tapjoy/y;->a(Lcom/tapjoy/y;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/ah;-><init>(Lcom/tapjoy/TJCVirtualGoods;B)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/ah;)V

    iget-object v0, p0, Lcom/tapjoy/aa;->a:Lcom/tapjoy/y;

    invoke-static {v0}, Lcom/tapjoy/y;->a(Lcom/tapjoy/y;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->v(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/ah;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
