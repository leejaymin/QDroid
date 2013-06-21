.class final Lname/kunes/android/launcher/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/e/e;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/b/p;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/b/p;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/b/k;->a:Lname/kunes/android/launcher/b/p;

    iput-object p2, p0, Lname/kunes/android/launcher/b/k;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/b/k;->a:Lname/kunes/android/launcher/b/p;

    invoke-virtual {v0}, Lname/kunes/android/launcher/b/p;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/b/k;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lname/kunes/android/d/f;->a(Landroid/app/Activity;Landroid/database/Cursor;)Lname/kunes/android/d/b;

    move-result-object v0

    sget-object v1, Lname/kunes/android/launcher/b/q;->a:Lname/kunes/android/launcher/b/r;

    invoke-virtual {v0}, Lname/kunes/android/d/b;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lname/kunes/android/launcher/b/k;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Lname/kunes/android/launcher/b/r;->b(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method
