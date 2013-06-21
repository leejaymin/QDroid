.class final Lcom/tapjoy/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/ak;


# direct methods
.method constructor <init>(Lcom/tapjoy/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/ao;->a:Lcom/tapjoy/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->e:Z

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->f:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    iget-object v0, p0, Lcom/tapjoy/ao;->a:Lcom/tapjoy/ak;

    invoke-static {v0}, Lcom/tapjoy/ak;->a(Lcom/tapjoy/ak;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->r(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method
