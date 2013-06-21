.class final Lcom/tapjoy/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCVirtualGoods;

.field private final synthetic b:Lcom/tapjoy/cc;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/w;->a:Lcom/tapjoy/TJCVirtualGoods;

    iput-object p2, p0, Lcom/tapjoy/w;->b:Lcom/tapjoy/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/w;->a:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/w;->b:Lcom/tapjoy/cc;

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->b(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/cc;)V

    return-void
.end method
