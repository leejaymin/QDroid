.class public abstract Lcom/urbanairship/iap/IAPEventListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract billingSupported(Z)V
.end method

.method public abstract downloadFailed(Lcom/urbanairship/iap/Product;)V
.end method

.method public abstract downloadProgress(Lcom/urbanairship/iap/Product;I)V
.end method

.method public abstract downloadStarted(Lcom/urbanairship/iap/Product;I)V
.end method

.method public abstract downloadSuccessful(Lcom/urbanairship/iap/Product;)V
.end method

.method public abstract marketUnavailable(Lcom/urbanairship/iap/Product;)V
.end method

.method public abstract restoreStarted()V
.end method
