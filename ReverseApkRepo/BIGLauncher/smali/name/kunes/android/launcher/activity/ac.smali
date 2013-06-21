.class final Lname/kunes/android/launcher/activity/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/PhoneActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ac;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lname/kunes/android/launcher/activity/ac;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    new-instance v2, Lname/kunes/android/launcher/c/f;

    invoke-direct {v2, v1}, Lname/kunes/android/launcher/c/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/f;->aa()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2}, Lname/kunes/android/launcher/c/f;->aa()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lname/kunes/android/launcher/activity/ContactsActivity;

    invoke-static {v1, v0, v2, v3}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/Class;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
