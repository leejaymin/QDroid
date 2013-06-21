.class final Lname/kunes/android/launcher/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/MessageDetailActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/MessageDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/b;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/b;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/b;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/MessageDetailActivity;->a(Lname/kunes/android/launcher/activity/MessageDetailActivity;)Lname/kunes/android/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lname/kunes/android/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/g/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
