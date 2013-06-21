.class final Lname/kunes/android/launcher/activity/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/MessageWriteActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bz;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Lname/kunes/android/launcher/h;->a(Landroid/view/View;)V

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bz;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bz;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->b(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lname/kunes/android/launcher/activity/bz;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-static {v2}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->c(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lname/kunes/android/launcher/c/d;

    invoke-direct {v3, v1}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lname/kunes/android/launcher/c/d;->N()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v2}, Lname/kunes/android/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v0}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    or-int/2addr v2, v3

    new-instance v3, Lname/kunes/android/f/a;

    invoke-direct {v3, v0}, Lname/kunes/android/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lname/kunes/android/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v2

    if-eqz v0, :cond_2

    const v0, 0x7f060118

    invoke-static {v1, v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lname/kunes/android/launcher/activity/bz;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    const v1, 0x7f060119

    new-instance v2, Lname/kunes/android/launcher/activity/cb;

    invoke-direct {v2, v0}, Lname/kunes/android/launcher/activity/cb;-><init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V

    invoke-static {v0, v1, v2}, Lname/kunes/android/widget/b;->a(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
