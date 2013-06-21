.class public Lnet/robotmedia/billing/BillingController;
.super Ljava/lang/Object;
.source "BillingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/robotmedia/billing/BillingController$BillingStatus;,
        Lnet/robotmedia/billing/BillingController$IConfiguration;
    }
.end annotation


# static fields
.field private static final JSON_NONCE:Ljava/lang/String; = "nonce"

.field private static final JSON_ORDERS:Ljava/lang/String; = "orders"

.field public static final LOG_TAG:Ljava/lang/String; = "Billing"

.field private static automaticConfirmations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;

.field private static debug:Z

.field private static manualConfirmations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lnet/robotmedia/billing/IBillingObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static pendingRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lnet/robotmedia/billing/BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static status:Lnet/robotmedia/billing/BillingController$BillingStatus;

.field private static validator:Lnet/robotmedia/billing/security/ISignatureValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    sget-object v0, Lnet/robotmedia/billing/BillingController$BillingStatus;->UNKNOWN:Lnet/robotmedia/billing/BillingController$BillingStatus;

    sput-object v0, Lnet/robotmedia/billing/BillingController;->status:Lnet/robotmedia/billing/BillingController$BillingStatus;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/robotmedia/billing/BillingController;->automaticConfirmations:Ljava/util/Set;

    .line 73
    sput-object v1, Lnet/robotmedia/billing/BillingController;->configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lnet/robotmedia/billing/BillingController;->debug:Z

    .line 75
    sput-object v1, Lnet/robotmedia/billing/BillingController;->validator:Lnet/robotmedia/billing/security/ISignatureValidator;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/robotmedia/billing/BillingController;->manualConfirmations:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/robotmedia/billing/BillingController;->observers:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/robotmedia/billing/BillingController;->pendingRequests:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addManualConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "itemId"
    .parameter "notificationId"

    .prologue
    .line 97
    sget-object v1, Lnet/robotmedia/billing/BillingController;->manualConfirmations:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 98
    .local v0, notifications:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #notifications:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    .restart local v0       #notifications:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lnet/robotmedia/billing/BillingController;->manualConfirmations:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public static checkBillingSupported(Landroid/content/Context;)Lnet/robotmedia/billing/BillingController$BillingStatus;
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    sget-object v0, Lnet/robotmedia/billing/BillingController;->status:Lnet/robotmedia/billing/BillingController$BillingStatus;

    sget-object v1, Lnet/robotmedia/billing/BillingController$BillingStatus;->UNKNOWN:Lnet/robotmedia/billing/BillingController$BillingStatus;

    if-ne v0, v1, :cond_0

    .line 116
    invoke-static {p0}, Lnet/robotmedia/billing/BillingService;->checkBillingSupported(Landroid/content/Context;)V

    .line 118
    :cond_0
    sget-object v0, Lnet/robotmedia/billing/BillingController;->status:Lnet/robotmedia/billing/BillingController$BillingStatus;

    return-object v0
.end method

