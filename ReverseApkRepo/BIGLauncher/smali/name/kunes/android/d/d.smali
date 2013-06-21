.class final Lname/kunes/android/d/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lname/kunes/android/d/c;


# direct methods
.method constructor <init>(Lname/kunes/android/d/c;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/d/d;->a:Lname/kunes/android/d/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Lname/kunes/android/d/d;->getResultCode()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lname/kunes/android/d/d;->a:Lname/kunes/android/d/c;

    const v2, 0x7f06011a

    invoke-static {v1, v2}, Lname/kunes/android/d/c;->a(Lname/kunes/android/d/c;I)V

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lname/kunes/android/d/d;->a:Lname/kunes/android/d/c;

    const v2, 0x7f06011d

    invoke-static {v1, v2}, Lname/kunes/android/d/c;->b(Lname/kunes/android/d/c;I)V

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lname/kunes/android/d/d;->a:Lname/kunes/android/d/c;

    const v2, 0x7f06011e

    invoke-static {v1, v2}, Lname/kunes/android/d/c;->b(Lname/kunes/android/d/c;I)V

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lname/kunes/android/d/d;->a:Lname/kunes/android/d/c;

    const v2, 0x7f06011f

    invoke-static {v1, v2}, Lname/kunes/android/d/c;->b(Lname/kunes/android/d/c;I)V

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lname/kunes/android/d/d;->a:Lname/kunes/android/d/c;

    const v2, 0x7f060120

    invoke-static {v1, v2}, Lname/kunes/android/d/c;->b(Lname/kunes/android/d/c;I)V

    :cond_4
    if-eq v0, v3, :cond_5

    invoke-static {}, Lname/kunes/android/d/c;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lname/kunes/android/d/d;->a:Lname/kunes/android/d/c;

    invoke-static {v1}, Lname/kunes/android/d/c;->a(Lname/kunes/android/d/c;)Lname/kunes/android/launcher/service/SmsDeliveryService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lname/kunes/android/launcher/service/SmsDeliveryService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_5
    invoke-static {}, Lname/kunes/android/d/c;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
