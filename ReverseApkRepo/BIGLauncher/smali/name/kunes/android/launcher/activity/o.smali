.class final Lname/kunes/android/launcher/activity/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ContactActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ContactActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/o;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lname/kunes/android/launcher/activity/o;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    const v1, 0x7f0600d1

    new-instance v2, Lname/kunes/android/launcher/activity/m;

    invoke-direct {v2, v0}, Lname/kunes/android/launcher/activity/m;-><init>(Lname/kunes/android/launcher/activity/ContactActivity;)V

    invoke-static {v0, v1, v2}, Lname/kunes/android/widget/b;->a(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
