.class final Lccc71/bmw/lib/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_settings;

.field private final synthetic b:Landroid/preference/Preference;

.field private final synthetic c:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_settings;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/cs;->a:Lccc71/bmw/lib/bmw_settings;

    iput-object p2, p0, Lccc71/bmw/lib/cs;->b:Landroid/preference/Preference;

    iput-object p3, p0, Lccc71/bmw/lib/cs;->c:Landroid/preference/Preference;

    .line 2099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2103
    check-cast p2, Ljava/lang/Boolean;

    .line 2105
    iget-object v0, p0, Lccc71/bmw/lib/cs;->a:Lccc71/bmw/lib/bmw_settings;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->b(Lccc71/bmw/lib/bmw_settings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2115
    :cond_0
    :goto_0
    return v2

    .line 2108
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, p0, Lccc71/bmw/lib/cs;->b:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    .line 2111
    iget-object v0, p0, Lccc71/bmw/lib/cs;->b:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2112
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/cs;->c:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lccc71/bmw/lib/cs;->c:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method