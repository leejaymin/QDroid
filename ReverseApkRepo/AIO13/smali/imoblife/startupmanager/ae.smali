.class final Limoblife/startupmanager/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/SettingsActivity;

.field private final synthetic b:Landroid/content/SharedPreferences;

.field private final synthetic c:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Limoblife/startupmanager/SettingsActivity;Landroid/content/SharedPreferences;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ae;->a:Limoblife/startupmanager/SettingsActivity;

    iput-object p2, p0, Limoblife/startupmanager/ae;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Limoblife/startupmanager/ae;->c:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Limoblife/startupmanager/ae;->a:Limoblife/startupmanager/SettingsActivity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Limoblife/startupmanager/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Limoblife/startupmanager/ae;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notification"

    iget-object v3, p0, Limoblife/startupmanager/ae;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Limoblife/startupmanager/ae;->b:Landroid/content/SharedPreferences;

    const-string v2, "notification"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Limoblife/startupmanager/ae;->a:Limoblife/startupmanager/SettingsActivity;

    invoke-static {v0}, Limoblife/startupmanager/MyActivity;->showNotification(Landroid/content/Context;)V

    :goto_0
    return v4

    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
