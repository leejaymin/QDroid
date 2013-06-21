.class public Lcom/cocmoc/kulinglite/Register;
.super Landroid/app/Activity;
.source "Register.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"


# instance fields
.field private _launchedPayment:Z

.field private _progressDialog:Landroid/app/ProgressDialog;

.field id:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field final mUpdateResults:Ljava/lang/Runnable;

.field registerDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Register;->mHandler:Landroid/os/Handler;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocmoc/kulinglite/Register;->_launchedPayment:Z

    .line 34
    new-instance v0, Lcom/cocmoc/kulinglite/Register$1;

    invoke-direct {v0, p0}, Lcom/cocmoc/kulinglite/Register$1;-><init>(Lcom/cocmoc/kulinglite/Register;)V

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Register;->mUpdateResults:Ljava/lang/Runnable;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/cocmoc/kulinglite/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/cocmoc/kulinglite/Register;->updateResultsInUi()V

    return-void
.end method

.method static synthetic access$1(Lcom/cocmoc/kulinglite/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/cocmoc/kulinglite/Register;->showProgressbar()V

    return-void
.end method

.method private showProgressbar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Register;->_progressDialog:Landroid/app/ProgressDialog;

    .line 120
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 121
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register;->_progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading PayPal Payment Library"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 123
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 124
    return-void
.end method

.method private updateResultsInUi()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 115
    return-void
.end method


# virtual methods
.method public Send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "SMSNummer"
    .parameter "SMSText"

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Lcom/cocmoc/kulinglite/Register;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Register;->finish()V

    .line 160
    return-void
.end method

.method public initPayPal()V
    .locals 3

    .prologue
    .line 140
    new-instance v1, Lcom/paypal/android/MEP/PayPalPayment;

    invoke-direct {v1}, Lcom/paypal/android/MEP/PayPalPayment;-><init>()V

    .line 141
    .local v1, newPayment:Lcom/paypal/android/MEP/PayPalPayment;
    const/high16 v2, 0x429e

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setAmount(F)V

    .line 142
    const-string v2, "SEK"

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setCurrency(Ljava/lang/String;)V

    .line 143
    const-string v2, "hei@cocmoc.com"

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setRecipient(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Register;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setItemDescription(Ljava/lang/String;)V

    .line 145
    const-string v2, "Cocmoc"

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setMerchantName(Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/paypal/android/MEP/PayPalActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, checkoutIntent:Landroid/content/Intent;
    const-string v2, "com.paypal.android.PAYPAL_PAYMENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 148
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/cocmoc/kulinglite/Register;->startActivityForResult(Landroid/content/Intent;I)V

    .line 149
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 173
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/cocmoc/kulinglite/Register;->_launchedPayment:Z

    .line 174
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    .line 191
    :goto_0
    return-void

    .line 178
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 180
    :pswitch_1
    const-string v3, "com.paypal.android.TRANSACTION_ID"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, transactionID:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/cocmoc/kulinglite/Register;->paymentSucceeded(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v2           #transactionID:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Register;->paymentCanceled()V

    goto :goto_0

    .line 187
    :pswitch_3
    const-string v3, "com.paypal.android.ERROR_ID"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, errorID:Ljava/lang/String;
    const-string v3, "com.paypal.android.ERROR_MESSAGE"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, errorMessage:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/cocmoc/kulinglite/Register;->paymentFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v17, 0x7f030006

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Register;->setContentView(I)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/cocmoc/kulinglite/Register;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "android_id"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cocmoc/kulinglite/Register;->id:Ljava/lang/String;

    .line 51
    const-string v6, "72345"

    .line 52
    .local v6, SMSNummer:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "COCMOC KULING "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Register;->id:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, SMSText:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/cocmoc/kulinglite/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 55
    .local v14, res:Landroid/content/res/Resources;
    const v17, 0x7f080017

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Register;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 56
    .local v12, registerTextView2:Landroid/widget/TextView;
    const v17, 0x7f080018

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Register;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 57
    .local v13, registerTextView3:Landroid/widget/TextView;
    const v17, 0x7f080019

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Register;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 59
    .local v8, editText:Landroid/widget/EditText;
    const v17, 0x7f08001d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Register;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 60
    .local v4, LL:Landroid/widget/LinearLayout;
    const v17, 0x7f08001a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Register;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 62
    .local v5, LL2:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/cocmoc/kulinglite/Register;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "APP-0YS53012JB3267438"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/paypal/android/MEP/PayPal;->initWithAppID(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/MEP/PayPal;

    move-result-object v11

    .line 63
    .local v11, ppObj:Lcom/paypal/android/MEP/PayPal;
    const/16 v17, 0x0

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPal;->setShippingEnabled(Z)V

    .line 64
    const/16 v17, 0x4

    const/16 v18, 0x1

    move-object v0, v11

    move/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/paypal/android/MEP/PayPal;->getPaymentButton(ILandroid/content/Context;I)Lcom/paypal/android/MEP/CheckoutButton;

    move-result-object v10

    .line 65
    .local v10, payPalButton:Landroid/widget/Button;
    new-instance v17, Lcom/cocmoc/kulinglite/Register$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cocmoc/kulinglite/Register$2;-><init>(Lcom/cocmoc/kulinglite/Register;)V

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v17, 0x7f08001c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Register;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 75
    .local v9, mButton:Landroid/widget/Button;
    new-instance v17, Lcom/cocmoc/kulinglite/Register$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/cocmoc/kulinglite/Register$3;-><init>(Lcom/cocmoc/kulinglite/Register;Ljava/lang/String;)V

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/cocmoc/kulinglite/Register;->registerCheck()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cocmoc/kulinglite/Register;->registerDate:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Register;->registerDate:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "-1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Register;->registerDate:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "TESTVERSION:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 87
    :cond_0
    const v17, 0x7f060023

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 88
    .local v15, string1:Ljava/lang/String;
    const v17, 0x7f060024

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 89
    .local v16, string2:Ljava/lang/String;
    const/16 v17, 0x0

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    const/16 v17, 0x0

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 91
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Register;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    const/16 v17, 0x0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const/16 v17, 0x0

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    invoke-virtual {v13}, Landroid/widget/TextView;->requestFocus()Z

    .line 110
    .end local v15           #string1:Ljava/lang/String;
    :goto_0
    return-void

    .line 101
    .end local v16           #string2:Ljava/lang/String;
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f060025

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Register;->registerDate:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 101
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 103
    .restart local v16       #string2:Ljava/lang/String;
    const/16 v17, 0x4

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 104
    const/16 v17, 0x4

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 105
    const/16 v17, 0x4

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    const/16 v17, 0x4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public paymentCanceled()V
    .locals 3

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, myIntent:Landroid/content/Intent;
    const-string v1, "com.cocmoc.kulinglite"

    const-string v2, "com.cocmoc.kulinglite.InfoTabs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Lcom/cocmoc/kulinglite/Register;->startActivity(Landroid/content/Intent;)V

    .line 214
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Register;->finish()V

    .line 215
    return-void
.end method

.method public paymentFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorID"
    .parameter "errorMessage"

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, myIntent:Landroid/content/Intent;
    const-string v1, "com.cocmoc.kulinglite"

    const-string v2, "com.cocmoc.kulinglite.InfoTabs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/cocmoc/kulinglite/Register;->startActivity(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Register;->finish()V

    .line 200
    return-void
.end method

.method public paymentSucceeded(Ljava/lang/String;)V
    .locals 3
    .parameter "transactionID"

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, myIntent:Landroid/content/Intent;
    const-string v1, "com.cocmoc.kulinglite"

    const-string v2, "com.cocmoc.kulinglite.InfoTabs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/cocmoc/kulinglite/Register;->startActivity(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Register;->finish()V

    .line 208
    return-void
.end method

.method public registerCheck()Ljava/lang/String;
    .locals 5

    .prologue
    .line 163
    const-string v2, "Kuling"

    const-string v3, "Register: registerCheck() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Register;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "KulingPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, config:Landroid/content/SharedPreferences;
    new-instance v1, Lcom/cocmoc/kulinglite/RegisterHelper;

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Register;->id:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/cocmoc/kulinglite/RegisterHelper;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 166
    .local v1, registerHelper:Lcom/cocmoc/kulinglite/RegisterHelper;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cocmoc/kulinglite/RegisterHelper;->isRegistered(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected startPayPalInit()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/cocmoc/kulinglite/Register$4;

    invoke-direct {v0, p0}, Lcom/cocmoc/kulinglite/Register$4;-><init>(Lcom/cocmoc/kulinglite/Register;)V

    .line 135
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method
