.class final Lname/kunes/android/launcher/activity/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/al;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/al;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lname/kunes/android/launcher/activity/al;->b:Landroid/app/Activity;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/al;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I

    move-result v0

    sget v3, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    if-ne v0, v3, :cond_0

    const-class v0, Lname/kunes/android/launcher/activity/HomeConfigActivity;

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "screen_id"

    iget-object v2, p0, Lname/kunes/android/launcher/activity/al;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v2}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/al;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    const-class v0, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;

    goto :goto_0
.end method
