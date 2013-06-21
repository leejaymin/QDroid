.class public final Lcom/paypal/android/MEP/PayPalActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/paypal/android/MEP/PayPalPaymentDelegate;


# static fields
.field public static AUTH_SUCCESS:Ljava/lang/String; = null

.field public static CREATE_PAYMENT_FAIL:Ljava/lang/String; = null

.field public static CREATE_PAYMENT_SUCCESS:Ljava/lang/String; = null

.field public static final EXTRA_ERROR_ID:Ljava/lang/String; = "com.paypal.android.ERROR_ID"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "com.paypal.android.ERROR_MESSAGE"

.field public static final EXTRA_PAYMENT_ADJUSTER:Ljava/lang/String; = "com.paypal.android.PAYMENT_ADJUSTER"

.field public static final EXTRA_PAYMENT_INFO:Ljava/lang/String; = "com.paypal.android.PAYPAL_PAYMENT"

.field public static final EXTRA_TRANSACTION_ID:Ljava/lang/String; = "com.paypal.android.TRANSACTION_ID"

.field public static FATAL_ERROR:Ljava/lang/String; = null

.field public static LOGIN_FAIL:Ljava/lang/String; = null

.field public static LOGIN_SUCCESS:Ljava/lang/String; = null

.field public static final RESULT_FAILURE:I = 0x2

.field public static final VIEW_ABOUT:I = 0x1

.field public static final VIEW_FATAL_ERROR:I = 0x4

.field public static final VIEW_LOGIN:I = 0x0

.field public static final VIEW_NUM_VIEWS:I = 0x6

.field public static final VIEW_REVIEW:I = 0x2

.field public static final VIEW_SUCCESS:I = 0x3

.field public static final VIEW_TEST:I = 0x5

.field public static _networkHandler:Lcom/paypal/android/a/a;

.field public static _paypal:Lcom/paypal/android/MEP/PayPal;

.field public static _popIntent:Ljava/lang/String;

.field public static _pushIntent:Ljava/lang/String;

.field public static _replaceIntent:Ljava/lang/String;

.field public static _updateIntent:Ljava/lang/String;

.field private static b:Lcom/paypal/android/MEP/PayPalActivity;

.field private static f:Ljava/lang/String;


# instance fields
.field private a:Lcom/paypal/android/MEP/PaymentAdjuster;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/paypal/android/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/animation/ScaleAnimation;

