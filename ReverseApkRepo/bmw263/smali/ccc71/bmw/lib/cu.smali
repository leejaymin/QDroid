.class final Lccc71/bmw/lib/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;

.field private final synthetic b:Landroid/preference/Preference;

.field private final synthetic c:Landroid/preference/Preference;

.field private final synthetic d:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/cu;->a:Lccc71/bmw/lib/bmw_settings;

    iput-object p2, p0, Lccc71/bmw/lib/cu;->b:Landroid/preference/Preference;

    iput-object p3, p0, Lccc71/bmw/lib/cu;->c:Landroid/preference/Preference;

    iput-object p4, p0, Lccc71/bmw/lib/cu;->d:Landroid/preference/Preference;

    .line 2210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2215
    check-cast p2, Ljava/lang/Boolean;

    .line 2217
    iget-object v0, p0, Lccc71/bmw/lib/cu;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->b(Lccc71/bmw/lib/bmw_settings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2244
    :cond_0
    :goto_0
    return v1

    .line 2220
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/cu;->b:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 2222
    iget-object v0, p0, Lccc71/bmw/lib/cu;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2223
    iget-object v0, p0, Lccc71/bmw/lib/cu;->b:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccc71/bmw/lib/cu;->c:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 2224
    iget-object v0, p0, Lccc71/bmw/lib/cu;->c:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2226
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/cu;->c:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 2228
    iget-object v0, p0, Lccc71/bmw/lib/cu;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2231
    :cond_3
    iget-object v0, p0, Lccc71/bmw/lib/cu;->d:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 2233
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2235
    iget-object v0, p0, Lccc71/bmw/lib/cu;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 2239
    :cond_4
    iget-object v0, p0, Lccc71/bmw/lib/cu;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2240
    iget-object v0, p0, Lccc71/bmw/lib/cu;->d:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
