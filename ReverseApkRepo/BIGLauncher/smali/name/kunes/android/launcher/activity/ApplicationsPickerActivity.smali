.class public Lname/kunes/android/launcher/activity/ApplicationsPickerActivity;
.super Lname/kunes/android/launcher/activity/ApplicationsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/launcher/activity/ApplicationsPickerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/ApplicationsPickerActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lname/kunes/android/launcher/activity/ApplicationsPickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ApplicationsPickerActivity;->finish()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-static {p0, p1}, Lname/kunes/android/c/e;->b(Landroid/app/Activity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/ApplicationsPickerActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method final d()[Landroid/view/View;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f0600df

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0600de

    const/16 v3, 0x28

    new-instance v4, Lname/kunes/android/launcher/activity/n;

    invoke-direct {v4, p0}, Lname/kunes/android/launcher/activity/n;-><init>(Lname/kunes/android/launcher/activity/ApplicationsPickerActivity;)V

    invoke-static {p0, v2, v3, v4}, Lname/kunes/android/b/d;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f060012

    invoke-static {p0, v2}, Lname/kunes/android/b/d;->b(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
