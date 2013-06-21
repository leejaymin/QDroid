.class final Lname/kunes/android/launcher/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lname/kunes/android/launcher/activity/MessageDetailActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/MessageDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/a;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/a;->a:Lname/kunes/android/launcher/activity/MessageDetailActivity;

    const v1, 0x7f0600e5

    new-instance v2, Lname/kunes/android/launcher/activity/bh;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/activity/bh;-><init>(Lname/kunes/android/launcher/activity/a;)V

    invoke-static {v0, v1, v2}, Lname/kunes/android/widget/b;->a(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
