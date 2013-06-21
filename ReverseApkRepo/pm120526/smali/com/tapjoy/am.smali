.class final Lcom/tapjoy/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/ak;


# direct methods
.method constructor <init>(Lcom/tapjoy/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/am;->a:Lcom/tapjoy/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/am;->a:Lcom/tapjoy/ak;

    invoke-static {v0}, Lcom/tapjoy/ak;->a(Lcom/tapjoy/ak;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->o(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method
