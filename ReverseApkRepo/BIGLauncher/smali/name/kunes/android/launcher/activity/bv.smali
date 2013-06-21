.class final Lname/kunes/android/launcher/activity/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreensSetupActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bv;->a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/bv;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bv;->b:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/launcher/b;->a(Landroid/app/Activity;)Z

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bv;->b:Landroid/app/Activity;

    const v1, 0x7f06012b

    new-instance v2, Lname/kunes/android/launcher/activity/be;

    iget-object v3, p0, Lname/kunes/android/launcher/activity/bv;->b:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lname/kunes/android/launcher/activity/be;-><init>(Lname/kunes/android/launcher/activity/bv;Landroid/app/Activity;)V

    new-instance v3, Lname/kunes/android/launcher/activity/bb;

    iget-object v4, p0, Lname/kunes/android/launcher/activity/bv;->b:Landroid/app/Activity;

    invoke-direct {v3, p0, v4}, Lname/kunes/android/launcher/activity/bb;-><init>(Lname/kunes/android/launcher/activity/bv;Landroid/app/Activity;)V

    invoke-static {v0, v1, v2, v3}, Lname/kunes/android/widget/b;->a(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
