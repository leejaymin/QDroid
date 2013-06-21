.class final Lname/kunes/android/launcher/activity/ca;
.super Lname/kunes/android/e/g;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ScreensSetupActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ca;->a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;

    invoke-direct {p0}, Lname/kunes/android/e/g;-><init>()V

    return-void
.end method

.method private a()Ljava/util/LinkedHashSet;
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/c/e;

    iget-object v1, p0, Lname/kunes/android/launcher/activity/ca;->a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/e;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getColumnNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ca;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 2

    invoke-direct {p0}, Lname/kunes/android/launcher/activity/ca;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lname/kunes/android/launcher/activity/ca;->getPosition()I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lname/kunes/a/d;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
