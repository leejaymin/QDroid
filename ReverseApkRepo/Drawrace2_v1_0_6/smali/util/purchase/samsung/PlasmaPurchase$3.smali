.class Lutil/purchase/samsung/PlasmaPurchase$3;
.super Ljava/lang/Object;
.source "PlasmaPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutil/purchase/samsung/PlasmaPurchase;->requestPurchaseItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lutil/purchase/samsung/PlasmaPurchase;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lutil/purchase/samsung/PlasmaPurchase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lutil/purchase/samsung/PlasmaPurchase$3;->this$0:Lutil/purchase/samsung/PlasmaPurchase;

    iput-object p2, p0, Lutil/purchase/samsung/PlasmaPurchase$3;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lutil/purchase/samsung/PlasmaPurchase$3;->this$0:Lutil/purchase/samsung/PlasmaPurchase;

    #getter for: Lutil/purchase/samsung/PlasmaPurchase;->plasma:Lcom/samsungapps/plasma/Plasma;
    invoke-static {v0}, Lutil/purchase/samsung/PlasmaPurchase;->access$100(Lutil/purchase/samsung/PlasmaPurchase;)Lcom/samsungapps/plasma/Plasma;

    move-result-object v0

    iget-object v1, p0, Lutil/purchase/samsung/PlasmaPurchase$3;->this$0:Lutil/purchase/samsung/PlasmaPurchase;

    invoke-static {v1}, Lutil/purchase/samsung/PlasmaPurchase;->access$008(Lutil/purchase/samsung/PlasmaPurchase;)I

    move-result v1

    iget-object v2, p0, Lutil/purchase/samsung/PlasmaPurchase$3;->val$productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsungapps/plasma/Plasma;->requestPurchaseItem(ILjava/lang/String;)Z

    .line 110
    return-void
.end method
