.class final Lname/kunes/android/launcher/b/p;
.super Landroid/os/AsyncTask;


# instance fields
.field private final synthetic a:Landroid/database/Cursor;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/database/Cursor;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/b/p;->a:Landroid/database/Cursor;

    iput-object p2, p0, Lname/kunes/android/launcher/b/p;->b:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/b/p;->a:Landroid/database/Cursor;

    new-instance v1, Lname/kunes/android/launcher/b/j;

    iget-object v2, p0, Lname/kunes/android/launcher/b/p;->b:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lname/kunes/android/launcher/b/j;-><init>(Lname/kunes/android/launcher/b/p;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lname/kunes/android/e/d;->b(Landroid/database/Cursor;Lname/kunes/android/e/e;)V

    iget-object v0, p0, Lname/kunes/android/launcher/b/p;->a:Landroid/database/Cursor;

    new-instance v1, Lname/kunes/android/launcher/b/k;

    iget-object v2, p0, Lname/kunes/android/launcher/b/p;->b:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lname/kunes/android/launcher/b/k;-><init>(Lname/kunes/android/launcher/b/p;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lname/kunes/android/e/d;->b(Landroid/database/Cursor;Lname/kunes/android/e/e;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/b/p;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/b/p;->b:Landroid/app/Activity;

    new-instance v1, Lname/kunes/android/launcher/b/l;

    invoke-direct {v1, p0}, Lname/kunes/android/launcher/b/l;-><init>(Lname/kunes/android/launcher/b/p;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lname/kunes/android/launcher/b/e;->b()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
