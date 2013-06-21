.class public final Lname/kunes/android/launcher/o;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/activity/HomeActivity;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lname/kunes/android/launcher/activity/HomeActivity;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-class v0, Lname/kunes/android/launcher/activity/HomeActivity;

    invoke-static {p0, v0}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
