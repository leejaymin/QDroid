.class Lcom/urbanairship/iap/Product$ProductObservable;
.super Ljava/util/Observable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProductObservable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/iap/Product;


# direct methods
.method private constructor <init>(Lcom/urbanairship/iap/Product;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/Product$ProductObservable;->this$0:Lcom/urbanairship/iap/Product;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/iap/Product;Lcom/urbanairship/iap/Product$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/iap/Product$ProductObservable;-><init>(Lcom/urbanairship/iap/Product;)V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/urbanairship/iap/Product$ProductObservable;->setChanged()V

    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
