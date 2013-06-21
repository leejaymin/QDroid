.class final Lname/kunes/android/launcher/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/m;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/m;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/e;->a:Lname/kunes/android/launcher/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lname/kunes/android/launcher/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/e;->a:Lname/kunes/android/launcher/m;

    invoke-static {v0}, Lname/kunes/android/launcher/m;->a(Lname/kunes/android/launcher/m;)Landroid/app/Activity;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lname/kunes/android/launcher/c/a;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {}, Lname/kunes/android/launcher/c/a;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lname/kunes/android/launcher/c/a;->b()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, La/a/a/a/b;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-class v0, Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;

    :goto_1
    iget-object v1, p0, Lname/kunes/android/launcher/e;->a:Lname/kunes/android/launcher/m;

    invoke-static {v1}, Lname/kunes/android/launcher/m;->a(Lname/kunes/android/launcher/m;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void

    :cond_0
    const-class v0, Lname/kunes/android/launcher/wizard/WizardLanguageActivity;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
