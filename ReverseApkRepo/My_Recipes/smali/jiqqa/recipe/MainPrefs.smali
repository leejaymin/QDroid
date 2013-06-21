.class public Ljiqqa/recipe/MainPrefs;
.super Landroid/preference/PreferenceActivity;
.source "MainPrefs.java"


# instance fields
.field backgroundPref:Ljava/lang/String;

.field llBg:Landroid/widget/LinearLayout;

.field pkg:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 17
    const-string v0, "jiqqa.recipe"

    iput-object v0, p0, Ljiqqa/recipe/MainPrefs;->pkg:Ljava/lang/String;

    .line 18
    const-string v0, "drawable"

    iput-object v0, p0, Ljiqqa/recipe/MainPrefs;->type:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Ljiqqa/recipe/MainPrefs;->addPreferencesFromResource(I)V

    .line 26
    const-string v1, "prefBG"

    invoke-virtual {p0, v1}, Ljiqqa/recipe/MainPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 27
    .local v0, bgPREF:Landroid/preference/Preference;
    new-instance v1, Ljiqqa/recipe/MainPrefs$1;

    invoke-direct {v1, p0}, Ljiqqa/recipe/MainPrefs$1;-><init>(Ljiqqa/recipe/MainPrefs;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    return-void
.end method
