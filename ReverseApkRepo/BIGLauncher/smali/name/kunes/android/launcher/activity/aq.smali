.class final Lname/kunes/android/launcher/activity/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/PreferencesActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PreferencesActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/aq;->a:Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lname/kunes/android/launcher/activity/aq;->a:Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-static {v0, v1}, Lname/kunes/android/h/e;->a(Landroid/app/Activity;I)V

    return v1
.end method
