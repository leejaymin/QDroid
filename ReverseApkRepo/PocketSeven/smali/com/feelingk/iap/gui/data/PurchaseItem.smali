.class public Lcom/feelingk/iap/gui/data/PurchaseItem;
.super Ljava/lang/Object;
.source "PurchaseItem.java"


# instance fields
.field public AfterAutoPurchaseInfoAgree:Z

.field public AutoPurchaseCheck:Z

.field public FinalVersionCheck:Z

.field public bUseTCash:Z

.field public itemName:Ljava/lang/String;

.field public itemPrice:I

.field public itemPurchasePrice:I

.field public itemTCash:I

.field public itemUseDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZZZZ)V
    .locals 0
    .parameter "name"
    .parameter "date"
    .parameter "price"
    .parameter "cash"
    .parameter "purchasePrice"
    .parameter "useTCash"
    .parameter "finalVersionCheck"
    .parameter "autoPurchaseCheck"
    .parameter "afterAutoPurchaseInfoAgree"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemUseDate:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    .line 20
    iput p4, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    .line 21
    iput p5, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPurchasePrice:I

    .line 22
    iput-boolean p6, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->bUseTCash:Z

    .line 23
    iput-boolean p7, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->FinalVersionCheck:Z

    .line 24
    iput-boolean p8, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    .line 25
    iput-boolean p9, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    .line 26
    return-void
.end method
