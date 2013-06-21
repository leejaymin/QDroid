.class final Lname/kunes/android/launcher/activity/f;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/EightScreenConfigActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/EightScreenConfigActivity;Landroid/content/Context;[Lname/kunes/android/launcher/a/h;)V
    .locals 1

    iput-object p1, p0, Lname/kunes/android/launcher/activity/f;->a:Lname/kunes/android/launcher/activity/EightScreenConfigActivity;

    const v0, 0x7f030006

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/f;->a:Lname/kunes/android/launcher/activity/EightScreenConfigActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/EightScreenConfigActivity;->a(Lname/kunes/android/launcher/activity/EightScreenConfigActivity;)[Lname/kunes/android/launcher/a/h;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v1}, Lname/kunes/android/launcher/a/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lname/kunes/android/launcher/a/h;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lname/kunes/android/b/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
