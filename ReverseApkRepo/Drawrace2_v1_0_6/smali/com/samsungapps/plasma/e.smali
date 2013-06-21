.class abstract Lcom/samsungapps/plasma/e;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(IILcom/samsungapps/plasma/PurchasedItemInformation;)V
.end method

.method abstract a(IILjava/util/ArrayList;)V
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

.method abstract b(IILjava/util/ArrayList;)V
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
