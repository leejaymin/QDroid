.class public Lutil/googleiap/Security$VerifiedPurchase;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutil/googleiap/Security;
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

.field public purchaseState:Lutil/googleiap/Consts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lutil/googleiap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "purchaseState"
    .parameter "notificationId"
    .parameter "productId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lutil/googleiap/Security$VerifiedPurchase;->purchaseState:Lutil/googleiap/Consts$PurchaseState;

    .line 73
    iput-object p2, p0, Lutil/googleiap/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lutil/googleiap/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lutil/googleiap/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 76
    iput-wide p5, p0, Lutil/googleiap/Security$VerifiedPurchase;->purchaseTime:J

    .line 77
    iput-object p7, p0, Lutil/googleiap/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 78
    return-void
.end method
