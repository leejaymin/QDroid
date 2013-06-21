.class final Lname/kunes/android/launcher/activity/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/PreferencesActivity;

.field private final synthetic b:Lname/kunes/android/launcher/c/f;

.field private final synthetic c:Lname/kunes/android/launcher/activity/PreferencesActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/PreferencesActivity;Lname/kunes/android/launcher/c/f;Lname/kunes/android/launcher/activity/PreferencesActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/ap;->a:Lname/kunes/android/launcher/activity/PreferencesActivity;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/ap;->b:Lname/kunes/android/launcher/c/f;

    iput-object p3, p0, Lname/kunes/android/launcher/activity/ap;->c:Lname/kunes/android/launcher/activity/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/ap;->b:Lname/kunes/android/launcher/c/f;

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/f;->a()V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/ap;->c:Lname/kunes/android/launcher/activity/PreferencesActivity;

    const v1, 0x7f060030

    invoke-static {v0, v1}, Lname/kunes/android/a/c;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/ap;->c:Lname/kunes/android/launcher/activity/PreferencesActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lname/kunes/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
