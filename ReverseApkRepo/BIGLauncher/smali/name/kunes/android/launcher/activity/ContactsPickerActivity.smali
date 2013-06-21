.class public Lname/kunes/android/launcher/activity/ContactsPickerActivity;
.super Lname/kunes/android/launcher/activity/ContactsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactsPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contact_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/activity/ContactsPickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactsPickerActivity;->finish()V

    return-void
.end method
