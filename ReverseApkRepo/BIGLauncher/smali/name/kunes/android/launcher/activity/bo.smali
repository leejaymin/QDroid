.class final Lname/kunes/android/launcher/activity/bo;
.super Lname/kunes/android/e/g;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ApplicationsActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ApplicationsActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bo;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-direct {p0}, Lname/kunes/android/e/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColumnNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "header"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "label"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bo;->a:Lname/kunes/android/launcher/activity/ApplicationsActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ApplicationsActivity;->a(Lname/kunes/android/launcher/activity/ApplicationsActivity;)[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
