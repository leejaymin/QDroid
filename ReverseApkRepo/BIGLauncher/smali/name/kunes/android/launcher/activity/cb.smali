.class final Lname/kunes/android/launcher/activity/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/MessageWriteActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/cb;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lname/kunes/android/launcher/activity/cb;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/cb;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/cb;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->d(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v3, p0, Lname/kunes/android/launcher/activity/cb;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-static {v3}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->c(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lname/kunes/android/d/c;

    invoke-direct {v4, v2, v0}, Lname/kunes/android/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v3}, Lname/kunes/android/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-direct {v0, v2}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->s()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/cb;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/cb;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->e(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
