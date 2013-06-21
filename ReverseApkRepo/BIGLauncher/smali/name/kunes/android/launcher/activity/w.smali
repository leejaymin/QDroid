.class final Lname/kunes/android/launcher/activity/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/w;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/w;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/w;->b:Landroid/app/Activity;

    const v1, 0x7f06013f

    new-instance v2, Lname/kunes/android/launcher/activity/bf;

    iget-object v3, p0, Lname/kunes/android/launcher/activity/w;->b:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lname/kunes/android/launcher/activity/bf;-><init>(Lname/kunes/android/launcher/activity/w;Landroid/app/Activity;)V

    invoke-static {v0, v1, v2}, Lname/kunes/android/widget/b;->a(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
