.class public Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;
.super Lname/kunes/android/activity/InformationalActivity;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/activity/InformationalActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;->a:Z

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;->a:Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-super {p0}, Lname/kunes/android/activity/InformationalActivity;->a()V

    const v0, 0x7f09003d

    const v1, 0x7f060107

    new-instance v2, Lname/kunes/android/launcher/informational/c;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/informational/c;-><init>(Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;->a(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final d()I
    .locals 1

    const v0, 0x7f020174

    return v0
.end method

.method protected final e()I
    .locals 1

    const v0, 0x7f060106

    return v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060105

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060105

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lname/kunes/android/activity/InformationalActivity;->onResume()V

    iget-boolean v0, p0, Lname/kunes/android/launcher/informational/WelcomeUpgradeActivity;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lname/kunes/android/launcher/o;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected final q()I
    .locals 1

    const v0, 0x7f060107

    return v0
.end method
