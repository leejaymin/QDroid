.class final Lname/kunes/android/launcher/activity/e/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lname/kunes/android/launcher/activity/e/e;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/e/e;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/e/b;->a:Lname/kunes/android/launcher/activity/e/e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/b;->a:Lname/kunes/android/launcher/activity/e/e;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/e/e;->a(Lname/kunes/android/launcher/activity/e/e;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/e/a;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/activity/e/a;-><init>(Lname/kunes/android/launcher/activity/e/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