.method private static confirmNotifications(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "notifyIds"

    .prologue
    .line 148
    invoke-static {p0, p1}, Lnet/robotmedia/billing/BillingService;->confirmNotifications(Landroid/content/Context;[Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static confirmNotifications(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "itemId"

    .prologue
    const/4 v1, 0x0

    .line 131
    sget-object v2, Lnet/robotmedia/billing/BillingController;->manualConfirmations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 132
    .local v0, notifications:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 133
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v1}, Lnet/robotmedia/billing/BillingController;->confirmNotifications(Landroid/content/Context;[Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x1

    .line 136
    :cond_0
    return v1
.end method

.method public static countPurchases(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "itemId"

    .prologue
    .line 162
    invoke-static {}, Lnet/robotmedia/billing/BillingController;->getSalt()[B

    move-result-object v0

    .line 163
    .local v0, salt:[B
    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Lnet/robotmedia/billing/utils/Security;->obfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_0
    invoke-static {p0, p1}, Lnet/robotmedia/billing/model/TransactionManager;->countPurchases(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method protected static debug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 168
    sget-boolean v0, Lnet/robotmedia/billing/BillingController;->debug:Z

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "Billing"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void
.end method

.method private static getPurchaseInformation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "notifyId"

    .prologue
    .line 186
    invoke-static {}, Lnet/robotmedia/billing/utils/Security;->generateNonce()J

    move-result-wide v0

    .line 187
    .local v0, nonce:J
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v2, v0, v1}, Lnet/robotmedia/billing/BillingService;->getPurchaseInformation(Landroid/content/Context;[Ljava/lang/String;J)V

    .line 188
    return-void
.end method

.method private static getSalt()[B
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    check-cast v0, [B

    .line 197
    .local v0, salt:[B
    sget-object v1, Lnet/robotmedia/billing/BillingController;->configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/robotmedia/billing/BillingController;->configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;

    invoke-interface {v1}, Lnet/robotmedia/billing/BillingController$IConfiguration;->getObfuscationSalt()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    const-string v1, "Billing"

    const-string v2, "Can\'t (un)obfuscate purchases without salt"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    return-object v0
.end method

.method public static getTransactions(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/robotmedia/billing/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p0}, Lnet/robotmedia/billing/model/TransactionManager;->getTransactions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, transactions:Ljava/util/List;,"Ljava/util/List<Lnet/robotmedia/billing/model/Transaction;>;"
    invoke-static {p0, v0}, Lnet/robotmedia/billing/BillingController;->unobfuscate(Landroid/content/Context;Ljava/util/List;)V

    .line 213
    return-object v0
.end method

.method public static getTransactions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/robotmedia/billing/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lnet/robotmedia/billing/BillingController;->getSalt()[B

    move-result-object v0

    .line 226
    .local v0, salt:[B
    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Lnet/robotmedia/billing/utils/Security;->obfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    :cond_0
    invoke-static {p0, p1}, Lnet/robotmedia/billing/model/TransactionManager;->getTransactions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 228
    .local v1, transactions:Ljava/util/List;,"Ljava/util/List<Lnet/robotmedia/billing/model/Transaction;>;"
    invoke-static {p0, v1}, Lnet/robotmedia/billing/BillingController;->unobfuscate(Landroid/content/Context;Ljava/util/List;)V

    .line 229
    return-object v1
.end method

.method public static isPurchased(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "itemId"

    .prologue
    .line 244
    invoke-static {}, Lnet/robotmedia/billing/BillingController;->getSalt()[B

    move-result-object v0

    .line 245
    .local v0, salt:[B
    if-eqz v0, :cond_0

    invoke-static {p0, v0, p1}, Lnet/robotmedia/billing/utils/Security;->obfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    :cond_0
    invoke-static {p0, p1}, Lnet/robotmedia/billing/model/TransactionManager;->isPurchased(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static notifyPurchaseStateChange(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V
    .locals 3
    .parameter "itemId"
    .parameter "state"

    .prologue
    .line 258
    sget-object v1, Lnet/robotmedia/billing/BillingController;->observers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    return-void

    .line 258
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/IBillingObserver;

    .line 259
    .local v0, o:Lnet/robotmedia/billing/IBillingObserver;
    invoke-interface {v0, p0, p1}, Lnet/robotmedia/billing/IBillingObserver;->onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V

    goto :goto_0
.end method

.method static obfuscate(Landroid/content/Context;Lnet/robotmedia/billing/model/Transaction;)V
    .locals 2
    .parameter "context"
    .parameter "purchase"

    .prologue
    .line 273
    invoke-static {}, Lnet/robotmedia/billing/BillingController;->getSalt()[B

    move-result-object v0

    .line 274
    .local v0, salt:[B
    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lnet/robotmedia/billing/utils/Security;->obfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    .line 278
    iget-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lnet/robotmedia/billing/utils/Security;->obfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    .line 279
    iget-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lnet/robotmedia/billing/utils/Security;->obfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static onBillingChecked(Z)V
    .locals 3
    .parameter "supported"

    .prologue
    .line 290
    if-eqz p0, :cond_0

    sget-object v1, Lnet/robotmedia/billing/BillingController$BillingStatus;->SUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

    :goto_0
    sput-object v1, Lnet/robotmedia/billing/BillingController;->status:Lnet/robotmedia/billing/BillingController$BillingStatus;

    .line 291
    sget-object v1, Lnet/robotmedia/billing/BillingController;->observers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    return-void

    .line 290
    :cond_0
    sget-object v1, Lnet/robotmedia/billing/BillingController$BillingStatus;->UNSUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

    goto :goto_0

    .line 291
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/IBillingObserver;

    .line 292
    .local v0, o:Lnet/robotmedia/billing/IBillingObserver;
    invoke-interface {v0, p0}, Lnet/robotmedia/billing/IBillingObserver;->onBillingChecked(Z)V

    goto :goto_1
.end method

.method protected static onNotify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "notifyId"

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notification "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->debug(Ljava/lang/String;)V

    .line 306
    invoke-static {p0, p1}, Lnet/robotmedia/billing/BillingController;->getPurchaseInformation(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method protected static onPurchaseIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "itemId"
    .parameter "purchaseIntent"

    .prologue
    .line 320
    sget-object v1, Lnet/robotmedia/billing/BillingController;->observers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    return-void

    .line 320
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/IBillingObserver;

    .line 321
    .local v0, o:Lnet/robotmedia/billing/IBillingObserver;
    invoke-interface {v0, p0, p1}, Lnet/robotmedia/billing/IBillingObserver;->onPurchaseIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected static onPurchaseStateChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    .line 338
    const-string v7, "Purchase state changed"

    invoke-static {v7}, Lnet/robotmedia/billing/BillingController;->debug(Ljava/lang/String;)V

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 341
    const-string v7, "Billing"

    const-string v8, "Signed data is empty"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    sget-boolean v7, Lnet/robotmedia/billing/BillingController;->debug:Z

    if-nez v7, :cond_4

    .line 346
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 347
    const-string v7, "Billing"

    const-string v8, "Empty signature requires debug mode"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_2
    sget-object v7, Lnet/robotmedia/billing/BillingController;->validator:Lnet/robotmedia/billing/security/ISignatureValidator;

    if-eqz v7, :cond_3

    sget-object v6, Lnet/robotmedia/billing/BillingController;->validator:Lnet/robotmedia/billing/security/ISignatureValidator;

    .line 352
    .local v6, validator:Lnet/robotmedia/billing/security/ISignatureValidator;
    :goto_1
    invoke-interface {v6, p1, p2}, Lnet/robotmedia/billing/security/ISignatureValidator;->validate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 353
    const-string v7, "Billing"

    const-string v8, "Signature does not match data."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    .end local v6           #validator:Lnet/robotmedia/billing/security/ISignatureValidator;
    :cond_3
    new-instance v6, Lnet/robotmedia/billing/security/DefaultSignatureValidator;

    sget-object v7, Lnet/robotmedia/billing/BillingController;->configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;

    invoke-direct {v6, v7}, Lnet/robotmedia/billing/security/DefaultSignatureValidator;-><init>(Lnet/robotmedia/billing/BillingController$IConfiguration;)V

    goto :goto_1

    .line 360
    :cond_4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, jObject:Lorg/json/JSONObject;
    invoke-static {v2}, Lnet/robotmedia/billing/BillingController;->verifyNonce(Lorg/json/JSONObject;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 362
    const-string v7, "Billing"

    const-string v8, "Invalid nonce"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    .end local v2           #jObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 367
    .local v1, e:Lorg/json/JSONException;
    const-string v7, "Billing"

    const-string v8, "JSON exception: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 365
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #jObject:Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    invoke-static {v2}, Lnet/robotmedia/billing/BillingController;->parsePurchases(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 371
    .local v5, purchases:Ljava/util/List;,"Ljava/util/List<Lnet/robotmedia/billing/model/Transaction;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, confirmations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 384
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 385
    .local v3, notifyIds:[Ljava/lang/String;
    invoke-static {p0, v3}, Lnet/robotmedia/billing/BillingController;->confirmNotifications(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 372
    .end local v3           #notifyIds:[Ljava/lang/String;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/robotmedia/billing/model/Transaction;

    .line 373
    .local v4, p:Lnet/robotmedia/billing/model/Transaction;
    iget-object v8, v4, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    if-eqz v8, :cond_7

    sget-object v8, Lnet/robotmedia/billing/BillingController;->automaticConfirmations:Ljava/util/Set;

    iget-object v9, v4, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 374
    iget-object v8, v4, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :goto_3
    invoke-static {p0, v4}, Lnet/robotmedia/billing/BillingController;->storeTransaction(Landroid/content/Context;Lnet/robotmedia/billing/model/Transaction;)V

    .line 381
    iget-object v8, v4, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    iget-object v9, v4, Lnet/robotmedia/billing/model/Transaction;->purchaseState:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    invoke-static {v8, v9}, Lnet/robotmedia/billing/BillingController;->notifyPurchaseStateChange(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V

    goto :goto_2

    .line 378
    :cond_7
    iget-object v8, v4, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    iget-object v9, v4, Lnet/robotmedia/billing/model/Transaction;->notificationId:Ljava/lang/String;

    invoke-static {v8, v9}, Lnet/robotmedia/billing/BillingController;->addManualConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected static onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 3
    .parameter "itemId"
    .parameter "response"

    .prologue
    .line 627
    sget-object v1, Lnet/robotmedia/billing/BillingController;->observers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    return-void

    .line 627
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/IBillingObserver;

    .line 628
    .local v0, o:Lnet/robotmedia/billing/IBillingObserver;
    invoke-interface {v0, p0, p1}, Lnet/robotmedia/billing/IBillingObserver;->onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V

    goto :goto_0
.end method

.method protected static onRequestSent(JLnet/robotmedia/billing/BillingRequest;)V
    .locals 2
    .parameter "requestId"
    .parameter "request"

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lnet/robotmedia/billing/BillingRequest;->getRequestType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->debug(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Lnet/robotmedia/billing/BillingRequest;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    sget-object v0, Lnet/robotmedia/billing/BillingController;->pendingRequests:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p2}, Lnet/robotmedia/billing/BillingRequest;->hasNonce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p2}, Lnet/robotmedia/billing/BillingRequest;->getNonce()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/robotmedia/billing/utils/Security;->removeNonce(J)V

    goto :goto_0
.end method

.method protected static onResponseCode(Landroid/content/Context;JI)V
    .locals 4
    .parameter "context"
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    .line 420
    invoke-static {p3}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->valueOf(I)Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    move-result-object v1

    .line 421
    .local v1, response:Lnet/robotmedia/billing/BillingRequest$ResponseCode;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/robotmedia/billing/BillingController;->debug(Ljava/lang/String;)V

    .line 423
    sget-object v2, Lnet/robotmedia/billing/BillingController;->pendingRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/BillingRequest;

    .line 424
    .local v0, request:Lnet/robotmedia/billing/BillingRequest;
    if-eqz v0, :cond_0

    .line 425
    sget-object v2, Lnet/robotmedia/billing/BillingController;->pendingRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {v0, v1}, Lnet/robotmedia/billing/BillingRequest;->onResponseCode(Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V

    .line 428
    :cond_0
    return-void
.end method

.method protected static onTransactionsRestored()V
    .locals 3

    .prologue
    .line 431
    sget-object v1, Lnet/robotmedia/billing/BillingController;->observers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, o:Lnet/robotmedia/billing/IBillingObserver;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    return-void

    .line 431
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #o:Lnet/robotmedia/billing/IBillingObserver;
    check-cast v0, Lnet/robotmedia/billing/IBillingObserver;

    .line 432
    .restart local v0       #o:Lnet/robotmedia/billing/IBillingObserver;
    invoke-interface {v0}, Lnet/robotmedia/billing/IBillingObserver;->onTransactionsRestored()V

    goto :goto_0
.end method

.method private static parsePurchases(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/robotmedia/billing/model/Transaction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 447
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v5, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lnet/robotmedia/billing/model/Transaction;>;"
    const-string v6, "orders"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 449
    .local v3, orders:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 450
    .local v2, numTransactions:I
    if-eqz v3, :cond_0

    .line 451
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 453
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 458
    return-object v5

    .line 454
    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 455
    .local v1, jElement:Lorg/json/JSONObject;
    invoke-static {v1}, Lnet/robotmedia/billing/model/Transaction;->parse(Lorg/json/JSONObject;)Lnet/robotmedia/billing/model/Transaction;

    move-result-object v4

    .line 456
    .local v4, p:Lnet/robotmedia/billing/model/Transaction;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static registerObserver(Lnet/robotmedia/billing/IBillingObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 471
    sget-object v0, Lnet/robotmedia/billing/BillingController;->observers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static requestPurchase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "itemId"

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/robotmedia/billing/BillingController;->requestPurchase(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 485
    return-void
.end method

.method public static requestPurchase(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "itemId"
    .parameter "confirm"

    .prologue
    .line 501
    if-eqz p2, :cond_0

    .line 502
    sget-object v0, Lnet/robotmedia/billing/BillingController;->automaticConfirmations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/robotmedia/billing/BillingService;->requestPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public static restoreTransactions(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 513
    invoke-static {}, Lnet/robotmedia/billing/utils/Security;->generateNonce()J

    move-result-wide v0

    .line 514
    .local v0, nonce:J
    invoke-static {p0, v0, v1}, Lnet/robotmedia/billing/BillingService;->restoreTransations(Landroid/content/Context;J)V

    .line 515
    return-void
.end method

.method public static setConfiguration(Lnet/robotmedia/billing/BillingController$IConfiguration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 524
    sput-object p0, Lnet/robotmedia/billing/BillingController;->configuration:Lnet/robotmedia/billing/BillingController$IConfiguration;

    .line 525
    return-void
.end method

.method public static final setDebug(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 533
    sput-boolean p0, Lnet/robotmedia/billing/BillingController;->debug:Z

    .line 534
    return-void
.end method

.method public static setSignatureValidator(Lnet/robotmedia/billing/security/ISignatureValidator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 546
    sput-object p0, Lnet/robotmedia/billing/BillingController;->validator:Lnet/robotmedia/billing/security/ISignatureValidator;

    .line 547
    return-void
.end method

.method public static startPurchaseIntent(Landroid/app/Activity;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3
    .parameter "activity"
    .parameter "purchaseIntent"
    .parameter "intent"

    .prologue
    .line 558
    invoke-static {}, Lnet/robotmedia/billing/utils/Compatibility;->isStartIntentSenderSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lnet/robotmedia/billing/utils/Compatibility;->startIntentSender(Landroid/app/Activity;Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 572
    :goto_0
    return-void

    .line 567
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "Billing"

    const-string v2, "Error starting purchase intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static storeTransaction(Landroid/content/Context;Lnet/robotmedia/billing/model/Transaction;)V
    .locals 1
    .parameter "context"
    .parameter "t"

    .prologue
    .line 575
    invoke-virtual {p1}, Lnet/robotmedia/billing/model/Transaction;->clone()Lnet/robotmedia/billing/model/Transaction;

    move-result-object v0

    .line 576
    .local v0, t2:Lnet/robotmedia/billing/model/Transaction;
    invoke-static {p0, v0}, Lnet/robotmedia/billing/BillingController;->obfuscate(Landroid/content/Context;Lnet/robotmedia/billing/model/Transaction;)V

    .line 577
    invoke-static {p0, v0}, Lnet/robotmedia/billing/model/TransactionManager;->addTransaction(Landroid/content/Context;Lnet/robotmedia/billing/model/Transaction;)V

    .line 578
    return-void
.end method

.method static unobfuscate(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/robotmedia/billing/model/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p1, transactions:Ljava/util/List;,"Ljava/util/List<Lnet/robotmedia/billing/model/Transaction;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 584
    return-void

    .line 581
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/model/Transaction;

    .line 582
    .local v0, p:Lnet/robotmedia/billing/model/Transaction;
    invoke-static {p0, v0}, Lnet/robotmedia/billing/BillingController;->unobfuscate(Landroid/content/Context;Lnet/robotmedia/billing/model/Transaction;)V

    goto :goto_0
.end method

.method static unobfuscate(Landroid/content/Context;Lnet/robotmedia/billing/model/Transaction;)V
    .locals 2
    .parameter "context"
    .parameter "purchase"

    .prologue
    .line 595
    invoke-static {}, Lnet/robotmedia/billing/BillingController;->getSalt()[B

    move-result-object v0

    .line 596
    .local v0, salt:[B
    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lnet/robotmedia/billing/utils/Security;->unobfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->orderId:Ljava/lang/String;

    .line 600
    iget-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lnet/robotmedia/billing/utils/Security;->unobfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->productId:Ljava/lang/String;

    .line 601
    iget-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lnet/robotmedia/billing/utils/Security;->unobfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lnet/robotmedia/billing/model/Transaction;->developerPayload:Ljava/lang/String;

    goto :goto_0
.end method

.method public static unregisterObserver(Lnet/robotmedia/billing/IBillingObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 613
    sget-object v0, Lnet/robotmedia/billing/BillingController;->observers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static verifyNonce(Lorg/json/JSONObject;)Z
    .locals 3
    .parameter "data"

    .prologue
    .line 617
    const-string v2, "nonce"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 618
    .local v0, nonce:J
    invoke-static {v0, v1}, Lnet/robotmedia/billing/utils/Security;->isNonceKnown(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    invoke-static {v0, v1}, Lnet/robotmedia/billing/utils/Security;->removeNonce(J)V

    .line 620
    const/4 v2, 0x1

    .line 622
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
