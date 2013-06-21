.class public Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/marketinterface/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Purchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

.field public purchaseTime:J

.field final synthetic this$0:Lcom/urbanairship/iap/marketinterface/BillingService;


# direct methods
.method public constructor <init>(Lcom/urbanairship/iap/marketinterface/BillingService;Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->this$0:Lcom/urbanairship/iap/marketinterface/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->purchaseState:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    iput-object p3, p0, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->notificationId:Ljava/lang/String;

    iput-object p4, p0, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->productId:Ljava/lang/String;

    iput-object p5, p0, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->orderId:Ljava/lang/String;

    iput-wide p6, p0, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->purchaseTime:J

    iput-object p8, p0, Lcom/urbanairship/iap/marketinterface/BillingService$Purchase;->developerPayload:Ljava/lang/String;

    return-void
.end method
