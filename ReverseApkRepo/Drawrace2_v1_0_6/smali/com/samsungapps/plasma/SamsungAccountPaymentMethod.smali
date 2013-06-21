.class abstract Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;
.super Lcom/samsungapps/plasma/g;


# static fields
.field protected static final n:I = 0x23fb

.field protected static final o:I = 0x23fc


# instance fields
.field protected k:Landroid/app/Dialog;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/g;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->k:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(IILjava/lang/String;)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/samsungapps/plasma/g;->a(IILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_HEADER_INVALID_EMAIL_OR_PASSWORD"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x23fb
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract a_()Landroid/view/View;
.end method

.method b()Landroid/view/View;
    .locals 10

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/high16 v7, 0x3f80

    const/16 v3, 0xa

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_HEADER_SAMSUNG_APPS_SIGN_IN"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_BODY_EMAIL"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v5, "IDS_SAPPS_BODY_PASSWORD"

    invoke-static {v5}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v5, 0x81

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "IDS_SAPPS_SK3_PURCHASE"

    invoke-static {v5}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$1;-><init>(Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "IDS_SAPPS_HEADER_JOIN_M_SIGN_IN"

    invoke-static {v6}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$2;

    invoke-direct {v2, p0}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$2;-><init>(Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$3;

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod$3;-><init>(Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v1}, Lcom/samsungapps/plasma/d;->b()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->l:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsungapps/plasma/SamsungAccountPaymentMethod;->m:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v0
.end method

.method c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