.field private e:Landroid/content/Intent;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/paypal/android/MEP/PayPalActivity;

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/content/Intent;

    new-instance v0, Lcom/paypal/android/MEP/b;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/b;-><init>(Lcom/paypal/android/MEP/PayPalActivity;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->g:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/paypal/android/MEP/a;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/a;-><init>(Lcom/paypal/android/MEP/PayPalActivity;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/MEP/PayPalActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic a()Lcom/paypal/android/MEP/PayPalActivity;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/paypal/android/MEP/PayPalActivity;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/paypal/android/MEP/PayPalActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method private a(I)Z
    .locals 12

    const/4 v11, 0x0

    const/high16 v3, 0x3f80

    const/high16 v7, 0x3f00

    const/4 v2, 0x0

    const/4 v6, 0x2

    if-nez p1, :cond_2

    new-instance v1, Lcom/paypal/android/MEP/a/c;

    invoke-direct {v1, p0}, Lcom/paypal/android/MEP/a/c;-><init>(Landroid/content/Context;)V

    move-object v10, v1

    :goto_0
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/c/i;

    :goto_1
    invoke-virtual {p0, v10}, Lcom/paypal/android/MEP/PayPalActivity;->setContentView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v4, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/paypal/android/c/i;->b()V

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    move v4, v2

    move v5, v3

    move v8, v6

    move v9, v7

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v1, v11}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    invoke-virtual {v1, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v10, v1}, Lcom/paypal/android/c/i;->setAnimation(Landroid/view/animation/Animation;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, v10

    check-cast v0, Lcom/paypal/android/MEP/a/c;

    move-object p0, v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/a/c;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->f:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    new-instance v1, Lcom/paypal/android/MEP/a/d;

    invoke-direct {v1, p0}, Lcom/paypal/android/MEP/a/d;-><init>(Landroid/content/Context;)V

    move-object v10, v1

    goto :goto_0

    :cond_3
    if-ne p1, v6, :cond_4

    new-instance v1, Lcom/paypal/android/MEP/a/a;

    invoke-direct {v1, p0}, Lcom/paypal/android/MEP/a/a;-><init>(Landroid/content/Context;)V

    move-object v10, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    new-instance v1, Lcom/paypal/android/MEP/a/g;

    invoke-direct {v1, p0}, Lcom/paypal/android/MEP/a/g;-><init>(Landroid/content/Context;)V

    move-object v10, v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    new-instance v1, Lcom/paypal/android/MEP/a/b;

    iget-object v4, p0, Lcom/paypal/android/MEP/PayPalActivity;->e:Landroid/content/Intent;

    invoke-direct {v1, p0, v4}, Lcom/paypal/android/MEP/a/b;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    move-object v10, v1

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    if-ne p1, v1, :cond_7

    new-instance v1, Lcom/paypal/android/MEP/a/f;

    invoke-direct {v1, p0}, Lcom/paypal/android/MEP/a/f;-><init>(Landroid/content/Context;)V

    move-object v10, v1

    goto :goto_0

    :cond_7
    move v1, v11

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/paypal/android/MEP/PayPalActivity;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/paypal/android/MEP/PayPalActivity;

    iget-object v0, v0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/c/i;

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/c/i;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Lcom/paypal/android/c/i;->b()V

    return v2
.end method

.method static synthetic a(Lcom/paypal/android/MEP/PayPalActivity;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/MEP/PayPalActivity;->a(I)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getAppID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PUSH_DIALOG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_pushIntent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "POP_DIALOG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_popIntent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REPLACE_DIALOG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_replaceIntent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UPDATE_VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_updateIntent:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LOGIN_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_SUCCESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LOGIN_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_FAIL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AUTH_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->AUTH_SUCCESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE_PAYMENT_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CREATE_PAYMENT_FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_FAIL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FATAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_popIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->_pushIntent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/paypal/android/MEP/PayPalActivity;->_replaceIntent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_updateIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/paypal/android/a/a;->b()V

    return-void
.end method

.method static synthetic b(Lcom/paypal/android/MEP/PayPalActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/paypal/android/c/i;

    invoke-virtual {p0}, Lcom/paypal/android/c/i;->a()V

    return-void
.end method

.method static synthetic b(Lcom/paypal/android/MEP/PayPalActivity;I)Z
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/c/i;

    invoke-direct {p0, p1}, Lcom/paypal/android/MEP/PayPalActivity;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 11

    const/4 v6, 0x2

    const/high16 v2, 0x3f80

    const/high16 v7, 0x3f00

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/paypal/android/c/i;

    move-object v10, v0

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    move v4, v2

    move v5, v3

    move v8, v6

    move v9, v7

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v10, v1}, Lcom/paypal/android/c/i;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPalActivity;->finish()V

    const/4 v1, 0x0

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/paypal/android/MEP/PayPalActivity;

    goto :goto_0
.end method

.method public static getInstance()Lcom/paypal/android/MEP/PayPalActivity;
    .locals 1

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/paypal/android/MEP/PayPalActivity;

    return-object v0
.end method


# virtual methods
.method public final AdjustAmounts(Lcom/paypal/android/MEP/MEPAddress;Ljava/lang/String;FFF)Lcom/paypal/android/MEP/MEPAmounts;
    .locals 6

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->a:Lcom/paypal/android/MEP/PaymentAdjuster;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->a:Lcom/paypal/android/MEP/PaymentAdjuster;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/paypal/android/MEP/PaymentAdjuster;->adjustAmount(Lcom/paypal/android/MEP/MEPAddress;Ljava/lang/String;FFF)Lcom/paypal/android/MEP/MEPAmounts;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDialog()Lcom/paypal/android/c/i;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/paypal/android/c/i;

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/paypal/android/MEP/PayPalActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->c()V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->d:Landroid/view/animation/ScaleAnimation;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/paypal/android/MEP/PayPalActivity;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalActivity;->finish()V

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/paypal/android/MEP/PayPalActivity;

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x0

    const-string v6, "com.paypal.android.PAYPAL_PAYMENT"

    const-string v2, "com.paypal.android.PAYMENT_ADJUSTER"

    const-string v5, "ReviewViewInfo"

    const-string v4, "-1"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPalActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_b

    const-string v1, "PayPal"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/MEP/PayPal;

    sput-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    const-string v1, "ViewStack"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    const-string v2, "NetworkHandler"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/a/a;

    sput-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "ReviewViewInfo"

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "ReviewViewInfo"

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    sput-object v2, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->b()V

    move-object v4, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/paypal/android/MEP/a/c;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/a/c;-><init>(Landroid/content/Context;)V

    :goto_1
    iget-object v4, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object v4, v2

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    new-instance v2, Lcom/paypal/android/MEP/a/d;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/a/d;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    new-instance v2, Lcom/paypal/android/MEP/a/a;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/a/a;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    new-instance v2, Lcom/paypal/android/MEP/a/g;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/a/g;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x4

    if-ne v2, v5, :cond_5

    new-instance v2, Lcom/paypal/android/MEP/a/b;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/a/b;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x5

    if-ne v2, v5, :cond_11

    new-instance v2, Lcom/paypal/android/MEP/a/f;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/a/f;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    const-string v1, "EmailString"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    const/16 v2, 0x2329

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const-string v1, "PasswordString"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    const/16 v2, 0x232a

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const-string v1, "PhoneString"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    const/16 v2, 0x232b

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const-string v1, "PinString"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    const/16 v1, 0x232c

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    sput-object p0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/paypal/android/MEP/PayPalActivity;

    :goto_2
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/paypal/android/MEP/PayPalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "com.paypal.android.PAYPAL_PAYMENT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PayPalPayment object does not exist in intent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string v0, "com.paypal.android.PAYMENT_ADJUSTER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "com.paypal.android.PAYMENT_ADJUSTER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PaymentAdjuster;

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->a:Lcom/paypal/android/MEP/PaymentAdjuster;

    :cond_d
    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->b()V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    const-string v0, "com.paypal.android.PAYPAL_PAYMENT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/PayPalPayment;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPayment;->isValidPayment()Z

    move-result v1

    if-nez v1, :cond_e

    const-string v0, "-1"

    const-string v0, "Invalid Payment"

    invoke-virtual {p0, v4, v0}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPalPayment;->isButtonEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v0, "-1"

    const-string v0, "Application not authorized"

    invoke-virtual {p0, v4, v0}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    sput-object p0, Lcom/paypal/android/MEP/PayPalActivity;->b:Lcom/paypal/android/MEP/PayPalActivity;

    invoke-virtual {v2, v0, p0}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalPayment;Lcom/paypal/android/MEP/PayPalPaymentDelegate;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->setSize(I)V

    :goto_3
    invoke-static {v3}, Lcom/paypal/android/MEP/a/e;->a(I)V

    goto :goto_2

    :cond_10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    goto :goto_3

    :cond_11
    move-object v2, v4

    goto/16 :goto_1
.end method

.method protected final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/paypal/android/MEP/a/d;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/paypal/android/MEP/a/e;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v0, "PayPal"

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, v6

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/c/i;

    instance-of v4, v0, Lcom/paypal/android/MEP/a/c;

    if-eqz v4, :cond_b

    move v4, v6

    :goto_1
    instance-of v5, v0, Lcom/paypal/android/MEP/a/d;

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    instance-of v5, v0, Lcom/paypal/android/MEP/a/a;

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    :cond_1
    instance-of v5, v0, Lcom/paypal/android/MEP/a/g;

    if-eqz v5, :cond_2

    const/4 v4, 0x3

    :cond_2
    instance-of v5, v0, Lcom/paypal/android/MEP/a/b;

    if-eqz v5, :cond_3

    const/4 v4, 0x4

    :cond_3
    instance-of v0, v0, Lcom/paypal/android/MEP/a/f;

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    :goto_2
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    const-string v0, "ViewStack"

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NetworkHandler"

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    const-string v0, "ReviewViewInfo"

    sget-object v2, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v0, 0x2329

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "EmailString"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/16 v0, 0x232a

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_7

    const-string v2, "PasswordString"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/16 v0, 0x232b

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "PhoneString"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/16 v0, 0x232c

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "PinString"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v1

    :cond_a
    move v0, v4

    goto/16 :goto_2

    :cond_b
    move v4, v6

    goto/16 :goto_1
.end method

.method public final paymentCanceled()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/PayPalActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->c()V

    return-void
.end method

.method public final paymentFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.paypal.android.ERROR_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.paypal.android.ERROR_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->c()V

    return-void
.end method

.method public final paymentSucceeded(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.paypal.android.TRANSACTION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/PayPalActivity;->c()V

    return-void
.end method
