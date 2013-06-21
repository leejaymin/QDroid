.class final Lname/kunes/android/launcher/activity/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/PreferencesActivity;

.field private final synthetic b:Lname/kunes/android/launcher/c/f;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PreferencesActivity;Lname/kunes/android/launcher/c/f;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/an;->a:Lname/kunes/android/launcher/activity/PreferencesActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/an;->b:Lname/kunes/android/launcher/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/an;->b:Lname/kunes/android/launcher/c/f;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/c/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
