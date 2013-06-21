.class Lcom/urbanairship/iap/Inventory$InventoryObservable;
.super Ljava/util/Observable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/Inventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InventoryObservable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/iap/Inventory;


# direct methods
.method private constructor <init>(Lcom/urbanairship/iap/Inventory;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/Inventory$InventoryObservable;->this$0:Lcom/urbanairship/iap/Inventory;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/iap/Inventory;Lcom/urbanairship/iap/Inventory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/Inventory$InventoryObservable;-><init>(Lcom/urbanairship/iap/Inventory;)V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/urbanairship/iap/Inventory$InventoryObservable;->setChanged()V

    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
