.class final Lname/kunes/android/launcher/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/m;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/m;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/f;->a:Lname/kunes/android/launcher/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/c/c;

    iget-object v1, p0, Lname/kunes/android/launcher/f;->a:Lname/kunes/android/launcher/m;

    invoke-static {v1}, Lname/kunes/android/launcher/m;->a(Lname/kunes/android/launcher/m;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/c;->a()V

    iget-object v0, p0, Lname/kunes/android/launcher/f;->a:Lname/kunes/android/launcher/m;

    invoke-static {v0}, Lname/kunes/android/launcher/m;->a(Lname/kunes/android/launcher/m;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lname/kunes/android/launcher/informational/WelcomeUpdateActivity;

    invoke-static {v0, v1}, Lname/kunes/android/h/b;->a(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method
