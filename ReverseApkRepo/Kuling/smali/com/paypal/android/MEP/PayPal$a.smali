.class final Lcom/paypal/android/MEP/PayPal$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/MEP/PayPal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field protected a:Lcom/paypal/android/MEP/PayPalPayment;

.field protected b:Lcom/paypal/android/MEP/CheckoutButton;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:Z

.field protected g:Landroid/content/Context;

.field protected h:Z

.field protected i:I

.field protected j:Z


# direct methods
.method public constructor <init>(Lcom/paypal/android/MEP/PayPal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/paypal/android/MEP/PayPalPayment;

    invoke-direct {v0}, Lcom/paypal/android/MEP/PayPalPayment;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/PayPal$a;->a:Lcom/paypal/android/MEP/PayPalPayment;

    return-void
.end method
