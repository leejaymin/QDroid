.class final Lcom/paypal/android/c/k$a;
.super Lcom/paypal/android/c/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/paypal/android/c/k;


# direct methods
.method public constructor <init>(Lcom/paypal/android/c/k;Lcom/paypal/android/c/k;ILandroid/content/Context;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v0, 0x0

    invoke-direct {p0, p4}, Lcom/paypal/android/c/a;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/paypal/android/c/k$a;->a:I

    iput-object p2, p0, Lcom/paypal/android/c/k$a;->b:Lcom/paypal/android/c/k;

    invoke-virtual {p0, p0}, Lcom/paypal/android/c/k$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/paypal/android/c/k$a;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/c/k$a;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/c/k$a;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/c/k$a;->b:Lcom/paypal/android/c/k;

    iget v1, p0, Lcom/paypal/android/c/k$a;->a:I

    invoke-static {v0, v1}, Lcom/paypal/android/c/k;->a(Lcom/paypal/android/c/k;I)V

    :cond_0
    return-void
.end method

.method public final setState(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/paypal/android/c/a;->setState(I)V

    return-void
.end method
