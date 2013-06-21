.class final Lcom/tapjoy/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/t;


# direct methods
.method constructor <init>(Lcom/tapjoy/t;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/u;->a:Lcom/tapjoy/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/u;->a:Lcom/tapjoy/t;

    invoke-static {v0}, Lcom/tapjoy/t;->a(Lcom/tapjoy/t;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->o(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method
