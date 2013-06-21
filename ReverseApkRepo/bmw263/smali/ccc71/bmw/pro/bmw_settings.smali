.class public Lccc71/bmw/pro/bmw_settings;
.super Lccc71/bmw/lib/bmw_settings;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lccc71/bmw/lib/bmw_settings;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 108
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 109
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 111
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lccc71/bmw/pro/bmw_settings;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lccc71/bmw/pro/bmw_settings;->d(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic b()Lccc71/bmw/lib/bmw_settings;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    return-object v0
.end method

.method static b(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 44
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 47
    return-void
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lccc71/bmw/pro/bmw_settings;->c:I

    return v0
.end method

.method static c(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 63
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 66
    return-void
.end method

.method static synthetic c(Landroid/content/Context;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lccc71/bmw/pro/bmw_settings;->b(Landroid/content/Context;IZ)V

    return-void
.end method

.method static d(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 80
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 82
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 85
    return-void
.end method

.method private d(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 209
    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    .line 212
    new-instance v1, Lccc71/bmw/pro/c;

    invoke-direct {v1, p0}, Lccc71/bmw/pro/c;-><init>(Lccc71/bmw/pro/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    :cond_0
    const v0, 0x7f050027

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_1

    .line 226
    new-instance v1, Lccc71/bmw/pro/d;

    invoke-direct {v1, p0}, Lccc71/bmw/pro/d;-><init>(Lccc71/bmw/pro/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    :cond_1
    return-void
.end method

.method static e(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 99
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 101
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 104
    return-void
.end method

.method static f(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 120
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 123
    return-void
.end method

.method static synthetic m(Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lccc71/bmw/pro/bmw_settings;->l(Landroid/content/Context;II)V

    return-void
.end method

.method public static w(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 33
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 35
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static x(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 54
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static y(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 70
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 73
    :cond_0
    sget-object v1, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v0, :cond_1

    const-string v0, "10"

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 73
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public static z(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 89
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 92
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501f7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0}, Lccc71/bmw/lib/bmw_settings;->a()V

    .line 178
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget v1, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lccc71/bmw/pro/bmw_settings;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 180
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget v1, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 181
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :pswitch_0
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(pro) Preparing graphics prefs for wdgetID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->addPreferencesFromResource(I)V

    .line 201
    invoke-virtual {p0}, Lccc71/bmw/pro/bmw_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lccc71/bmw/pro/bmw_settings;->d(Landroid/preference/PreferenceScreen;)V

    .line 205
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 190
    :pswitch_2
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(pro) Preparing wide prefs for wdgetID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->addPreferencesFromResource(I)V

    .line 193
    invoke-virtual {p0}, Lccc71/bmw/pro/bmw_settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->c(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x7f030080
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Landroid/preference/PreferenceScreen;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0501f4

    const v7, 0x7f05002e

    const v6, 0x7f05002d

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 240
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    .line 243
    :cond_0
    sget-object v0, Lccc71/bmw/pro/bmw_settings;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 244
    invoke-virtual {p0, v8}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v4}, Lccc71/bmw/pro/bmw_settings;->w(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    const v0, 0x7f0501f5

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v4}, Lccc71/bmw/pro/bmw_settings;->x(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    const v0, 0x7f0501f6

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v4}, Lccc71/bmw/pro/bmw_settings;->y(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    const v0, 0x7f0501f7

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v4}, Lccc71/bmw/pro/bmw_settings;->z(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    const v0, 0x7f0501f8

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v4}, Lccc71/bmw/pro/bmw_settings;->A(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-virtual {p0, v7}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lccc71/bmw/pro/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {v0, v5}, Lccc71/bmw/pro/bmw_settings;->r(Landroid/content/Context;I)I

    move-result v0

    if-ltz v0, :cond_6

    move v0, v2

    :goto_0
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-virtual {p0, v6}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lccc71/bmw/pro/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {v4, v5}, Lccc71/bmw/pro/bmw_settings;->r(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccc71/utils/a/k;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 253
    const/4 v0, 0x7

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    invoke-virtual {p0, v6}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 256
    sget-object v1, Lccc71/bmw/pro/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v2, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {v1, v2}, Lccc71/bmw/pro/bmw_settings;->r(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 257
    new-instance v1, Lccc71/bmw/pro/e;

    invoke-direct {v1, p0}, Lccc71/bmw/pro/e;-><init>(Lccc71/bmw/pro/bmw_settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    :goto_1
    invoke-virtual {p0, v8}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 288
    check-cast v0, Landroid/preference/ListPreference;

    sget v2, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v2}, Lccc71/bmw/pro/bmw_settings;->w(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 289
    new-instance v0, Lccc71/bmw/pro/g;

    invoke-direct {v0, p0}, Lccc71/bmw/pro/g;-><init>(Lccc71/bmw/pro/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    :cond_1
    const v0, 0x7f0501f5

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 304
    check-cast v0, Landroid/preference/ListPreference;

    sget v2, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v2}, Lccc71/bmw/pro/bmw_settings;->x(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    new-instance v0, Lccc71/bmw/pro/h;

    invoke-direct {v0, p0}, Lccc71/bmw/pro/h;-><init>(Lccc71/bmw/pro/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 317
    :cond_2
    const v0, 0x7f0501f6

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 320
    check-cast v0, Landroid/preference/ListPreference;

    sget v2, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v2}, Lccc71/bmw/pro/bmw_settings;->y(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 321
    new-instance v0, Lccc71/bmw/pro/i;

    invoke-direct {v0, p0}, Lccc71/bmw/pro/i;-><init>(Lccc71/bmw/pro/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 333
    :cond_3
    const v0, 0x7f0501f7

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 336
    check-cast v0, Landroid/preference/ListPreference;

    sget v2, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v2}, Lccc71/bmw/pro/bmw_settings;->z(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 337
    new-instance v0, Lccc71/bmw/pro/j;

    invoke-direct {v0, p0}, Lccc71/bmw/pro/j;-><init>(Lccc71/bmw/pro/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 349
    :cond_4
    const v0, 0x7f0501f8

    invoke-virtual {p0, v0}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 352
    check-cast v0, Landroid/preference/ListPreference;

    sget v2, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {p0, v2}, Lccc71/bmw/pro/bmw_settings;->A(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 353
    new-instance v0, Lccc71/bmw/pro/k;

    invoke-direct {v0, p0}, Lccc71/bmw/pro/k;-><init>(Lccc71/bmw/pro/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 364
    :cond_5
    return-void

    :cond_6
    move v0, v3

    .line 249
    goto/16 :goto_0

    .line 272
    :cond_7
    invoke-virtual {p0, v7}, Lccc71/bmw/pro/bmw_settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v0, v1

    .line 273
    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-object v4, Lccc71/bmw/pro/bmw_settings;->a:Lccc71/bmw/lib/bmw_settings;

    sget v5, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-static {v4, v5}, Lccc71/bmw/pro/bmw_settings;->r(Landroid/content/Context;I)I

    move-result v4

    if-ltz v4, :cond_8

    :goto_2
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 274
    new-instance v0, Lccc71/bmw/pro/f;

    invoke-direct {v0, p0}, Lccc71/bmw/pro/f;-><init>(Lccc71/bmw/pro/bmw_settings;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_8
    move v2, v3

    .line 273
    goto :goto_2
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f050132

    const v4, 0x7f050126

    const/4 v3, 0x0

    .line 128
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_settings - onBuildHeaders"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const v0, 0x7f040017

    invoke-static {p0, v0, p1}, Lccc71/utils/a/a;->b(Landroid/preference/PreferenceActivity;ILjava/util/List;)V

    .line 132
    sget v0, Lccc71/bmw/pro/bmw_settings;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 134
    const v0, 0x7f050127

    const v1, 0x7f050131

    const-string v2, "ccc71.bmw.lib.bmw_settings$PrefsWidgetAppearance"

    invoke-static {p1, v0, v1, v2, v3}, Lccc71/utils/a/a;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    .line 136
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sget v1, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 139
    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :pswitch_0
    const-string v0, "ccc71.bmw.pro.bmw_settings$PrefsWidgetContentGraph"

    invoke-static {p1, v4, v5, v0, v3}, Lccc71/utils/a/a;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    .line 166
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v1, "http://www.3c71.com/android/?q=node/5#main-content-area"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    const v1, 0x7f050105

    const v2, 0x7f050106

    invoke-static {p1, v1, v2, v3, v0}, Lccc71/utils/a/a;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    .line 171
    return-void

    .line 142
    :pswitch_1
    const-string v0, "ccc71.bmw.lib.bmw_settings$PrefsWidgetContent"

    invoke-static {p1, v4, v5, v0, v3}, Lccc71/utils/a/a;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :pswitch_2
    const-string v0, "ccc71.bmw.pro.bmw_settings$PrefsWidgetContentLarge"

    invoke-static {p1, v4, v5, v0, v3}, Lccc71/utils/a/a;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 158
    :cond_0
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Widget provider for id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lccc71/bmw/pro/bmw_settings;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :cond_1
    const v0, 0x7f05010b

    const v1, 0x7f05010c

    invoke-static {p1, v0, v1, v3, v3}, Lccc71/utils/a/a;->b(Ljava/util/List;IILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x7f030080
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
