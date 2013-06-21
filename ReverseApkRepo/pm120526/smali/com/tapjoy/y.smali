.class final Lcom/tapjoy/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/y;)Lcom/tapjoy/TJCVirtualGoods;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJCVirtualGoods;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Cancel"

    new-instance v2, Lcom/tapjoy/z;

    invoke-direct {v2, p0}, Lcom/tapjoy/z;-><init>(Lcom/tapjoy/y;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Retry"

    new-instance v2, Lcom/tapjoy/aa;

    invoke-direct {v2, p0}, Lcom/tapjoy/aa;-><init>(Lcom/tapjoy/y;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJCVirtualGoods;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->j:Landroid/app/AlertDialog;

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/y;->a:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
