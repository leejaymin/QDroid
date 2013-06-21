.class final Lname/kunes/android/launcher/activity/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/c/b;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/c/b;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/c/e;->a:Lname/kunes/android/launcher/activity/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/c/e;->a:Lname/kunes/android/launcher/activity/c/b;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/c/b;->a(Lname/kunes/android/launcher/activity/c/b;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/c/e;->a:Lname/kunes/android/launcher/activity/c/b;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/c/b;->b(Lname/kunes/android/launcher/activity/c/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lname/kunes/android/launcher/activity/MessageThreadActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "thread_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v2}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
