.class public Lname/kunes/android/launcher/activity/CallLogDetailActivity;
.super Lname/kunes/android/launcher/activity/CallLogActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/CallLogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final a_()Lname/kunes/android/launcher/activity/f/b;
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/activity/aw;

    invoke-direct {v0, p0, p0}, Lname/kunes/android/launcher/activity/aw;-><init>(Lname/kunes/android/launcher/activity/CallLogDetailActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method final b()[Landroid/view/View;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogDetailActivity;->c()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f060151

    const/16 v3, 0x39

    new-instance v4, Lname/kunes/android/launcher/activity/av;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/av;-><init>(Lname/kunes/android/launcher/activity/CallLogDetailActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method final d()Landroid/database/Cursor;
    .locals 2

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/CallLogDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/CallLogDetailActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lname/kunes/android/c/a;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
