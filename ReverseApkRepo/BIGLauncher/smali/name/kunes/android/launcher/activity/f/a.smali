.class final Lname/kunes/android/launcher/activity/f/a;
.super Lname/kunes/android/widget/e;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/f/b;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/f/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/f/a;->a:Lname/kunes/android/launcher/activity/f/b;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/f/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lname/kunes/android/widget/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/f/a;->a:Lname/kunes/android/launcher/activity/f/b;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/f/b;->a(Lname/kunes/android/launcher/activity/f/b;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lname/kunes/android/launcher/activity/CallLogDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extras_call_log_id"

    iget-object v2, p0, Lname/kunes/android/launcher/activity/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/f/a;->a:Lname/kunes/android/launcher/activity/f/b;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/f/b;->a(Lname/kunes/android/launcher/activity/f/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
