.class final Lutil/googleiap/ResponseHandler$1;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutil/googleiap/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lutil/googleiap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$developerPayload:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$purchaseState:Lutil/googleiap/Consts$PurchaseState;

.field final synthetic val$purchaseTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lutil/googleiap/Consts$PurchaseState;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lutil/googleiap/ResponseHandler$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lutil/googleiap/ResponseHandler$1;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lutil/googleiap/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iput-object p4, p0, Lutil/googleiap/ResponseHandler$1;->val$purchaseState:Lutil/googleiap/Consts$PurchaseState;

    iput-wide p5, p0, Lutil/googleiap/ResponseHandler$1;->val$purchaseTime:J

    iput-object p7, p0, Lutil/googleiap/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 114
    new-instance v0, Lutil/googleiap/PurchaseDatabase;

    iget-object v1, p0, Lutil/googleiap/ResponseHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lutil/googleiap/PurchaseDatabase;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, db:Lutil/googleiap/PurchaseDatabase;
    iget-object v1, p0, Lutil/googleiap/ResponseHandler$1;->val$orderId:Ljava/lang/String;

    iget-object v2, p0, Lutil/googleiap/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iget-object v3, p0, Lutil/googleiap/ResponseHandler$1;->val$purchaseState:Lutil/googleiap/Consts$PurchaseState;

    iget-wide v4, p0, Lutil/googleiap/ResponseHandler$1;->val$purchaseTime:J

    iget-object v6, p0, Lutil/googleiap/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lutil/googleiap/PurchaseDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Lutil/googleiap/Consts$PurchaseState;JLjava/lang/String;)I

    move-result v4

    .line 117
    .local v4, quantity:I
    invoke-virtual {v0}, Lutil/googleiap/PurchaseDatabase;->close()V

    .line 121
    const-class v8, Lutil/googleiap/ResponseHandler;

    monitor-enter v8

    .line 122
    :try_start_0
    invoke-static {}, Lutil/googleiap/ResponseHandler;->access$000()Lutil/googleiap/PurchaseObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lutil/googleiap/ResponseHandler;->access$000()Lutil/googleiap/PurchaseObserver;

    move-result-object v1

    iget-object v2, p0, Lutil/googleiap/ResponseHandler$1;->val$purchaseState:Lutil/googleiap/Consts$PurchaseState;

    iget-object v3, p0, Lutil/googleiap/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iget-wide v5, p0, Lutil/googleiap/ResponseHandler$1;->val$purchaseTime:J

    iget-object v7, p0, Lutil/googleiap/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lutil/googleiap/PurchaseObserver;->postPurchaseStateChange(Lutil/googleiap/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    .line 126
    :cond_0
    monitor-exit v8

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
