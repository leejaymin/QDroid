.class public Lutil/googleiap/DrawRace2Purchase;
.super Ljava/lang/Object;
.source "DrawRace2Purchase.java"


# static fields
.field private static final INAPP_BILLING_TEMP_TEST:Z = false

.field private static final TOAST_BILLING_NOT_SUPPORTED_ID:I = 0x7f080329

.field private static final TOAST_CANNOT_CONNECT_ID:I = 0x7f08032a

.field private static final TOAST_ERROR_OCCURED:I = 0x7f08032b

.field private static final TOAST_PURCHASE_CANCELED:I = 0x7f08032c

.field private static doCreate:Z

.field private static initialized:Z

.field private static smActivity:Landroid/app/Activity;

.field private static smBillingService:Lutil/googleiap/BillingService;

.field private static smDialogButtonCancel:Ljava/lang/String;

.field private static smDialogButtonOK:Ljava/lang/String;

.field private static smDialogMsg:Ljava/lang/String;

.field private static smDialogTitle:Ljava/lang/String;

.field private static smHandler:Landroid/os/Handler;

.field private static smInappPurchaseObserver:Lutil/googleiap/InappPurchaseObserver;

.field public static smOwnedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static smOwnedItemsCursor:Landroid/database/Cursor;

.field private static smProductId:Ljava/lang/String;

.field private static smPurchaseDatabase:Lutil/googleiap/PurchaseDatabase;

.field private static supported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sput-boolean v1, Lutil/googleiap/DrawRace2Purchase;->supported:Z

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lutil/googleiap/DrawRace2Purchase;->smOwnedItems:Ljava/util/Set;

    .line 51
    sput-boolean v1, Lutil/googleiap/DrawRace2Purchase;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-object p0, Lutil/googleiap/DrawRace2Purchase;->smHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Lutil/googleiap/InappPurchaseObserver;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smInappPurchaseObserver:Lutil/googleiap/InappPurchaseObserver;

    return-object v0
.end method

.method static synthetic access$102(Lutil/googleiap/InappPurchaseObserver;)Lutil/googleiap/InappPurchaseObserver;
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-object p0, Lutil/googleiap/DrawRace2Purchase;->smInappPurchaseObserver:Lutil/googleiap/InappPurchaseObserver;

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Lutil/googleiap/BillingService;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smBillingService:Lutil/googleiap/BillingService;

    return-object v0
.end method

.method static synthetic access$302(Lutil/googleiap/BillingService;)Lutil/googleiap/BillingService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-object p0, Lutil/googleiap/DrawRace2Purchase;->smBillingService:Lutil/googleiap/BillingService;

    return-object p0
.end method

.method static synthetic access$400()Lutil/googleiap/PurchaseDatabase;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smPurchaseDatabase:Lutil/googleiap/PurchaseDatabase;

    return-object v0
.end method

.method static synthetic access$402(Lutil/googleiap/PurchaseDatabase;)Lutil/googleiap/PurchaseDatabase;
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-object p0, Lutil/googleiap/DrawRace2Purchase;->smPurchaseDatabase:Lutil/googleiap/PurchaseDatabase;

    return-object p0
.end method

.method static synthetic access$500()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smOwnedItemsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-object p0, Lutil/googleiap/DrawRace2Purchase;->smOwnedItemsCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lutil/googleiap/DrawRace2Purchase;->supported:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-boolean p0, Lutil/googleiap/DrawRace2Purchase;->supported:Z

    return p0
.end method

