.class final Lname/kunes/android/launcher/informational/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/informational/c;->a:Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lname/kunes/android/launcher/informational/c;->a:Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;->a(Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;)V

    iget-object v0, p0, Lname/kunes/android/launcher/informational/c;->a:Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;

    invoke-static {}, Lname/kunes/android/launcher/b;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v2}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
