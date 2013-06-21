.class final Lname/kunes/android/launcher/activity/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/e/b;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/e/b;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/e/a;->a:Lname/kunes/android/launcher/activity/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/a;->a:Lname/kunes/android/launcher/activity/e/b;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/e/b;->a:Lname/kunes/android/launcher/activity/e/e;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/e/e;->b(Lname/kunes/android/launcher/activity/e/e;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/a;->a:Lname/kunes/android/launcher/activity/e/b;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/e/b;->a:Lname/kunes/android/launcher/activity/e/e;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/e/e;->a:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/c;->d()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/e/a;->a:Lname/kunes/android/launcher/activity/e/b;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/e/b;->a:Lname/kunes/android/launcher/activity/e/e;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/e/e;->b:Lname/kunes/android/launcher/activity/e/c;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/e/c;->d()V

    return-void
.end method
