.class final Lname/kunes/android/launcher/activity/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/x;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/x;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)Lname/kunes/android/launcher/c/e;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/x;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lname/kunes/android/launcher/c/e;->c(ILjava/lang/String;)V

    sget-object v0, Lname/kunes/android/launcher/b/q;->g:Lname/kunes/android/launcher/b/n;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/x;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/b/n;->a(I)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/x;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->d(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)V

    return-void
.end method
