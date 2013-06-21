.class public Lutil/purchase/samsung/PlasmaPurchase;
.super Ljava/lang/Object;
.source "PlasmaPurchase.java"

# interfaces
.implements Lcom/samsungapps/plasma/PlasmaListener;


# static fields
.field private static final ITEM_GROUP_ID:Ljava/lang/String; = "100000025751"

.field private static final ITEM_SUPERCAR:Ljava/lang/String; = "000000037583"

.field private static final ITEM_TRACKS_AND_CARS:Ljava/lang/String; = "000000037584"

.field private static final STATE_GET_ITEMS:I = 0x1

.field private static final STATE_GET_PURCHASES:I = 0x2

.field private static final STATE_PURCHASING:I = 0x4

.field private static final STATE_READY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DR2 - IAP-Plasma"

.field public static itemIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static itemNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Landroid/app/Activity;

.field private plasma:Lcom/samsungapps/plasma/Plasma;

.field private state:I

.field private transactionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lutil/purchase/samsung/PlasmaPurchase;->itemIds:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lutil/purchase/samsung/PlasmaPurchase;->itemNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lutil/purchase/samsung/PlasmaPurchase;->activity:Landroid/app/Activity;

    .line 49
    new-instance v4, Lcom/samsungapps/plasma/Plasma;

    const-string v5, "100000025751"

    invoke-direct {v4, v5, p1}, Lcom/samsungapps/plasma/Plasma;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v4, p0, Lutil/purchase/samsung/PlasmaPurchase;->plasma:Lcom/samsungapps/plasma/Plasma;

    .line 50
    iget-object v4, p0, Lutil/purchase/samsung/PlasmaPurchase;->plasma:Lcom/samsungapps/plasma/Plasma;

    invoke-virtual {v4, p0}, Lcom/samsungapps/plasma/Plasma;->setPlasmaListener(Lcom/samsungapps/plasma/PlasmaListener;)V

    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, useDeveloperFlag:Z
    const-string v5, "drawrace2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using Samsung Plasma IAP library"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_1

    const-string v4, "; developer flag is set"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz v3, :cond_0

    .line 56
    iget-object v4, p0, Lutil/purchase/samsung/PlasmaPurchase;->plasma:Lcom/samsungapps/plasma/Plasma;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsungapps/plasma/Plasma;->setDeveloperFlag(I)V

    .line 60
    :cond_0
    const-string v2, "com.chillingo.drawrace2.android.row"

    .line 61
    .local v2, packageName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".get_supercar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, nameSuperCar:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".unlock_all_tracks_and_cars"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, nameTracksCars:Ljava/lang/String;
    sget-object v4, Lutil/purchase/samsung/PlasmaPurchase;->itemIds:Ljava/util/Map;

    const-string v5, "000000037583"

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v4, Lutil/purchase/samsung/PlasmaPurchase;->itemNames:Ljava/util/Map;

    const-string v5, "000000037583"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v4, Lutil/purchase/samsung/PlasmaPurchase;->itemIds:Ljava/util/Map;

    const-string v5, "000000037584"

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v4, Lutil/purchase/samsung/PlasmaPurchase;->itemNames:Ljava/util/Map;

    const-string v5, "000000037584"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void

    .line 53
    .end local v0           #nameSuperCar:Ljava/lang/String;
    .end local v1           #nameTracksCars:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method static synthetic access$008(Lutil/purchase/samsung/PlasmaPurchase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->transactionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lutil/purchase/samsung/PlasmaPurchase;->transactionId:I

    return v0
.end method

.method static synthetic access$100(Lutil/purchase/samsung/PlasmaPurchase;)Lcom/samsungapps/plasma/Plasma;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->plasma:Lcom/samsungapps/plasma/Plasma;

    return-object v0
.end method

