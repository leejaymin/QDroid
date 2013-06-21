.class final Lname/kunes/android/launcher/activity/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bi;->a:Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bi;->a:Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/ApplicationsDisablerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lname/kunes/android/c/e;->a(Landroid/content/ContentResolver;)I

    return-void
.end method
