.class Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->b()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;


# direct methods
.method constructor <init>(Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$2;->a:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://web.teledit.com/Danal/Notice/help/samsung/yak.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod$2;->a:Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;

    iget-object v1, v1, Lcom/samsungapps/plasma/MicroPurchasePaymentMethod;->u:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
