.class final Lname/kunes/android/launcher/a/a/p;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lname/kunes/android/launcher/a/a/a;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/p;->a:Lname/kunes/android/launcher/a/a/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/p;->a:Lname/kunes/android/launcher/a/a/a;

    iget-object v0, v0, Lname/kunes/android/launcher/a/a/a;->c:Landroid/app/Activity;

    new-instance v1, Lname/kunes/android/launcher/a/a/m;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/a/a/m;-><init>(Lname/kunes/android/launcher/a/a/p;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
