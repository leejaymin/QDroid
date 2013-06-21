.class public Lcom/ui/LapseIt/ProVersionView;
.super Landroid/app/ListActivity;
.source "ProVersionView.java"


# static fields
.field private static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0x2

.field static final TYPE_BOTTOM:I = 0x2

.field static final TYPE_HEADER:I = 0x0

.field static final TYPE_ITEM:I = 0x1


# instance fields
.field private mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

.field private proAdapter:Lcom/ui/LapseIt/ProListAdapter;

.field purchaseAlert:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/ProVersionView;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/ui/LapseIt/ProVersionView;->restoreTransactions()V

    return-void
.end method

.method private buildErrorAlert()V
    .locals 5

    .prologue
    .line 127
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    const-string v3, "Payment error"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 129
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 130
    const-string v3, "A error ocurred in the in app billing, please restart your system and try again"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 131
    const-string v3, "Ok"

    new-instance v4, Lcom/ui/LapseIt/ProVersionView$2;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/ProVersionView$2;-><init>(Lcom/ui/LapseIt/ProVersionView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkCheck()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/ui/LapseIt/ProVersionView$1;

    invoke-direct {v0, p0, p0}, Lcom/ui/LapseIt/ProVersionView$1;-><init>(Lcom/ui/LapseIt/ProVersionView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ui/LapseIt/ProVersionView;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    .line 102
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->registerObserver(Lnet/robotmedia/billing/IBillingObserver;)Z

    .line 103
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->checkBillingSupported(Landroid/content/Context;)Lnet/robotmedia/billing/BillingController$BillingStatus;

    move-result-object v0

    sget-object v1, Lnet/robotmedia/billing/BillingController$BillingStatus;->SUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

    invoke-virtual {v0, v1}, Lnet/robotmedia/billing/BillingController$BillingStatus;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/ui/LapseIt/ProVersionView;->restoreTransactions()V

    .line 106
    :cond_0
    return-void
.end method

.method private restoreTransactions()V
    .locals 0

    .prologue
    .line 162
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->restoreTransactions(Landroid/content/Context;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/ProVersionView;->setContentView(I)V

    .line 58
    new-instance v0, Lcom/ui/LapseIt/ProListAdapter;

    const v1, 0x7f03001a

    const v2, 0x7f0b005d

    invoke-direct {v0, p0, v1, v2}, Lcom/ui/LapseIt/ProListAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ui/LapseIt/ProVersionView;->proAdapter:Lcom/ui/LapseIt/ProListAdapter;

    .line 59
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView;->proAdapter:Lcom/ui/LapseIt/ProListAdapter;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/ProVersionView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    invoke-direct {p0}, Lcom/ui/LapseIt/ProVersionView;->checkCheck()V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/ui/LapseIt/ProVersionView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 168
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->unregisterObserver(Lnet/robotmedia/billing/IBillingObserver;)Z

    .line 76
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 208
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 177
    :pswitch_0
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const-string v2, "buy_pro_menu_amazon"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/ProVersionView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "buy_pro_menu"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 184
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/ProVersionView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/ProVersionView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    const-string v2, "Not available using the Amazon version"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 198
    :cond_1
    :try_start_1
    const-string v2, "buy_pro_inapp_menu"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 199
    const-string v2, "fullversion"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lnet/robotmedia/billing/BillingController;->requestPurchase(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/ui/LapseIt/ProVersionView;->buildErrorAlert()V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00c7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPurchaseStateChanged(Ljava/lang/String;Lnet/robotmedia/billing/model/Transaction$PurchaseState;)V
    .locals 4
    .parameter "itemId"
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 109
    iget-object v1, p0, Lcom/ui/LapseIt/ProVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/ui/LapseIt/ProVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 112
    :cond_0
    sget-object v1, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->PURCHASED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    invoke-virtual {p2, v1}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_1

    .line 113
    const-string v1, "success_inapp_purchase"

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 114
    const-string v1, "proversion"

    const-string v2, "true"

    invoke-static {p0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sput-boolean v3, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    .line 116
    invoke-virtual {p0}, Lcom/ui/LapseIt/ProVersionView;->finish()V

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, logInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "state"

    invoke-virtual {p2}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "fail_inapp_purchase"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Item not purchased, Android Market returned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRequestPurchaseResponse(Ljava/lang/String;Lnet/robotmedia/billing/BillingRequest$ResponseCode;)V
    .locals 2
    .parameter "itemId"
    .parameter "response"

    .prologue
    .line 150
    sget-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_OK:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    invoke-virtual {p2, v0}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ui/LapseIt/ProVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    .line 152
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 153
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    const-string v1, "Thank you for supporting us, just wait for Android Market confirmation ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/ui/LapseIt/ProVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android Market response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 49
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 68
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 69
    return-void
.end method
