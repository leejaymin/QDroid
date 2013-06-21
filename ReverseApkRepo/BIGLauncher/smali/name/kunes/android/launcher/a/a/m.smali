.class final Lname/kunes/android/launcher/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/a/a/p;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/a/a/p;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/m;->a:Lname/kunes/android/launcher/a/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/m;->a:Lname/kunes/android/launcher/a/a/p;

    iget-object v1, v0, Lname/kunes/android/launcher/a/a/p;->a:Lname/kunes/android/launcher/a/a/a;

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/m;->a:Lname/kunes/android/launcher/a/a/p;

    iget-object v0, v0, Lname/kunes/android/launcher/a/a/p;->a:Lname/kunes/android/launcher/a/a/a;

    iget-boolean v0, v0, Lname/kunes/android/launcher/a/a/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lname/kunes/android/launcher/a/a/a;->b:Z

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/m;->a:Lname/kunes/android/launcher/a/a/p;

    iget-object v0, v0, Lname/kunes/android/launcher/a/a/p;->a:Lname/kunes/android/launcher/a/a/a;

    invoke-virtual {v0}, Lname/kunes/android/launcher/a/a/a;->g_()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
