.class final Lname/kunes/android/d/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lname/kunes/android/d/c;


# direct methods
.method constructor <init>(Lname/kunes/android/d/c;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/d/e;->a:Lname/kunes/android/d/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/d/e;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lname/kunes/android/d/e;->a:Lname/kunes/android/d/c;

    invoke-static {v1}, Lname/kunes/android/d/c;->b(Lname/kunes/android/d/c;)V

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lname/kunes/android/d/e;->a:Lname/kunes/android/d/c;

    const v1, 0x7f06011b

    invoke-static {v0, v1}, Lname/kunes/android/d/c;->a(Lname/kunes/android/d/c;I)V

    :cond_1
    return-void
.end method
