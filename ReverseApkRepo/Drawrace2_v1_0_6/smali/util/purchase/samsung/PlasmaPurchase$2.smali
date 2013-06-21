.class Lutil/purchase/samsung/PlasmaPurchase$2;
.super Ljava/lang/Object;
.source "PlasmaPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutil/purchase/samsung/PlasmaPurchase;->requestPurchasedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lutil/purchase/samsung/PlasmaPurchase;


# direct methods
.method constructor <init>(Lutil/purchase/samsung/PlasmaPurchase;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lutil/purchase/samsung/PlasmaPurchase$2;->this$0:Lutil/purchase/samsung/PlasmaPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lutil/purchase/samsung/PlasmaPurchase$2;->this$0:Lutil/purchase/samsung/PlasmaPurchase;

    #getter for: Lutil/purchase/samsung/PlasmaPurchase;->plasma:Lcom/samsungapps/plasma/Plasma;
    invoke-static {v0}, Lutil/purchase/samsung/PlasmaPurchase;->access$100(Lutil/purchase/samsung/PlasmaPurchase;)Lcom/samsungapps/plasma/Plasma;

    move-result-object v0

    iget-object v1, p0, Lutil/purchase/samsung/PlasmaPurchase$2;->this$0:Lutil/purchase/samsung/PlasmaPurchase;

    invoke-static {v1}, Lutil/purchase/samsung/PlasmaPurchase;->access$008(Lutil/purchase/samsung/PlasmaPurchase;)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsungapps/plasma/Plasma;->requestPurchasedItemInformationList(III)Z

    .line 96
    return-void
.end method
