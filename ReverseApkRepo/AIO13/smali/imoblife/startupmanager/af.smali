.class final Limoblife/startupmanager/af;
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

    iput-object p1, p0, Limoblife/startupmanager/af;->a:Limoblife/startupmanager/SettingsActivity;

    iput-object p2, p0, Limoblife/startupmanager/af;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Limoblife/startupmanager/af;->c:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Limoblife/startupmanager/af;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mute"

    iget-object v2, p0, Limoblife/startupmanager/af;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "w"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Limoblife/startupmanager/af;->b:Landroid/content/SharedPreferences;

    const-string v3, "mute"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
