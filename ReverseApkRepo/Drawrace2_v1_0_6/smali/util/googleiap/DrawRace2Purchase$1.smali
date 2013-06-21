.class final Lutil/googleiap/DrawRace2Purchase$1;
.super Ljava/lang/Object;
.source "DrawRace2Purchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutil/googleiap/DrawRace2Purchase;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->access$002(Landroid/os/Handler;)Landroid/os/Handler;

    .line 67
    new-instance v0, Lutil/googleiap/InappPurchaseObserver;

    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$000()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$200()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lutil/googleiap/InappPurchaseObserver;-><init>(Landroid/os/Handler;Landroid/app/Activity;)V

    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->access$102(Lutil/googleiap/InappPurchaseObserver;)Lutil/googleiap/InappPurchaseObserver;

    .line 68
    new-instance v0, Lutil/googleiap/BillingService;

    invoke-direct {v0}, Lutil/googleiap/BillingService;-><init>()V

    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->access$302(Lutil/googleiap/BillingService;)Lutil/googleiap/BillingService;

    .line 69
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$300()Lutil/googleiap/BillingService;

    move-result-object v0

    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$200()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lutil/googleiap/BillingService;->setContext(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lutil/googleiap/PurchaseDatabase;

    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$200()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lutil/googleiap/PurchaseDatabase;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->access$402(Lutil/googleiap/PurchaseDatabase;)Lutil/googleiap/PurchaseDatabase;

    .line 72
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$400()Lutil/googleiap/PurchaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lutil/googleiap/PurchaseDatabase;->queryAllPurchasedItems()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->access$502(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 73
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$200()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$500()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 75
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$100()Lutil/googleiap/InappPurchaseObserver;

    move-result-object v0

    invoke-static {v0}, Lutil/googleiap/ResponseHandler;->register(Lutil/googleiap/PurchaseObserver;)V

    .line 76
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$300()Lutil/googleiap/BillingService;

    move-result-object v0

    invoke-virtual {v0}, Lutil/googleiap/BillingService;->checkBillingSupported()Z

    move-result v0

    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->access$602(Z)Z

    .line 77
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$600()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const v0, 0x7f08032a

    #calls: Lutil/googleiap/DrawRace2Purchase;->toast(I)V
    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->access$700(I)V

    .line 80
    :cond_0
    #calls: Lutil/googleiap/DrawRace2Purchase;->initializeOwnedItems()V
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$800()V

    .line 81
    return-void
.end method
