.class final Lname/kunes/android/launcher/activity/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# instance fields
.field final synthetic a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreensSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/by;->a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 5

    iget-object v0, p0, Lname/kunes/android/launcher/activity/by;->a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;

    new-instance v1, Lname/kunes/android/launcher/c/e;

    invoke-direct {v1, v0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Lname/kunes/android/launcher/a/b/a;

    invoke-virtual {v1, v2}, Lname/kunes/android/launcher/c/e;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lname/kunes/android/launcher/a/b/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v3}, Lname/kunes/android/launcher/a/b/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lname/kunes/android/launcher/a/b/c;

    invoke-virtual {v1, v2}, Lname/kunes/android/launcher/c/e;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lname/kunes/android/launcher/a/b/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v4}, Lname/kunes/android/launcher/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f060131

    sget v1, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    if-ne v2, v1, :cond_0

    const v0, 0x7f06012f

    :cond_0
    sget v1, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    add-int/lit8 v1, v1, 0x1

    if-ne v2, v1, :cond_1

    const v0, 0x7f060130

    :cond_1
    iget-object v1, p0, Lname/kunes/android/launcher/activity/by;->a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;

    invoke-virtual {v1, v0}, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Lname/kunes/android/launcher/activity/bg;

    invoke-direct {v1, p0, v2}, Lname/kunes/android/launcher/activity/bg;-><init>(Lname/kunes/android/launcher/activity/by;I)V

    invoke-static {p1, v0, v3, v1}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    return v0
.end method
