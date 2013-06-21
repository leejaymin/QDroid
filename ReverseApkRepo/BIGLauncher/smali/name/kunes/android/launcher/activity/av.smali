.class final Lname/kunes/android/launcher/activity/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lname/kunes/android/launcher/activity/CallLogDetailActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/CallLogDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/av;->a:Lname/kunes/android/launcher/activity/CallLogDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/av;->a:Lname/kunes/android/launcher/activity/CallLogDetailActivity;

    const v1, 0x7f060152

    new-instance v2, Lname/kunes/android/launcher/activity/af;

    invoke-direct {v2, p0}, Lname/kunes/android/launcher/activity/af;-><init>(Lname/kunes/android/launcher/activity/av;)V

    invoke-static {v0, v1, v2}, Lname/kunes/android/widget/b;->a(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
