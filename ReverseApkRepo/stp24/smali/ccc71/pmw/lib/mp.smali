.class final Lccc71/pmw/lib/mp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_settings;

.field private final synthetic b:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_settings;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/mp;->a:Lccc71/pmw/lib/pmw_settings;

    iput-object p2, p0, Lccc71/pmw/lib/mp;->b:Landroid/preference/CheckBoxPreference;

    .line 3039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3044
    iget-object v2, p0, Lccc71/pmw/lib/mp;->a:Lccc71/pmw/lib/pmw_settings;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3047
    :try_start_0
    const-string v3, "ccc71.bmw.pro"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3060
    :goto_0
    return v0

    :catch_0
    move-exception v3

    .line 3054
    :try_start_1
    const-string v3, "ccc71.bmw.pro.tf"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3059
    :catch_1
    move-exception v0

    iget-object v0, p0, Lccc71/pmw/lib/mp;->b:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move v0, v1

    .line 3060
    goto :goto_0
.end method