.method static synthetic access$700(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lutil/googleiap/DrawRace2Purchase;->toast(I)V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->initializeOwnedItems()V

    return-void
.end method

.method static synthetic access$900()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->doInitializeOwnedItems()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lutil/googleiap/DrawRace2Purchase;->initialized:Z

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smPurchaseDatabase:Lutil/googleiap/PurchaseDatabase;

    invoke-virtual {v0}, Lutil/googleiap/PurchaseDatabase;->close()V

    .line 113
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smBillingService:Lutil/googleiap/BillingService;

    invoke-virtual {v0}, Lutil/googleiap/BillingService;->unbind()V

    .line 116
    :cond_0
    return-void
.end method

.method private static doInitializeOwnedItems()V
    .locals 6

    .prologue
    .line 321
    sget-object v4, Lutil/googleiap/DrawRace2Purchase;->smPurchaseDatabase:Lutil/googleiap/PurchaseDatabase;

    invoke-virtual {v4}, Lutil/googleiap/PurchaseDatabase;->queryAllPurchasedItems()Landroid/database/Cursor;

    move-result-object v0

    .line 322
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 326
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 328
    .local v1, ownedItems:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 329
    .local v3, productIdCol:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, productId:Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 334
    .end local v2           #productId:Ljava/lang/String;
    .end local v3           #productIdCol:I
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .restart local v3       #productIdCol:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 336
    sget-object v4, Lutil/googleiap/DrawRace2Purchase;->smHandler:Landroid/os/Handler;

    new-instance v5, Lutil/googleiap/DrawRace2Purchase$6;

    invoke-direct {v5, v1}, Lutil/googleiap/DrawRace2Purchase$6;-><init>(Ljava/util/Set;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getDialogMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smDialogMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static getDialogNegativeButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smDialogButtonCancel:Ljava/lang/String;

    return-object v0
.end method

.method public static getDialogPositiveButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smDialogButtonOK:Ljava/lang/String;

    return-object v0
.end method

.method public static getDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 63
    sget-boolean v0, Lutil/googleiap/DrawRace2Purchase;->doCreate:Z

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smActivity:Landroid/app/Activity;

    new-instance v1, Lutil/googleiap/DrawRace2Purchase$1;

    invoke-direct {v1}, Lutil/googleiap/DrawRace2Purchase$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lutil/googleiap/DrawRace2Purchase;->doCreate:Z

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lutil/googleiap/DrawRace2Purchase;->initialized:Z

    .line 90
    :cond_0
    return-void
.end method

.method private static initializeOwnedItems()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lutil/googleiap/DrawRace2Purchase$5;

    invoke-direct {v1}, Lutil/googleiap/DrawRace2Purchase$5;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 309
    return-void
.end method

.method public static isPayPerDownloadBuild()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public static isProductPurchased(Ljava/lang/String;)Z
    .locals 1
    .parameter "productId"

    .prologue
    .line 166
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smOwnedItems:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 250
    sget-boolean v0, Lutil/googleiap/DrawRace2Purchase;->supported:Z

    return v0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 54
    sput-object p0, Lutil/googleiap/DrawRace2Purchase;->smActivity:Landroid/app/Activity;

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lutil/googleiap/DrawRace2Purchase;->doCreate:Z

    .line 56
    return-void
.end method

.method public static native onPurchase(Ljava/lang/String;)V
.end method

.method public static productPurchased(Ljava/lang/String;)V
    .locals 2
    .parameter "productId"

    .prologue
    .line 207
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smOwnedItems:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smOwnedItemsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 209
    invoke-static {p0}, Lutil/googleiap/DrawRace2Purchase;->onPurchase(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smActivity:Landroid/app/Activity;

    new-instance v1, Lutil/googleiap/DrawRace2Purchase$3;

    invoke-direct {v1}, Lutil/googleiap/DrawRace2Purchase$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public static productRefunded(Ljava/lang/String;)V
    .locals 0
    .parameter "productId"

    .prologue
    .line 230
    return-void
.end method

.method public static purchaseCanceled()V
    .locals 1

    .prologue
    .line 234
    const v0, 0x7f08032c

    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->toast(I)V

    .line 236
    return-void
.end method

.method public static purchaseErrorOccured()V
    .locals 1

    .prologue
    .line 240
    const v0, 0x7f08032b

    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->toast(I)V

    .line 242
    return-void
.end method

.method public static purchaseProduct()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    const v1, 0x7f080329

    invoke-static {v1}, Lutil/googleiap/DrawRace2Purchase;->toast(I)V

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    sget-object v1, Lutil/googleiap/DrawRace2Purchase;->smBillingService:Lutil/googleiap/BillingService;

    sget-object v2, Lutil/googleiap/DrawRace2Purchase;->smProductId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lutil/googleiap/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static restart()V
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lutil/googleiap/DrawRace2Purchase;->initialized:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smInappPurchaseObserver:Lutil/googleiap/InappPurchaseObserver;

    invoke-static {v0}, Lutil/googleiap/ResponseHandler;->register(Lutil/googleiap/PurchaseObserver;)V

    .line 96
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->initializeOwnedItems()V

    .line 99
    :cond_0
    return-void
.end method

.method public static restoreDatabase()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    sget-object v2, Lutil/googleiap/DrawRace2Purchase;->smActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "db_initialized"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 288
    .local v0, initialized:Z
    if-nez v0, :cond_0

    .line 289
    sget-object v2, Lutil/googleiap/DrawRace2Purchase;->smBillingService:Lutil/googleiap/BillingService;

    invoke-virtual {v2}, Lutil/googleiap/BillingService;->restoreTransactions()Z

    .line 295
    :cond_0
    return-void
.end method

.method public static setPurchasingProduct(Ljava/lang/String;)V
    .locals 0
    .parameter "productId"

    .prologue
    .line 156
    sput-object p0, Lutil/googleiap/DrawRace2Purchase;->smProductId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public static showConfirmationDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "msg"
    .parameter "ok"
    .parameter "cancel"

    .prologue
    .line 126
    sput-object p0, Lutil/googleiap/DrawRace2Purchase;->smDialogTitle:Ljava/lang/String;

    .line 127
    sput-object p1, Lutil/googleiap/DrawRace2Purchase;->smDialogMsg:Ljava/lang/String;

    .line 128
    sput-object p2, Lutil/googleiap/DrawRace2Purchase;->smDialogButtonOK:Ljava/lang/String;

    .line 129
    sput-object p3, Lutil/googleiap/DrawRace2Purchase;->smDialogButtonCancel:Ljava/lang/String;

    .line 130
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smActivity:Landroid/app/Activity;

    new-instance v1, Lutil/googleiap/DrawRace2Purchase$2;

    invoke-direct {v1}, Lutil/googleiap/DrawRace2Purchase$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lutil/googleiap/DrawRace2Purchase;->initialized:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smInappPurchaseObserver:Lutil/googleiap/InappPurchaseObserver;

    invoke-static {v0}, Lutil/googleiap/ResponseHandler;->unregister(Lutil/googleiap/PurchaseObserver;)V

    .line 107
    :cond_0
    return-void
.end method

.method private static toast(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 268
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    return-void
.end method

.method public static toastNotSupported()V
    .locals 1

    .prologue
    .line 262
    const v0, 0x7f080329

    invoke-static {v0}, Lutil/googleiap/DrawRace2Purchase;->toast(I)V

    .line 264
    return-void
.end method
