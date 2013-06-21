.class final Lcom/tapjoy/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCVirtualGoods;

.field private final synthetic b:Lcom/tapjoy/cc;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/TJCVirtualGoods;

    iput-object p2, p0, Lcom/tapjoy/x;->b:Lcom/tapjoy/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "Virtual Goods"

    const-string v1, "onCANCEL"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/x;->a:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/x;->b:Lcom/tapjoy/cc;

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->b(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/cc;)V

    return-void
.end method