.method static synthetic access$200(Lutil/purchase/samsung/PlasmaPurchase;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getStatus(I)Ljava/lang/String;
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 116
    sparse-switch p1, :sswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 118
    :sswitch_0
    const-string v0, "STATUS_CODE_CANCEL (User cancel)"

    goto :goto_0

    .line 120
    :sswitch_1
    const-string v0, "STATUS_CODE_ITEMGROUPIDNOTFOUND"

    goto :goto_0

    .line 122
    :sswitch_2
    const-string v0, "STATUS_CODE_ITEMIDNOTFOUND"

    goto :goto_0

    .line 124
    :sswitch_3
    const-string v0, "STATUS_CODE_NETWORKERROR"

    goto :goto_0

    .line 126
    :sswitch_4
    const-string v0, "STATUS_CODE_PAYMENTIDNOTFOUND"

    goto :goto_0

    .line 128
    :sswitch_5
    const-string v0, "STATUS_CODE_PROCESSERROR"

    goto :goto_0

    .line 130
    :sswitch_6
    const-string v0, "STATUS_CODE_SERVICEUNAVAILABLE"

    goto :goto_0

    .line 132
    :sswitch_7
    const-string v0, "STATUS_CODE_SUCCESS (OK!)"

    goto :goto_0

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x2328 -> :sswitch_5
        0x23f0 -> :sswitch_6
        0x23f1 -> :sswitch_1
        0x23f3 -> :sswitch_4
        0x23f7 -> :sswitch_2
    .end sparse-switch
.end method

.method private purchasedItem(Ljava/lang/String;)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 201
    sget-object v1, Lutil/purchase/samsung/PlasmaPurchase;->itemNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    .local v0, productName:Ljava/lang/String;
    sget-object v1, Lutil/googleiap/DrawRace2Purchase;->smOwnedItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->onPurchase(Ljava/lang/String;)V

    .line 208
    return-void
.end method


# virtual methods
.method public onItemInformationListReceived(IILjava/util/ArrayList;)V
    .locals 3
    .parameter "transactionId"
    .parameter "statusCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsungapps/plasma/ItemInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p3, itemInformationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsungapps/plasma/ItemInformation;>;"
    if-nez p2, :cond_0

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 146
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsungapps/plasma/ItemInformation;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0           #i:I
    :cond_0
    iget v1, p0, Lutil/purchase/samsung/PlasmaPurchase;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 158
    invoke-virtual {p0}, Lutil/purchase/samsung/PlasmaPurchase;->requestPurchasedItems()V

    .line 160
    :cond_1
    return-void
.end method

.method public onPurchaseItemFinished(IILcom/samsungapps/plasma/PurchasedItemInformation;)V
    .locals 3
    .parameter "transactionId"
    .parameter "statusCode"
    .parameter "purchasedItemInformation"

    .prologue
    .line 168
    if-nez p2, :cond_0

    .line 169
    invoke-virtual {p3}, Lcom/samsungapps/plasma/PurchasedItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lutil/purchase/samsung/PlasmaPurchase;->purchasedItem(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->activity:Landroid/app/Activity;

    new-instance v1, Lutil/purchase/samsung/PlasmaPurchase$4;

    invoke-direct {v1, p0}, Lutil/purchase/samsung/PlasmaPurchase$4;-><init>(Lutil/purchase/samsung/PlasmaPurchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 176
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->purchaseCanceled()V

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "DR2 - IAP-Plasma"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samsung Plasma IAP failed with status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lutil/purchase/samsung/PlasmaPurchase;->getStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->purchaseErrorOccured()V

    goto :goto_0
.end method

.method public onPurchasedItemInformationListReceived(IILjava/util/ArrayList;)V
    .locals 4
    .parameter "transactionId"
    .parameter "statusCode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsungapps/plasma/PurchasedItemInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p3, purchasedItemInformationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsungapps/plasma/PurchasedItemInformation;>;"
    if-nez p2, :cond_0

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 191
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsungapps/plasma/PurchasedItemInformation;

    .line 192
    .local v1, purchasedItemInformation:Lcom/samsungapps/plasma/PurchasedItemInformation;
    invoke-virtual {v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lutil/purchase/samsung/PlasmaPurchase;->purchasedItem(Ljava/lang/String;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0           #i:I
    .end local v1           #purchasedItemInformation:Lcom/samsungapps/plasma/PurchasedItemInformation;
    :cond_0
    iget v2, p0, Lutil/purchase/samsung/PlasmaPurchase;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 196
    const/4 v2, 0x3

    iput v2, p0, Lutil/purchase/samsung/PlasmaPurchase;->state:I

    .line 198
    :cond_1
    return-void
.end method

.method public requestItemInformation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    iget v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->state:I

    if-eq v0, v1, :cond_0

    .line 75
    iput v1, p0, Lutil/purchase/samsung/PlasmaPurchase;->state:I

    .line 76
    iget-object v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->activity:Landroid/app/Activity;

    new-instance v1, Lutil/purchase/samsung/PlasmaPurchase$1;

    invoke-direct {v1, p0}, Lutil/purchase/samsung/PlasmaPurchase$1;-><init>(Lutil/purchase/samsung/PlasmaPurchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    return-void
.end method

.method public requestPurchaseItem(Ljava/lang/String;)V
    .locals 2
    .parameter "productId"

    .prologue
    .line 103
    const/4 v0, 0x4

    iput v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->state:I

    .line 104
    iget-object v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->activity:Landroid/app/Activity;

    new-instance v1, Lutil/purchase/samsung/PlasmaPurchase$3;

    invoke-direct {v1, p0, p1}, Lutil/purchase/samsung/PlasmaPurchase$3;-><init>(Lutil/purchase/samsung/PlasmaPurchase;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public requestPurchasedItems()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 88
    iget v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->state:I

    if-eq v0, v1, :cond_0

    .line 89
    iput v1, p0, Lutil/purchase/samsung/PlasmaPurchase;->state:I

    .line 90
    iget-object v0, p0, Lutil/purchase/samsung/PlasmaPurchase;->activity:Landroid/app/Activity;

    new-instance v1, Lutil/purchase/samsung/PlasmaPurchase$2;

    invoke-direct {v1, p0}, Lutil/purchase/samsung/PlasmaPurchase$2;-><init>(Lutil/purchase/samsung/PlasmaPurchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    :cond_0
    return-void
.end method
