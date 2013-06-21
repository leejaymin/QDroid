.class final Lname/kunes/android/launcher/activity/br;
.super Landroid/database/MergeCursor;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ApplicationsActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;[Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/br;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-direct {p0, p2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final getLong(I)J
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/database/MergeCursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method
