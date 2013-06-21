.class final Lname/kunes/android/launcher/activity/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/PhoneActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ab;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ab;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    new-instance v1, Lname/kunes/android/launcher/c/f;

    invoke-direct {v1, v0}, Lname/kunes/android/launcher/c/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lname/kunes/android/launcher/c/f;->ab()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
