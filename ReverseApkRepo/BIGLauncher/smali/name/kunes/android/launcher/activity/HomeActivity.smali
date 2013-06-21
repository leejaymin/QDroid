.class public Lname/kunes/android/launcher/activity/HomeActivity;
.super Lname/kunes/android/launcher/activity/HomeParentActivity;


# static fields
.field public static a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lname/kunes/android/launcher/activity/HomeActivity;->a:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/HomeParentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lname/kunes/android/launcher/activity/d/a;->a(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p0, p1}, Lname/kunes/android/launcher/activity/d/a;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p0, p1}, Lname/kunes/android/launcher/activity/d/a;->a(Landroid/app/Activity;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    new-instance v0, Lname/kunes/android/launcher/activity/ba;

    invoke-direct {v0, p0}, Lname/kunes/android/launcher/activity/ba;-><init>(Lname/kunes/android/launcher/activity/HomeActivity;)V

    invoke-static {v0}, Lname/kunes/android/launcher/a/j;->a(Ljava/lang/Runnable;)V

    sput-object p0, Lname/kunes/android/launcher/activity/HomeActivity;->a:Landroid/app/Activity;

    invoke-super {p0}, Lname/kunes/android/launcher/activity/HomeParentActivity;->onResume()V

    return-void
.end method
