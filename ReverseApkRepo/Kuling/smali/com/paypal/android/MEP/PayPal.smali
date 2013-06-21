.class public final Lcom/paypal/android/MEP/PayPal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/MEP/PayPal$a;
    }
.end annotation


# static fields
.field public static final BUTTON_118x24:I = 0x2

.field public static final BUTTON_152x33:I = 0x3

.field public static final BUTTON_194x37:I = 0x4

.field public static final BUTTON_278x43:I = 0x5

.field public static final BUTTON_294x43:I = 0x6

.field public static final BUTTON_68x24:I = 0x0

.field public static final BUTTON_68x33:I = 0x1

.field public static final ENV_LIVE:I = 0x1

.field public static final ENV_NONE:I = 0x2

.field public static final ENV_SANDBOX:I = 0x0

.field public static final NUM_STYLES:I = 0x7

.field public static final PAYMENT_TYPE_DONATION:I = 0x3

.field public static final PAYMENT_TYPE_HARD_GOODS:I = 0x0

.field public static final PAYMENT_TYPE_PERSONAL:I = 0x2

.field public static final PAYMENT_TYPE_SERVICE:I = 0x1


# instance fields
.field private a:Lcom/paypal/android/MEP/PayPalPaymentDelegate;

.field private b:Lcom/paypal/android/MEP/PayPal$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/paypal/android/MEP/PayPal$a;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/PayPal$a;-><init>(Lcom/paypal/android/MEP/PayPal;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    return-void
.end method

.method public static getInstance()Lcom/paypal/android/MEP/PayPal;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    return-object v0
.end method

.method public static initWithAppID(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/MEP/PayPal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/MEP/PayPal;

    invoke-direct {v0}, Lcom/paypal/android/MEP/PayPal;-><init>()V

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$a;->c:Ljava/lang/String;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput-boolean v2, v0, Lcom/paypal/android/MEP/PayPal$a;->h:Z

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/paypal/android/MEP/PayPal$a;->f:Z

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput-boolean v2, v0, Lcom/paypal/android/MEP/PayPal$a;->j:Z

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p0, v0, Lcom/paypal/android/MEP/PayPal$a;->g:Landroid/content/Context;

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput p2, v0, Lcom/paypal/android/MEP/PayPal$a;->e:I

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-static {}, Lcom/paypal/android/a/d;->a()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPal;->setLang(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/a/a;->b()V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(I)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    return-object v0
.end method


# virtual methods
.method public final checkout(Lcom/paypal/android/MEP/PayPalPayment;Lcom/paypal/android/MEP/PayPalPaymentDelegate;)V
    .locals 1

    iput-object p2, p0, Lcom/paypal/android/MEP/PayPal;->a:Lcom/paypal/android/MEP/PayPalPaymentDelegate;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput-object p1, v0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalPayment;

    return-void
.end method

.method public final dynamicAmountCalculationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-boolean v0, v0, Lcom/paypal/android/MEP/PayPal$a;->h:Z

    return v0
.end method

.method public final enableDynamicAmountCalculation()V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/paypal/android/MEP/PayPal$a;->h:Z

    return-void
.end method

.method public final feePaidByReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/paypal/android/MEP/PayPal$a;->j:Z

    return-void
.end method

.method public final getAppID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getDelegate()Lcom/paypal/android/MEP/PayPalPaymentDelegate;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->a:Lcom/paypal/android/MEP/PayPalPaymentDelegate;

    return-object v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayment()Lcom/paypal/android/MEP/PayPalPayment;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalPayment;

    return-object v0
.end method

.method public final getPaymentButton(ILandroid/content/Context;I)Lcom/paypal/android/MEP/CheckoutButton;
    .locals 11

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->b:Lcom/paypal/android/MEP/CheckoutButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->b:Lcom/paypal/android/MEP/CheckoutButton;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/paypal/android/MEP/CheckoutButton;

    invoke-direct {v0, p2}, Lcom/paypal/android/MEP/CheckoutButton;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput-object v0, v1, Lcom/paypal/android/MEP/PayPal$a;->b:Lcom/paypal/android/MEP/CheckoutButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setState(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setFocusable(Z)V

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput p3, v1, Lcom/paypal/android/MEP/PayPal$a;->i:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setBackgroundColor(I)V

    const/16 v1, 0x40

    const/16 v2, 0x20

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const-string v3, "donate-"

    :goto_1
    packed-switch p1, :pswitch_data_0

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->getLang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "zh_hk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "_zh_cn"

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/paypal/android/a/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/paypal/android/a/a/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Lcom/paypal/android/MEP/CheckoutButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v4, v3}, Lcom/paypal/android/a/b;->b(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v6, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    const/high16 v7, 0x40c0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v7, 0x1

    const v8, -0x377fc7

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v5, v8, v6

    invoke-direct {v7, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v7}, Lcom/paypal/android/MEP/CheckoutButton;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    invoke-static {v4, v3}, Lcom/paypal/android/a/b;->b(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v4, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    const/high16 v1, 0x40c0

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    const v2, -0x377fc7

    invoke-virtual {v4, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setState(I)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/CheckoutButton;->invalidate()V

    goto/16 :goto_0

    :cond_1
    const-string v3, "pay-"

    goto/16 :goto_1

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "02-68x24"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    const/16 v3, 0x18

    move v10, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_2

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "03-68x33"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    const/16 v3, 0x21

    move v10, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_2

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "04-118x24"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x76

    const/16 v3, 0x18

    move v10, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_2

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "05-152x33"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x98

    const/16 v3, 0x21

    move v10, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_2

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "06-194x37"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc2

    const/16 v3, 0x25

    move v10, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_2

    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "07-278x43"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x116

    const/16 v3, 0x2b

    move v10, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_2

    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "01-294x43"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x126

    const/16 v3, 0x2b

    move v10, v3

    move-object v3, v1

    move v1, v10

    goto/16 :goto_2

    :cond_2
    const-string v6, "zh_tw"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "_zh_tw"

    goto/16 :goto_3

    :cond_3
    const-string v4, "es"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "_es"

    goto/16 :goto_3

    :cond_4
    const-string v4, "pt"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "_pt"

    goto/16 :goto_3

    :cond_5
    const-string v4, "de"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "_de"

    goto/16 :goto_3

    :cond_6
    const-string v4, "nl"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "_nl"

    goto/16 :goto_3

    :cond_7
    const-string v4, "fr"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "_fr"

    goto/16 :goto_3

    :cond_8
    const-string v4, "it"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "_it"

    goto/16 :goto_3

    :cond_9
    const-string v4, "ja"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "_jp"

    goto/16 :goto_3

    :cond_a
    const-string v4, "it"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "_it"

    goto/16 :goto_3

    :cond_b
    const-string v4, "pl"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "_pl"

    goto/16 :goto_3

    :cond_c
    const-string v4, ""

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 0x4
        0xc6t 0xect 0xfft 0xfft
        0x0t 0xaat 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x69t 0xcdt 0xfft 0xfft
        0x33t 0x71t 0xe2t 0xfft
    .end array-data
.end method

.method public final get_parentContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->g:Landroid/content/Context;

    return-object v0
.end method

.method public final get_paymentType()I
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget v0, v0, Lcom/paypal/android/MEP/PayPal$a;->i:I

    return v0
.end method

.method public final get_server()I
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget v0, v0, Lcom/paypal/android/MEP/PayPal$a;->e:I

    return v0
.end method

.method public final get_shippingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-boolean v0, v0, Lcom/paypal/android/MEP/PayPal$a;->f:Z

    return v0
.end method

.method public final isLightCountry()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GBR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ESP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ITA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FRA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SGP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final receiverPaysFee()Z
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-boolean v0, v0, Lcom/paypal/android/MEP/PayPal$a;->j:Z

    return v0
.end method

.method public final setLang(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/paypal/android/a/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "en_US"

    :goto_0
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput-object v0, v1, Lcom/paypal/android/MEP/PayPal$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPal$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/paypal/android/a/e;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public final setShippingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    iput-boolean p1, v0, Lcom/paypal/android/MEP/PayPal$a;->f:Z

    return-void
.end method

.method public final shouldShowFees()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public final shutdown()V
    .locals 1

    invoke-static {}, Lcom/paypal/android/a/e;->a()V

    invoke-static {}, Lcom/paypal/android/a/d;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal;->b:Lcom/paypal/android/MEP/PayPal$a;

    return-void
.end method
