.class final Lname/kunes/android/launcher/activity/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/b/i;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/b/i;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/b/f;->a:Lname/kunes/android/launcher/activity/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/f;->a:Lname/kunes/android/launcher/activity/b/i;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/b/i;->a(Lname/kunes/android/launcher/activity/b/i;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/f;->a:Lname/kunes/android/launcher/activity/b/i;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/b/i;->b(Lname/kunes/android/launcher/activity/b/i;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/f;->a:Lname/kunes/android/launcher/activity/b/i;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/b/i;->c(Lname/kunes/android/launcher/activity/b/i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/h/e;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
