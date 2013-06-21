.class final Lname/kunes/android/launcher/activity/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ak;->a:Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/ak;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ak;->a:Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/ak;->a:Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;

    invoke-virtual {v2}, Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mime_id"

    iget-object v4, p0, Lname/kunes/android/launcher/activity/ak;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ak;->a:Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;->finish()V

    return-void
.end method
