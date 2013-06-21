.class public Lcom/ui/LapseIt/FullVersionView;
.super Landroid/app/Activity;
.source "FullVersionView.java"


# static fields
.field private static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0x2


# instance fields
.field private mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

.field purchaseAlert:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/FullVersionView;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/ui/LapseIt/FullVersionView;->restoreTransactions()V

    return-void
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/FullVersionView;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/ui/LapseIt/FullVersionView;->buildErrorAlert()V

    return-void
.end method

.method private buildErrorAlert()V
    .locals 5

    .prologue
    .line 150
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    const-string v3, "Payment error"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 152
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 153
    const-string v3, "A error ocurred in the in app billing, please restart your system and try again"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 154
    const-string v3, "Ok"

    new-instance v4, Lcom/ui/LapseIt/FullVersionView$3;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/FullVersionView$3;-><init>(Lcom/ui/LapseIt/FullVersionView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkCheck()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/ui/LapseIt/FullVersionView$1;

    invoke-direct {v0, p0, p0}, Lcom/ui/LapseIt/FullVersionView$1;-><init>(Lcom/ui/LapseIt/FullVersionView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ui/LapseIt/FullVersionView;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    .line 67
    iget-object v0, p0, Lcom/ui/LapseIt/FullVersionView;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->registerObserver(Lnet/robotmedia/billing/IBillingObserver;)Z

    .line 68
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->checkBillingSupported(Landroid/content/Context;)Lnet/robotmedia/billing/BillingController$BillingStatus;

    move-result-object v0

    sget-object v1, Lnet/robotmedia/billing/BillingController$BillingStatus;->SUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

    invoke-virtual {v0, v1}, Lnet/robotmedia/billing/BillingController$BillingStatus;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/ui/LapseIt/FullVersionView;->restoreTransactions()V

    .line 71
    :cond_0
    return-void
.end method

.method private restoreTransactions()V
    .locals 0

    .prologue
    .line 185
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->restoreTransactions(Landroid/content/Context;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v5, 0x7f030008

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/FullVersionView;->setContentView(I)V

    .line 79
    invoke-direct {p0}, Lcom/ui/LapseIt/FullVersionView;->checkCheck()V

    .line 81
    const v5, 0x7f0b001c

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/FullVersionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, fullText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/ui/LapseIt/FullVersionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 84
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f080030

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, text:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 86
    .local v3, styledText:Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v5, 0x7f0b001d

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/FullVersionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 89
    .local v1, marketIcon:Landroid/widget/ImageView;
    new-instance v5, Lcom/ui/LapseIt/FullVersionView$2;

    invoke-direct {v5, p0}, Lcom/ui/LapseIt/FullVersionView$2;-><init>(Lcom/ui/LapseIt/FullVersionView;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/ui/LapseIt/FullVersionView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/ui/LapseIt/FullVersionView;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    invoke-static {v0}, Lnet/robotmedia/billing/BillingController;->unregisterObserver(Lnet/robotmedia/billing/IBillingObserver;)Z

    .line 129
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 231
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 200
    :pswitch_0
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "buy_pro_menu_amazon"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/FullVersionView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "buy_pro_menu"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 207
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/FullVersionView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/FullVersionView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    const-string v2, "Not available using the Amazon version"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 221
    :cond_1
    :try_start_1
    const-string v2, "buy_pro_inapp_menu"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 222
    const-string v2, "fullversion"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lnet/robotmedia/billing/BillingController;->requestPurchase(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/ui/LapseIt/FullVersionView;->buildErrorAlert()V

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 197
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

    .line 132
    iget-object v1, p0, Lcom/ui/LapseIt/FullVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/ui/LapseIt/FullVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 135
    :cond_0
    sget-object v1, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->PURCHASED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    invoke-virtual {p2, v1}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-nez v1, :cond_1

    .line 136
    const-string v1, "success_inapp_purchase"

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 137
    const-string v1, "proversion"

    const-string v2, "true"

    invoke-static {p0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sput-boolean v3, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    .line 139
    invoke-virtual {p0}, Lcom/ui/LapseIt/FullVersionView;->finish()V

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, logInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "state"

    invoke-virtual {p2}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "fail_inapp_purchase"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 145
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
    .line 173
    sget-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_OK:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    invoke-virtual {p2, v0}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ui/LapseIt/FullVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    .line 175
    iget-object v0, p0, Lcom/ui/LapseIt/FullVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 176
    iget-object v0, p0, Lcom/ui/LapseIt/FullVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    const-string v1, "Thank you for supporting us, just wait for Android Market confirmation ..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/ui/LapseIt/FullVersionView;->purchaseAlert:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 182
    :goto_0
    return-void

    .line 180
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
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 40
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 121
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 122
    return-void
.end method
