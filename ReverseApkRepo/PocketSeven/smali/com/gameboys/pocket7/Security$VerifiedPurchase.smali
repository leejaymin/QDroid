.class public Lcom/gameboys/pocket7/Security$VerifiedPurchase;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameboys/pocket7/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedPurchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/gameboys/pocket7/Consts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lcom/gameboys/pocket7/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "purchaseState"
    .parameter "notificationId"
    .parameter "productId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/gameboys/pocket7/Security$VerifiedPurchase;->purchaseState:Lcom/gameboys/pocket7/Consts$PurchaseState;

    .line 69
    iput-object p2, p0, Lcom/gameboys/pocket7/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/gameboys/pocket7/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/gameboys/pocket7/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 72
    iput-wide p5, p0, Lcom/gameboys/pocket7/Security$VerifiedPurchase;->purchaseTime:J

    .line 73
    iput-object p7, p0, Lcom/gameboys/pocket7/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 74
    return-void
.end method
