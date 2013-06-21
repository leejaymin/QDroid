.class final Lname/kunes/android/launcher/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/b/p;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/b/p;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/b/l;->a:Lname/kunes/android/launcher/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    sget-object v0, Lname/kunes/android/launcher/b/e;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lname/kunes/android/launcher/b/e;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
