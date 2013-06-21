.class public Lcom/urbanairship/iap/DefaultIAPEventListener;
.super Lcom/urbanairship/iap/IAPEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/iap/IAPEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public billingSupported(Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "Billing is not supported on this version of Android Market"

    invoke-static {v0}, Lcom/urbanairship/util/Toaster;->longerToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public downloadFailed(Lcom/urbanairship/iap/Product;)V
    .locals 4

    const-string v0, "Download of %s failed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/Toaster;->simpleToast(Ljava/lang/String;)V

    return-void
.end method

.method public downloadProgress(Lcom/urbanairship/iap/Product;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download progress for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public downloadStarted(Lcom/urbanairship/iap/Product;I)V
    .locals 4

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string v0, "Downloading %s..."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/Toaster;->simpleToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public downloadSuccessful(Lcom/urbanairship/iap/Product;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/urbanairship/iap/Product;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was sucessfully installed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/Toaster;->simpleToast(Ljava/lang/String;)V

    return-void
.end method

.method public marketUnavailable(Lcom/urbanairship/iap/Product;)V
    .locals 1

    const-string v0, "Error connecting to billing service, please try again later"

    invoke-static {v0}, Lcom/urbanairship/util/Toaster;->longerToast(Ljava/lang/String;)V

    return-void
.end method

.method public restoreStarted()V
    .locals 1

    const-string v0, "Checking for existing purchases"

    invoke-static {v0}, Lcom/urbanairship/util/Toaster;->simpleToast(Ljava/lang/String;)V

    return-void
.end method
