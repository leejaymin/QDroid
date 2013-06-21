.class Lcom/ui/LapseIt/Main$4;
.super Lnet/robotmedia/billing/helper/AbstractBillingObserver;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/Main;->checkCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/Main;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/Main;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/Main$4;->this$0:Lcom/ui/LapseIt/Main;

    .line 116
    invoke-direct {p0, p2}, Lnet/robotmedia/billing/helper/AbstractBillingObserver;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onBillingChecked(Z)V
    .locals 1
    .parameter "supported"

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/ui/LapseIt/Main$4;->this$0:Lcom/ui/LapseIt/Main;

    #calls: Lcom/ui/LapseIt/Main;->restoreTransactions()V
    invoke-static {v0}, Lcom/ui/LapseIt/Main;->access$2(Lcom/ui/LapseIt/Main;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V
    .locals 3
    .parameter "itemId"
    .parameter "state"

    .prologue
    .line 123
    sget-object v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->PURCHASED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    invoke-virtual {p2, v0}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/ui/LapseIt/Main$4;->this$0:Lcom/ui/LapseIt/Main;

    const-string v1, "proversion"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/Main$4;->this$0:Lcom/ui/LapseIt/Main;

    const-string v1, "proversion"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    goto :goto_0
.end method

.method public onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 0
    .parameter "itemId"
    .parameter "response"

    .prologue
    .line 119
    return-void
.end method
