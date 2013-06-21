.class final Lname/kunes/android/launcher/activity/aj;
.super Lname/kunes/android/launcher/a/c;


# instance fields
.field private synthetic c:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/aj;->c:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-direct {p0, p2, p3}, Lname/kunes/android/launcher/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final j()Landroid/content/Intent;
    .locals 4

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lname/kunes/android/launcher/activity/aj;->a:Landroid/app/Activity;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/aj;->c:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I

    move-result v0

    sget v3, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    if-ne v0, v3, :cond_0

    const-class v0, Lname/kunes/android/launcher/activity/HomePreviewActivity;

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "screen_id"

    iget-object v2, p0, Lname/kunes/android/launcher/activity/aj;->c:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v2}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lname/kunes/android/launcher/activity/EightScreenActivity;

    goto :goto_0
.end method
