.class final Lname/kunes/android/launcher/a/a/c;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/a/a/q;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/a/a/q;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/c;->a:Lname/kunes/android/launcher/a/a/q;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/c;->a:Lname/kunes/android/launcher/a/a/q;

    invoke-static {v0}, Lname/kunes/android/launcher/a/a/q;->a(Lname/kunes/android/launcher/a/a/q;)I

    move-result v0

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/a/a/c;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/c/d;

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/c;->a:Lname/kunes/android/launcher/a/a/q;

    invoke-static {v1}, Lname/kunes/android/launcher/a/a/q;->b(Lname/kunes/android/launcher/a/a/q;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lname/kunes/android/launcher/a/a/q;->b()[I

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lname/kunes/android/launcher/a/a/c;->a:Lname/kunes/android/launcher/a/a/q;

    invoke-static {v1}, Lname/kunes/android/launcher/a/a/q;->b(Lname/kunes/android/launcher/a/a/q;)Landroid/view/View;

    move-result-object v1

    aget v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/c;->a:Lname/kunes/android/launcher/a/a/q;

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/c;->a:Lname/kunes/android/launcher/a/a/q;

    invoke-static {v1}, Lname/kunes/android/launcher/a/a/q;->c(Lname/kunes/android/launcher/a/a/q;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lname/kunes/android/launcher/a/a/q;->d()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/launcher/a/j;->a(Lname/kunes/android/launcher/a/a;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lname/kunes/android/launcher/a/a/q;->c()[I

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/c;->a:Lname/kunes/android/launcher/a/a/q;

    invoke-static {v0, p1}, Lname/kunes/android/launcher/a/a/q;->a(Lname/kunes/android/launcher/a/a/q;Landroid/telephony/ServiceState;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/a/a/c;->a()V

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public final onSignalStrengthChanged(I)V
    .locals 1

    invoke-static {p1}, Lname/kunes/android/launcher/a/a/q;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, Lname/kunes/android/launcher/a/a/c;->a(I)V

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/c;->a:Lname/kunes/android/launcher/a/a/q;

    invoke-static {v0, p1}, Lname/kunes/android/launcher/a/a/q;->a(Lname/kunes/android/launcher/a/a/q;Landroid/telephony/SignalStrength;)V

    invoke-direct {p0}, Lname/kunes/android/launcher/a/a/c;->a()V

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method
