.class public final Lname/kunes/android/launcher/activity/a/b;
.super Lname/kunes/android/launcher/activity/a/e;


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contactShowPhoneOptionsTitle"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lname/kunes/android/launcher/activity/a/b;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lname/kunes/android/launcher/activity/a/e;-><init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lname/kunes/android/launcher/activity/a/e;->a()V

    return-void
.end method

.method final a(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 2

    sget-object v0, Lname/kunes/android/launcher/activity/a/b;->a:Ljava/util/List;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-super {p0}, Lname/kunes/android/launcher/activity/a/e;->a()V

    :cond_0
    return-void
.end method
