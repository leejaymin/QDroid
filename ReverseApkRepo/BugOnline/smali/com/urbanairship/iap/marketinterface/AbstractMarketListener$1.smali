.class Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->postPurchaseStateChange(Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;

.field final synthetic val$developerPayload:Ljava/lang/String;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$purchaseState:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

.field final synthetic val$purchaseTime:J

.field final synthetic val$quantity:I


# direct methods
.method constructor <init>(Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->this$0:Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;

    iput-object p2, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$purchaseState:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    iput-object p3, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$itemId:Ljava/lang/String;

    iput p4, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$quantity:I

    iput-wide p5, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$purchaseTime:J

    iput-object p7, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->this$0:Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;

    iget-object v1, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$purchaseState:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    iget-object v2, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$itemId:Ljava/lang/String;

    iget v3, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$quantity:I

    iget-wide v4, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$purchaseTime:J

    iget-object v6, p0, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener$1;->val$developerPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/urbanairship/iap/marketinterface/AbstractMarketListener;->onPurchaseStateChange(Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method
