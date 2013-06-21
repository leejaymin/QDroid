.class final Lname/kunes/android/launcher/activity/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/PhoneActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PhoneActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ag;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/ag;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ag;->a:Lname/kunes/android/launcher/activity/PhoneActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/ag;->b:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lname/kunes/android/launcher/activity/CallLogActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "extras_call_log_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lname/kunes/android/launcher/activity/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
