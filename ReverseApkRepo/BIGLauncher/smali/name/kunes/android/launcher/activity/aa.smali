.class final Lname/kunes/android/launcher/activity/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/aa;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/aa;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/aa;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x1020003

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lname/kunes/android/launcher/activity/aa;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    iget-object v3, p0, Lname/kunes/android/launcher/activity/aa;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v3}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lname/kunes/android/launcher/a/g;->d(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lname/kunes/android/launcher/activity/aa;->b:Landroid/app/Activity;

    new-instance v3, Lname/kunes/android/launcher/activity/cd;

    invoke-direct {v3, p0, v0}, Lname/kunes/android/launcher/activity/cd;-><init>(Lname/kunes/android/launcher/activity/aa;Landroid/widget/EditText;)V

    invoke-static {v2, v1, v3}, Lname/kunes/android/widget/b;->a(Landroid/app/Activity;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
