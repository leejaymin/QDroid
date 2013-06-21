.class final Lname/kunes/android/launcher/a/a/n;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/a/a/a;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/a/a/a;)V
    .locals 1

    iput-object p1, p0, Lname/kunes/android/launcher/a/a/n;->a:Lname/kunes/android/launcher/a/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/n;->a:Lname/kunes/android/launcher/a/a/a;

    iget-object v0, v0, Lname/kunes/android/launcher/a/a/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/launcher/a/a/n;->a:Lname/kunes/android/launcher/a/a/a;

    iget-object v0, v0, Lname/kunes/android/launcher/a/a/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v0, p0, Lname/kunes/android/launcher/a/a/n;->a:Lname/kunes/android/launcher/a/a/a;

    invoke-static {v0}, Lname/kunes/android/launcher/a/a/a;->a(Lname/kunes/android/launcher/a/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
