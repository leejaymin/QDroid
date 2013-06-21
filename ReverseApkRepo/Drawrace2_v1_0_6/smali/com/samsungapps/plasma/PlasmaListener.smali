.class public interface abstract Lcom/samsungapps/plasma/PlasmaListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onItemInformationListReceived(IILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsungapps/plasma/ItemInformation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPurchaseItemFinished(IILcom/samsungapps/plasma/PurchasedItemInformation;)V
.end method

.method public abstract onPurchasedItemInformationListReceived(IILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsungapps/plasma/PurchasedItemInformation;",
            ">;)V"
        }
    .end annotation
.end method
