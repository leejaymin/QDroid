.class final Lname/kunes/android/launcher/activity/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/MessageThreadActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/MessageThreadActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bs;->a:Lname/kunes/android/launcher/activity/MessageThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bs;->a:Lname/kunes/android/launcher/activity/MessageThreadActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bs;->a:Lname/kunes/android/launcher/activity/MessageThreadActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/MessageThreadActivity;->a(Lname/kunes/android/launcher/activity/MessageThreadActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lname/kunes/android/launcher/c/d;

    invoke-direct {v2, v0}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lname/kunes/android/launcher/c/d;->M()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lname/kunes/android/h/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "conversation_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v2}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
