.class public Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;
.super Lname/kunes/android/launcher/activity/ContactActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ContactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 2

    new-instance v0, Lname/kunes/android/e/a;

    invoke-direct {v0, p2}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lname/kunes/android/launcher/activity/ak;

    invoke-direct {v1, p0, v0}, Lname/kunes/android/launcher/activity/ak;-><init>(Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method final b()V
    .locals 4

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    sget-object v3, Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lname/kunes/android/c/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lname/kunes/android/launcher/activity/ContactPhonePickerActivity;->a([Landroid/database/Cursor;)V

    return-void
.end method

.method final c()V
    .locals 0

    return-void
.end method
