.class final Lname/kunes/android/launcher/activity/bq;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ApplicationsActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bq;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/bq;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
