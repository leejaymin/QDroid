.class final Lname/kunes/android/launcher/activity/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/IconPickerActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/IconPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bc;->a:Lname/kunes/android/launcher/activity/IconPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bc;->a:Lname/kunes/android/launcher/activity/IconPickerActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/bc;->a:Lname/kunes/android/launcher/activity/IconPickerActivity;

    invoke-virtual {v2}, Lname/kunes/android/launcher/activity/IconPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "icon_id"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lname/kunes/android/launcher/activity/IconPickerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bc;->a:Lname/kunes/android/launcher/activity/IconPickerActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/IconPickerActivity;->finish()V

    return-void
.end method
