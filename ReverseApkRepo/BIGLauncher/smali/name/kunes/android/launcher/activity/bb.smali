.class final Lname/kunes/android/launcher/activity/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/bv;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/bv;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bb;->a:Lname/kunes/android/launcher/activity/bv;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/bb;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bb;->b:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/launcher/a/g;->a(Landroid/app/Activity;)I

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bb;->a:Lname/kunes/android/launcher/activity/bv;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/bv;->a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a(Lname/kunes/android/launcher/activity/ScreensSetupActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    return-void
.end method
