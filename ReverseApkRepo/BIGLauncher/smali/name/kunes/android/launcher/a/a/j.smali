.class public Lname/kunes/android/launcher/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/launcher/a/a;


# instance fields
.field private a:Landroid/app/Activity;

.field private final b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lname/kunes/android/launcher/a/a/d;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/a/a/d;-><init>(Lname/kunes/android/launcher/a/a/j;)V

    iput-object v0, p0, Lname/kunes/android/launcher/a/a/j;->b:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/j;->a:Landroid/app/Activity;

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/j;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/a/a/f;

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/j;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/a/a/f;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f090015

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/a/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lname/kunes/android/launcher/a/a/j;->a(ILjava/lang/String;)V

    const v1, 0x7f090018

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/a/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lname/kunes/android/launcher/a/a/j;->a(ILjava/lang/String;)V

    const v1, 0x7f090016

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/a/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lname/kunes/android/launcher/a/a/j;->a(ILjava/lang/String;)V

    const v1, 0x7f090019

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lname/kunes/android/launcher/a/a/j;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/a/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lname/kunes/android/launcher/a/j;->a(Lname/kunes/android/launcher/a/a;Ljava/lang/String;)V

    return-void
.end method

.method public final d_()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.intent.action.TIME_TICK"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "android.intent.action.TIME_SET"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "android.intent.action.DATE_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    aput-object v3, v1, v2

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    array-length v3, v1

    :goto_0
    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/j;->a:Landroid/app/Activity;

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/j;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lname/kunes/android/launcher/a/a/j;->b()V

    return-void

    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/j;->a:Landroid/app/Activity;

    iget-object v1, p0, Lname/kunes/android/launcher/a/a/j;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
