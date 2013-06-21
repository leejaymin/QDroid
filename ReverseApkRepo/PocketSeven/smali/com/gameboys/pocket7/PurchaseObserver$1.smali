.class Lcom/gameboys/pocket7/PurchaseObserver$1;
.super Ljava/lang/Object;
.source "PurchaseObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameboys/pocket7/PurchaseObserver;->postPurchaseStateChange(Lcom/gameboys/pocket7/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/PurchaseObserver;

.field private final synthetic val$developerPayload:Ljava/lang/String;

.field private final synthetic val$itemId:Ljava/lang/String;

.field private final synthetic val$purchaseState:Lcom/gameboys/pocket7/Consts$PurchaseState;

.field private final synthetic val$purchaseTime:J

.field private final synthetic val$quantity:I


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/PurchaseObserver;Lcom/gameboys/pocket7/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->this$0:Lcom/gameboys/pocket7/PurchaseObserver;

    iput-object p2, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$purchaseState:Lcom/gameboys/pocket7/Consts$PurchaseState;

    iput-object p3, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$itemId:Ljava/lang/String;

    iput p4, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$quantity:I

    iput-wide p5, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$purchaseTime:J

    iput-object p7, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$developerPayload:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 155
    iget-object v0, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->this$0:Lcom/gameboys/pocket7/PurchaseObserver;

    .line 156
    iget-object v1, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$purchaseState:Lcom/gameboys/pocket7/Consts$PurchaseState;

    iget-object v2, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$itemId:Ljava/lang/String;

    iget v3, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$quantity:I

    iget-wide v4, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$purchaseTime:J

    iget-object v6, p0, Lcom/gameboys/pocket7/PurchaseObserver$1;->val$developerPayload:Ljava/lang/String;

    .line 155
    invoke-virtual/range {v0 .. v6}, Lcom/gameboys/pocket7/PurchaseObserver;->onPurchaseStateChange(Lcom/gameboys/pocket7/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    .line 157
    return-void
.end method
