.class final Lname/kunes/android/launcher/activity/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/b/h;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/b/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/b/d;->a:Lname/kunes/android/launcher/activity/b/h;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/b/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b/d;->a:Lname/kunes/android/launcher/activity/b/h;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/b/h;->a(Lname/kunes/android/launcher/activity/b/h;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b/d;->b:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "plain/text"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v2}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
