.class public final Lcom/paypal/android/MEP/a/c;
.super Lcom/paypal/android/c/i;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/paypal/android/b/a$b;
.implements Lcom/paypal/android/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/MEP/a/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/paypal/android/MEP/a/c$a;

.field private b:Lcom/paypal/android/c/a;

.field private c:Lcom/paypal/android/c/a;

.field private d:Lcom/paypal/android/c/a;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/paypal/android/MEP/b/b;

.field private g:Lcom/paypal/android/c/h;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/paypal/android/c/e;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/paypal/android/MEP/b/d;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/c/i;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->p:Ljava/util/Hashtable;

    return-void
.end method

.method private a(Lcom/paypal/android/MEP/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/a/c;->a:Lcom/paypal/android/MEP/a/c$a;

    invoke-static {}, Lcom/paypal/android/MEP/a/e;->b()V

    return-void
.end method

.method private c()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/paypal/android/MEP/a/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "save_login_email"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    invoke-static {v0}, Lcom/paypal/android/a/e;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/paypal/android/a/e;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v6

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v6

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    sget-object v2, Lcom/paypal/android/MEP/a/c$a;->b:Lcom/paypal/android/MEP/a/c$a;

    invoke-direct {p0, v2}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/MEP/a/c$a;)V

    invoke-static {}, Lcom/paypal/android/b/a;->a()Lcom/paypal/android/b/a;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/paypal/android/b/a;->a(Lcom/paypal/android/b/a$b;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/paypal/android/MEP/a/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "save_login_phone"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    sget-object v1, Lcom/paypal/android/c/h$a;->a:Lcom/paypal/android/c/h$a;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/h;->a(Lcom/paypal/android/c/h$a;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    const-string v1, "BUG THIS 1"

    invoke-static {v1}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/h;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/paypal/android/MEP/a/c$a;->c:Lcom/paypal/android/MEP/a/c$a;

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/MEP/a/c$a;)V

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private e()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/paypal/android/a/e;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/paypal/android/a/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v4

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v0, v4

    :goto_2
    return v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->a:Lcom/paypal/android/MEP/a/c$a;

    sget-object v1, Lcom/paypal/android/MEP/a/c$a;->b:Lcom/paypal/android/MEP/a/c$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->f:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v0, v2}, Lcom/paypal/android/MEP/b/b;->b(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->j:Lcom/paypal/android/c/e;

    invoke-virtual {v0}, Lcom/paypal/android/c/e;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->a:Lcom/paypal/android/MEP/a/c$a;

    sget-object v1, Lcom/paypal/android/MEP/a/c$a;->a:Lcom/paypal/android/MEP/a/c$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->a:Lcom/paypal/android/MEP/a/c$a;

    sget-object v1, Lcom/paypal/android/MEP/a/c$a;->c:Lcom/paypal/android/MEP/a/c$a;

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->f:Lcom/paypal/android/MEP/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/b;->b(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->j:Lcom/paypal/android/c/e;

    invoke-virtual {v0}, Lcom/paypal/android/c/e;->b()V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->a:Lcom/paypal/android/MEP/a/c$a;

    sget-object v1, Lcom/paypal/android/MEP/a/c$a;->c:Lcom/paypal/android/MEP/a/c$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/h;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    sget-object v1, Lcom/paypal/android/c/h$a;->a:Lcom/paypal/android/c/h$a;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/h;->a(Lcom/paypal/android/c/h$a;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 9

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->a:Lcom/paypal/android/MEP/a/c$a;

    sget-object v2, Lcom/paypal/android/MEP/a/c$a;->b:Lcom/paypal/android/MEP/a/c$a;

    if-ne v1, v2, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/paypal/android/MEP/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "save_login_successful"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v2}, Lcom/paypal/android/MEP/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getAmount()F

    move-result v2

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getTax()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getShipping()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    const-string v4, ""

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/paypal/android/a/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    sget-object v5, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v6, "RecipientType"

    if-eqz v3, :cond_3

    const-string v3, "Email"

    :goto_3
    invoke-virtual {v5, v6, v3}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v5, "PaymentCurrencyID"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v5, "PaymentAmount"

    invoke-virtual {v3, v5, v2}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v3, "Note"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getItemDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v3, "RecipientAddress"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "RecipientCountryCode"

    invoke-virtual {v1, v2, v4}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "ShareHomeAddress"

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->get_shippingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "1"

    :goto_4
    invoke-virtual {v1, v2, v3}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "delegate"

    invoke-virtual {v1, v2, p0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/paypal/android/MEP/a/c;->n:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/a;->a(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const-string v3, "Phone"

    goto :goto_3

    :cond_4
    const-string v3, "0"

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/a;->a(I)V

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->dynamicAmountCalculationEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->get_shippingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    iget-boolean v1, p0, Lcom/paypal/android/MEP/a/c;->m:Z

    if-nez v1, :cond_b

    new-instance v2, Lcom/paypal/android/MEP/MEPAddress;

    invoke-direct {v2}, Lcom/paypal/android/MEP/MEPAddress;-><init>()V

    move-object v0, p2

    check-cast v0, Ljava/util/Hashtable;

    move-object v1, v0

    const-string v3, "AddressArray"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    const-string v1, "Street1"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Street2"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CityName"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "StateOrProvince"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "PostalCode"

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Country"

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "CountryName"

    invoke-virtual {p1, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/paypal/android/MEP/MEPAddress;->setStreet1(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/paypal/android/MEP/MEPAddress;->setStreet2(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/paypal/android/MEP/MEPAddress;->setCity(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/paypal/android/MEP/MEPAddress;->setState(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/paypal/android/MEP/MEPAddress;->setPostalcode(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/paypal/android/MEP/MEPAddress;->setCountry(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/paypal/android/MEP/MEPAddress;->setCountrycode(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v6

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getDelegate()Lcom/paypal/android/MEP/PayPalPaymentDelegate;

    move-result-object v1

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPalPayment;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPalPayment;->getAmount()F

    move-result v4

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPalPayment;->getTax()F

    move-result v5

    invoke-virtual {v6}, Lcom/paypal/android/MEP/PayPalPayment;->getShipping()F

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/paypal/android/MEP/PayPalPaymentDelegate;->AdjustAmounts(Lcom/paypal/android/MEP/MEPAddress;Ljava/lang/String;FFF)Lcom/paypal/android/MEP/MEPAmounts;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v3

    invoke-virtual {v1}, Lcom/paypal/android/MEP/MEPAmounts;->getPaymentAmount()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/paypal/android/MEP/PayPalPayment;->setAmount(F)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/MEPAmounts;->getTax()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v2, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/paypal/android/MEP/PayPalPayment;->setTax(F)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/MEPAmounts;->getShipping()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/paypal/android/MEP/PayPalPayment;->setShipping(F)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/MEPAmounts;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/paypal/android/MEP/PayPalPayment;->setCurrency(Ljava/lang/String;)V

    add-float v1, v4, v5

    add-float/2addr v1, v6

    float-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    const/4 v2, 0x1

    :goto_5
    const-string v4, ""

    if-nez v2, :cond_6

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/paypal/android/a/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    sget-object v5, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v6, "RecipientType"

    if-eqz v2, :cond_8

    const-string v2, "Email"

    :goto_6
    invoke-virtual {v5, v6, v2}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v5, "PaymentCurrencyID"

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalPayment;->getCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v5, "PaymentAmount"

    invoke-virtual {v2, v5, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "Note"

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalPayment;->getItemDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "RecipientAddress"

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "RecipientCountryCode"

    invoke-virtual {v1, v2, v4}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "ShareHomeAddress"

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->get_shippingEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "1"

    :goto_7
    invoke-virtual {v1, v2, v3}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "delegate"

    invoke-virtual {v1, v2, p0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/a;->a(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/paypal/android/MEP/a/c;->m:Z

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    const-string v2, "Phone"

    goto :goto_6

    :cond_9
    const-string v3, "0"

    goto :goto_7

    :cond_a
    check-cast p2, Ljava/util/Hashtable;

    sput-object p2, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    check-cast p2, Ljava/util/Hashtable;

    sput-object p2, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_2
    check-cast p2, Ljava/lang/String;

    sput-object p2, Lcom/paypal/android/MEP/a/g;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/paypal/android/MEP/a/e;->a(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x5

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/paypal/android/c/i;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/paypal/android/MEP/a/c$a;->a:Lcom/paypal/android/MEP/a/c$a;

    iput-object v1, p0, Lcom/paypal/android/MEP/a/c;->a:Lcom/paypal/android/MEP/a/c$a;

    iput-boolean v6, p0, Lcom/paypal/android/MEP/a/c;->m:Z

    invoke-static {p1, v10, v8}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v9, v9, v9, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v2, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->b(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/paypal/android/MEP/b/b;

    invoke-direct {v2, p1, v6}, Lcom/paypal/android/MEP/b/b;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/c;->f:Lcom/paypal/android/MEP/b/b;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->f:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v2, p0}, Lcom/paypal/android/MEP/b/b;->a(Lcom/paypal/android/c/f$a;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->f:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/a/c;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/paypal/android/a/c;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v9, v3, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Lcom/paypal/android/c/g;

    const-string v2, "ANDROID_Login"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/paypal/android/c/g;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/c/h;

    invoke-direct {v1, p1}, Lcom/paypal/android/c/h;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    sget-object v2, Lcom/paypal/android/c/h$a;->c:Lcom/paypal/android/c/h$a;

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/h;->a(Lcom/paypal/android/c/h$a;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    const-string v2, "Placeholder"

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/paypal/android/c/h;->setVisibility(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    invoke-virtual {v1, v6, v9, v6, v9}, Lcom/paypal/android/c/h;->setPadding(IIII)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->g:Lcom/paypal/android/c/h;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->isLightCountry()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/paypal/android/MEP/b/d;

    const v2, 0x19eb8

    const/16 v3, 0x372

    invoke-static {v2, v3}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, p1, v7, v2}, Lcom/paypal/android/MEP/b/d;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    :goto_0
    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->e()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->e()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->c()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->c()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->d()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->d()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->f()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/d;->f()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_3
    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v10, v8}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xf

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_shippingEnabled()Z

    move-result v2

    if-eq v2, v7, :cond_4

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    :cond_4
    new-instance v0, Lcom/paypal/android/c/a;

    invoke-direct {v0, p1}, Lcom/paypal/android/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const-string v2, "ANDROID_log_in"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const v2, 0xafe1982

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setId(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v8, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const/16 v2, 0x4b1f

    const/16 v3, 0x33b

    invoke-static {v2, v3}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const v2, 0xd859

    const/16 v3, 0x36b

    invoke-static {v2, v3}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    const v0, 0xd859

    const/16 v2, 0x36b

    invoke-static {v0, v2}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v6}, Lcom/paypal/android/c/a;->setActive(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v0, p0}, Lcom/paypal/android/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    const/high16 v0, 0x3f00

    invoke-static {p1, v8, v8, v0}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;IIF)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xa

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Lcom/paypal/android/c/a;

    invoke-direct {v2, p1}, Lcom/paypal/android/c/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    const-string v3, "ANDROID_Cancel"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/paypal/android/c/a;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/paypal/android/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/paypal/android/c/a;->setGravity(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    const v3, 0x16570

    const/16 v4, 0x315

    invoke-static {v3, v4}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    const/16 v3, 0x6637

    const/16 v4, 0x341

    invoke-static {v3, v4}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Lcom/paypal/android/c/a;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    invoke-virtual {v2, p0}, Lcom/paypal/android/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/paypal/android/a/i$a;->c:Lcom/paypal/android/a/i$a;

    invoke-static {v0, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->e:Landroid/widget/TextView;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->e:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->e:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "ANDROID_Help"

    invoke-static {v1}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v6, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/c;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->i:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/paypal/android/a/c;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v10, v8}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Lcom/paypal/android/c/e;

    invoke-direct {v1, p1}, Lcom/paypal/android/c/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/c;->j:Lcom/paypal/android/c/e;

    sget-object v1, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-static {v1, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/MEP/a/c;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->k:Landroid/widget/TextView;

    const v2, -0xcc9967

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->k:Landroid/widget/TextView;

    const-string v2, "ANDROID_logging_in_message"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->j:Lcom/paypal/android/c/e;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->i:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/c;->addView(Landroid/view/View;)V

    return-void

    :cond_5
    new-instance v1, Lcom/paypal/android/MEP/b/d;

    const/4 v2, 0x2

    const v3, 0x1b741

    const/16 v4, 0x469

    invoke-static {v3, v4}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/paypal/android/MEP/b/d;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    goto/16 :goto_0

    :cond_6
    invoke-static {p1, v10, v8}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v3, 0x3f00

    invoke-static {p1, v8, v8, v3}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;IIF)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v6, v6, v9, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Lcom/paypal/android/c/a;

    invoke-direct {v4, p1}, Lcom/paypal/android/c/a;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    const-string v4, "ANDROID_Donate"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/paypal/android/c/a;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/paypal/android/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Lcom/paypal/android/c/a;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    const/16 v4, 0x4b1f

    const/16 v5, 0x33b

    invoke-static {v4, v5}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    const v4, 0xd859

    const/16 v5, 0x36b

    invoke-static {v4, v5}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v6, v6, v9, v6}, Lcom/paypal/android/c/a;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    const/high16 v4, -0x100

    invoke-virtual {v0, v4}, Lcom/paypal/android/c/a;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v0, p0}, Lcom/paypal/android/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 v0, 0x3f00

    invoke-static {p1, v8, v8, v0}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;IIF)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v9, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Lcom/paypal/android/c/a;

    invoke-direct {v3, p1}, Lcom/paypal/android/c/a;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const-string v4, "ANDROID_Review"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/paypal/android/c/a;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const v4, 0xafe1982

    invoke-virtual {v3, v4}, Lcom/paypal/android/c/a;->setId(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/paypal/android/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/paypal/android/c/a;->setGravity(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const v4, 0x16570

    const/16 v5, 0x315

    invoke-static {v4, v5}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const/16 v4, 0x6637

    const/16 v5, 0x341

    invoke-static {v4, v5}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    const v3, 0xd859

    const/16 v4, 0x36b

    invoke-static {v3, v4}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v3, v6}, Lcom/paypal/android/c/a;->setActive(Z)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v3, v9, v6, v6, v6}, Lcom/paypal/android/c/a;->setPadding(IIII)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Lcom/paypal/android/c/a;->setTextColor(I)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v3, p0}, Lcom/paypal/android/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    const-string v4, "ANDROID_Pay"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/paypal/android/c/a;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public final a(Lcom/paypal/android/c/f;I)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->a:Lcom/paypal/android/MEP/a/c$a;

    sget-object v1, Lcom/paypal/android/MEP/a/c$a;->b:Lcom/paypal/android/MEP/a/c$a;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/paypal/android/MEP/a/c;->o:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/a/c$a;->c:Lcom/paypal/android/MEP/a/c$a;

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/MEP/a/c$a;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->p:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/paypal/android/MEP/a/c;->a()V

    return-void
.end method

.method public final d()V
    .locals 5

    const-string v4, "usernameOrPhone"

    const-string v3, "passwordOrPin"

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "usernameOrPhone"

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->p:Ljava/util/Hashtable;

    const-string v2, "usernameOrPhone"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "passwordOrPin"

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->p:Ljava/util/Hashtable;

    const-string v2, "passwordOrPin"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x1

    const-string v7, "40.00"

    const-string v6, "USD"

    const-string v5, "0"

    const-string v4, "EUR"

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->b:Lcom/paypal/android/c/a;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalActivity;->paymentCanceled()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FATAL_ERROR_MESSAGE"

    const-string v2, "THIS IS A DEBUG CODE SEGMENT."

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/a/c$a;->a:Lcom/paypal/android/MEP/a/c$a;

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/MEP/a/c$a;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->g()V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "InternalID"

    const-string v3, "B:0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Method"

    const-string v3, "balance"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Type"

    const-string v3, "balance"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Subtype"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CurrencyCode"

    const-string v3, "USD"

    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Last4"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "BackupRequired"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Amount"

    const-string v3, "5.00"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "currencyID"

    const-string v3, "USD"

    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "InternalID"

    const-string v3, "C:17890"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Method"

    const-string v3, "bank"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Type"

    const-string v3, "bank"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Subtype"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CurrencyCode"

    const-string v3, "USD"

    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Last4"

    const-string v3, "7892"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "BackupRequired"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Amount"

    const-string v3, "15.79"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "currencyID"

    const-string v3, "USD"

    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v2, "FundsUsedVector"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "CrossCurrency"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CurrencyFrom"

    const-string v3, "USD"

    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CurrencyTo"

    const-string v3, "EUR"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ExchangeRate"

    const-string v3, "624825"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v2, "CurrencyConversionVector"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "SelectableFee"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FeeBearer"

    const-string v3, "ApplyFeeToReceiver"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Fee"

    const-string v3, "0.00"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FeecurrencyID"

    const-string v3, "EUR"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SenderPayScenarioPaidcurrencyID"

    const-string v3, "EUR"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SenderPayScenarioPaid"

    const-string v3, "40.00"

    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SenderPayScenarioReceivedcurrencyID"

    const-string v3, "EUR"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SenderPayScenarioReceived"

    const-string v3, "40.00"

    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ReceiverPayScenarioPaidcurrencyID"

    const-string v3, "EUR"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ReceiverPayScenarioPaid"

    const-string v3, "40.00"

    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ReceiverPayScenarioReceivedcurrencyID"

    const-string v3, "EUR"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ReceiverPayScenarioReceived"

    const-string v3, "40.00"

    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FeeWasWaived"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v2, "PricingDetails"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "Name"

    const-string v3, "Jack White"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Street1"

    const-string v3, "123 Home St"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Street2"

    const-string v3, "Apt B"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CityName"

    const-string v3, "Trenton"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "StateOrProvince"

    const-string v3, "NJ"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PostalCode"

    const-string v3, "08601"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CountryName"

    const-string v3, "USA"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AddressID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AddressStatus"

    const-string v3, "Unconfirmed"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v2, "AddressArray"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/MEP/a/c;->n:Z

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/c;->c()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/a/c$a;->a:Lcom/paypal/android/MEP/a/c$a;

    invoke-direct {p0, v0}, Lcom/paypal/android/MEP/a/c;->a(Lcom/paypal/android/MEP/a/c$a;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const-string v0, "27892"

    sput-object v0, Lcom/paypal/android/MEP/a/g;->a:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/paypal/android/MEP/a/e;->a(I)V

    :goto_1
    invoke-direct {p0}, Lcom/paypal/android/MEP/a/c;->c()V

    goto/16 :goto_0

    :cond_5
    iput-boolean v2, p0, Lcom/paypal/android/MEP/a/c;->n:Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    invoke-static {v2}, Lcom/paypal/android/MEP/a/e;->a(I)V

    goto/16 :goto_0
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->h()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->c()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->c()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->d()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->d()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setActive(Z)V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setActive(Z)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setActive(Z)V

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setActive(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->h()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->e()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->f()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->l:Lcom/paypal/android/MEP/b/d;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/d;->f()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setActive(Z)V

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setActive(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setActive(Z)V

    :cond_7
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Lcom/paypal/android/c/a;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setActive(Z)V

    goto :goto_0
.end method
