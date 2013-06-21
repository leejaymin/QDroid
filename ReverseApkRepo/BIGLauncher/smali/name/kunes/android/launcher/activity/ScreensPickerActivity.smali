.class public Lname/kunes/android/launcher/activity/ScreensPickerActivity;
.super Lname/kunes/android/launcher/activity/ScreensSetupActivity;


# static fields
.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lname/kunes/android/launcher/activity/ScreensPickerActivity;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ScreensSetupActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ScreensPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "screen_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/activity/ScreensPickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ScreensPickerActivity;->finish()V

    return-void
.end method

.method protected final d()[Landroid/view/View;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f06012e

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f06012a

    const/16 v3, 0x42

    new-instance v4, Lname/kunes/android/launcher/activity/h;

    invoke-direct {v4, p0, p0}, Lname/kunes/android/launcher/activity/h;-><init>(Lname/kunes/android/launcher/activity/ScreensPickerActivity;Landroid/app/Activity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f060134

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final f()I
    .locals 1

    const v0, 0x7f060132

    return v0
.end method

.method protected final g()I
    .locals 1

    const v0, 0x7f060133

    return v0
.end method
