.class public Lnet/robotmedia/billing/model/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/robotmedia/billing/model/Transaction$PurchaseState;
    }
.end annotation


# static fields
.field static final DEVELOPER_PAYLOAD:Ljava/lang/String; = "developerPayload"

.field static final NOTIFICATION_ID:Ljava/lang/String; = "notificationId"

.field static final ORDER_ID:Ljava/lang/String; = "orderId"

.field static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final PRODUCT_ID:Ljava/lang/String; = "productId"

.field static final PURCHASE_STATE:Ljava/lang/String; = "purchaseState"

.field static final PURCHASE_TIME:Ljava/lang/String; = "purchaseTime"


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "orderId"
    .parameter "productId"
    .parameter "packageName"
    .parameter "purchaseState"
    .parameter "notificationId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lnet/robotmedia/billing/model/Transaction;->packageName:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lnet/robotmedia/billing/model/Transaction;->purchaseState:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    .line 76
    iput-object p5, p0, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    .line 77
    iput-wide p6, p0, Lnet/robotmedia/billing/model/Transaction;->purchaseTime:J

    .line 78
    iput-object p8, p0, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lnet/robotmedia/billing/model/Transaction;
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 48
    new-instance v1, Lnet/robotmedia/billing/model/Transaction;

    invoke-direct {v1}, Lnet/robotmedia/billing/model/Transaction;-><init>()V

    .line 49
    .local v1, transaction:Lnet/robotmedia/billing/model/Transaction;
    const-string v2, "purchaseState"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, response:I
    invoke-static {v0}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->valueOf(I)Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    move-result-object v2

    iput-object v2, v1, Lnet/robotmedia/billing/model/Transaction;->purchaseState:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    .line 51
    const-string v2, "productId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    .line 52
    const-string v2, "packageName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/robotmedia/billing/model/Transaction;->packageName:Ljava/lang/String;

    .line 53
    const-string v2, "purchaseTime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lnet/robotmedia/billing/model/Transaction;->purchaseTime:J

    .line 54
    const-string v2, "orderId"

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    .line 55
    const-string v2, "notificationId"

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    .line 56
    const-string v2, "developerPayload"

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    .line 57
    return-object v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lnet/robotmedia/billing/model/Transaction;->clone()Lnet/robotmedia/billing/model/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lnet/robotmedia/billing/model/Transaction;
    .locals 9

    .prologue
    .line 82
    new-instance v0, Lnet/robotmedia/billing/model/Transaction;

    iget-object v1, p0, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    iget-object v2, p0, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lnet/robotmedia/billing/model/Transaction;->purchaseState:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    iget-object v5, p0, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    iget-wide v6, p0, Lnet/robotmedia/billing/model/Transaction;->purchaseTime:J

    iget-object v8, p0, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lnet/robotmedia/billing/model/Transaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 92
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 93
    check-cast v0, Lnet/robotmedia/billing/model/Transaction;

    .line 94
    .local v0, other:Lnet/robotmedia/billing/model/Transaction;
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 95
    iget-object v3, v0, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    iget-object v4, v0, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_5
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 100
    iget-object v3, v0, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_6
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    iget-object v4, v0, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 103
    goto :goto_0

    .line 104
    :cond_7
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 105
    iget-object v3, v0, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_8
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    iget-object v4, v0, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_9
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->packageName:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 110
    iget-object v3, v0, Lnet/robotmedia/billing/model/Transaction;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_a
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lnet/robotmedia/billing/model/Transaction;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 113
    goto :goto_0

    .line 114
    :cond_b
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 115
    iget-object v3, v0, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 116
    goto :goto_0

    .line 117
    :cond_c
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    iget-object v4, v0, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 118
    goto/16 :goto_0

    .line 119
    :cond_d
    iget-object v3, p0, Lnet/robotmedia/billing/model/Transaction;->purchaseState:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    iget-object v4, v0, Lnet/robotmedia/billing/model/Transaction;->purchaseState:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    if-eq v3, v4, :cond_e

    move v1, v2

    .line 120
    goto/16 :goto_0

    .line 121
    :cond_e
    iget-wide v3, p0, Lnet/robotmedia/billing/model/Transaction;->purchaseTime:J

    iget-wide v5, v0, Lnet/robotmedia/billing/model/Transaction;->purchaseTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 122
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
