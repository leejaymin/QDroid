.class final Lname/kunes/android/launcher/activity/bn;
.super Landroid/support/v4/widget/SimpleCursorAdapter;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ApplicationsActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;Landroid/content/Context;[Ljava/lang/String;[I)V
    .locals 7

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bn;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    const v2, 0x7f030006

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    return-void
.end method
