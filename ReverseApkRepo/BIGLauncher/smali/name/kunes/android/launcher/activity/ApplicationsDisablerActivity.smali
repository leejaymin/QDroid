.class public Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;
.super Lname/kunes/android/launcher/activity/ApplicationsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-static {p0, p1}, Lname/kunes/android/c/e;->b(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/view/View;Ljava/lang/String;Lname/kunes/android/e/a;)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "deny"

    invoke-virtual {p3, v0}, Lname/kunes/android/e/a;->f(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    const v0, 0x7f0600c0

    invoke-virtual {p0, v0}, Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lname/kunes/android/c/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)I

    return-void
.end method

.method final d()[Landroid/view/View;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f0600bf

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0600c1

    const/16 v3, 0x27

    new-instance v4, Lname/kunes/android/launcher/activity/bi;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/bi;-><init>(Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f060012

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
