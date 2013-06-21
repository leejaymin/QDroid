.class final Lcom/samsungapps/plasma/CyberCashPaymentMethod;
.super Lcom/samsungapps/plasma/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;
    }
.end annotation


# static fields
.field protected static final e:Ljava/lang/String; = ";"

.field protected static final f:I = 0x1776

.field protected static final g:I = 0x2400


# instance fields
.field protected a:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/g;-><init>()V

    iput-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->b:I

    iput-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "IDS_SAPPS_BUTTON_CYBERCASH"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(IILjava/lang/String;)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/samsungapps/plasma/g;->a(IILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const-string v1, "IDS_SAPPS_HEADER_INVALID_EMAIL_OR_PASSWORD"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsungapps/plasma/d;->b(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2400
        :pswitch_0
    .end packed-switch
.end method

.method protected a(ILcom/samsungapps/plasma/m;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/samsungapps/plasma/g;->a(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v0, p1, p2}, Lcom/samsungapps/plasma/d;->b(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1776
        :pswitch_0
    .end packed-switch
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Lcom/samsungapps/plasma/l;

    invoke-direct {v0}, Lcom/samsungapps/plasma/l;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Z)V

    const/16 v1, 0x1776

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v1, "appItemPurchaseCyberCash"

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "itemID"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "itemGroupID"

    iget-object v3, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->E:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    iget-object v3, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->c()Lcom/samsungapps/plasma/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "itemPrice"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "paymentTypeId"

    invoke-virtual {v1, v2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Company"

    invoke-virtual {v1, v2, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "loginID"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "password"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "resultCode"

    iget-object v3, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p0, v2}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method b()Landroid/view/View;
    .locals 13

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/16 v3, 0xa

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v12, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v9, v9, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "IDS_SAPPS_BODY_PAYMENT_METHOD"

    invoke-static {v4}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->u:Landroid/content/Context;

    const v7, 0x1090008

    invoke-direct {v5, v6, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v5, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v5, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v5, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->A:Ljava/lang/String;

    const-string v6, ";"

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;

    invoke-direct {v5, p0}, Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;-><init>(Lcom/samsungapps/plasma/CyberCashPaymentMethod;)V

    new-instance v6, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v8, "@"

    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;->setProviderName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;->setProviderType(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsungapps/plasma/CyberCashPaymentMethod$CyberCashType;->setTermsUrl(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v5, "IDS_SAPPS_BODY_ID"

    invoke-static {v5}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v5, 0x21

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v6, "IDS_SAPPS_BODY_PASSWORD"

    invoke-static {v6}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v6, 0x81

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->u:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "IDS_SAPPS_SK3_PURCHASE"

    invoke-static {v6}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;

    invoke-direct {v2, p0, v4, v3, v5}, Lcom/samsungapps/plasma/CyberCashPaymentMethod$1;-><init>(Lcom/samsungapps/plasma/CyberCashPaymentMethod;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/samsungapps/plasma/CyberCashPaymentMethod$2;

    invoke-direct {v2, p0, v1, v3, v5}, Lcom/samsungapps/plasma/CyberCashPaymentMethod$2;-><init>(Lcom/samsungapps/plasma/CyberCashPaymentMethod;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->t:Lcom/samsungapps/plasma/d;

    invoke-virtual {v1}, Lcom/samsungapps/plasma/d;->b()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    if-eqz v1, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->b:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->b:I

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_4
    iget-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->d:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsungapps/plasma/CyberCashPaymentMethod;->d:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-object v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
