.class public abstract Lnet/robotmedia/billing/helper/AbstractBillingObserver;
.super Ljava/lang/Object;
.source "AbstractBillingObserver.java"

# interfaces
.implements Lnet/robotmedia/billing/IBillingObserver;


# static fields
.field protected static final KEY_TRANSACTIONS_RESTORED:Ljava/lang/String; = "net.robotmedia.billing.transactionsRestored"


# instance fields
.field protected activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lnet/robotmedia/billing/helper/AbstractBillingObserver;->activity:Landroid/app/Activity;

    .line 40
    return-void
.end method


# virtual methods
.method public isTransactionsRestored()Z
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lnet/robotmedia/billing/helper/AbstractBillingObserver;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "net.robotmedia.billing.transactionsRestored"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public onPurchaseIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "itemId"
    .parameter "purchaseIntent"

    .prologue
    .line 58
    iget-object v0, p0, Lnet/robotmedia/billing/helper/AbstractBillingObserver;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lnet/robotmedia/billing/BillingController;->startPurchaseIntent(Landroid/app/Activity;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public onTransactionsRestored()V
    .locals 4

    .prologue
    .line 63
    iget-object v2, p0, Lnet/robotmedia/billing/helper/AbstractBillingObserver;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "net.robotmedia.billing.transactionsRestored"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method
