.class final Lname/kunes/android/launcher/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/m;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/m;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/d;->a:Lname/kunes/android/launcher/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lname/kunes/android/launcher/c/e;

    iget-object v1, p0, Lname/kunes/android/launcher/d;->a:Lname/kunes/android/launcher/m;

    invoke-static {v1}, Lname/kunes/android/launcher/m;->a(Lname/kunes/android/launcher/m;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    sget v1, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/c/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lname/kunes/android/launcher/a/b/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lname/kunes/android/launcher/c/e;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
