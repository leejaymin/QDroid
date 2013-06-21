.class final Lccc71/bmw/lib/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;

.field private final synthetic b:Landroid/preference/Preference;

.field private final synthetic c:Landroid/preference/Preference;

.field private final synthetic d:Landroid/preference/Preference;

.field private final synthetic e:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/cl;->a:Lccc71/bmw/lib/bmw_settings;

    iput-object p2, p0, Lccc71/bmw/lib/cl;->b:Landroid/preference/Preference;

    iput-object p3, p0, Lccc71/bmw/lib/cl;->c:Landroid/preference/Preference;

    iput-object p4, p0, Lccc71/bmw/lib/cl;->d:Landroid/preference/Preference;

    iput-object p5, p0, Lccc71/bmw/lib/cl;->e:Landroid/preference/Preference;

    .line 1861
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

    .line 1865
    check-cast p2, Ljava/lang/Boolean;

    .line 1867
    iget-object v0, p0, Lccc71/bmw/lib/cl;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->b(Lccc71/bmw/lib/bmw_settings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1910
    :cond_0
    :goto_0
    return v1

    .line 1870
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1872
    iget-object v0, p0, Lccc71/bmw/lib/cl;->b:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 1873
    iget-object v0, p0, Lccc71/bmw/lib/cl;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1874
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/cl;->c:Landroid/preference/Preference;

    if-eqz v0, :cond_3

    .line 1875
    iget-object v0, p0, Lccc71/bmw/lib/cl;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1876
    :cond_3
    iget-object v0, p0, Lccc71/bmw/lib/cl;->d:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lccc71/bmw/lib/cl;->e:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccc71/bmw/lib/cl;->e:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1880
    iget-object v0, p0, Lccc71/bmw/lib/cl;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1882
    :cond_4
    iget-object v0, p0, Lccc71/bmw/lib/cl;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->O(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1884
    iget-object v0, p0, Lccc71/bmw/lib/cl;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1888
    :cond_5
    iget-object v0, p0, Lccc71/bmw/lib/cl;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1894
    :cond_6
    iget-object v0, p0, Lccc71/bmw/lib/cl;->d:Landroid/preference/Preference;

    if-eqz v0, :cond_7

    .line 1896
    iget-object v0, p0, Lccc71/bmw/lib/cl;->d:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1897
    iget-object v0, p0, Lccc71/bmw/lib/cl;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1899
    :cond_7
    iget-object v0, p0, Lccc71/bmw/lib/cl;->b:Landroid/preference/Preference;

    if-eqz v0, :cond_8

    .line 1901
    iget-object v0, p0, Lccc71/bmw/lib/cl;->b:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1902
    iget-object v0, p0, Lccc71/bmw/lib/cl;->b:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1904
    :cond_8
    iget-object v0, p0, Lccc71/bmw/lib/cl;->c:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lccc71/bmw/lib/cl;->c:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1907
    iget-object v0, p0, Lccc71/bmw/lib/cl;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
