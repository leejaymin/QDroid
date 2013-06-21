.class final Lname/kunes/android/launcher/activity/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/MessageWriteActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/MessageWriteActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bx;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Lname/kunes/android/launcher/h;->a(Landroid/view/View;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bx;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bx;->a:Lname/kunes/android/launcher/activity/MessageWriteActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/MessageWriteActivity;->d(Lname/kunes/android/launcher/activity/MessageWriteActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "contact_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
