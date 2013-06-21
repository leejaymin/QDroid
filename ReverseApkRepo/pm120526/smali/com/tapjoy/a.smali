.class final Lcom/tapjoy/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/DownloadVirtualGood;


# direct methods
.method constructor <init>(Lcom/tapjoy/DownloadVirtualGood;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/a;->a:Lcom/tapjoy/DownloadVirtualGood;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/tapjoy/h;->e:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/a;->a:Lcom/tapjoy/DownloadVirtualGood;

    const-class v2, Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/tapjoy/a;->a:Lcom/tapjoy/DownloadVirtualGood;

    invoke-static {v2}, Lcom/tapjoy/DownloadVirtualGood;->a(Lcom/tapjoy/DownloadVirtualGood;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "my_items_tab"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/a;->a:Lcom/tapjoy/DownloadVirtualGood;

    invoke-virtual {v1, v0}, Lcom/tapjoy/DownloadVirtualGood;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tapjoy/a;->a:Lcom/tapjoy/DownloadVirtualGood;

    invoke-virtual {v0}, Lcom/tapjoy/DownloadVirtualGood;->finish()V

    return-void
.end method
