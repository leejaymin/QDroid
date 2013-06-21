.class public final Lcom/mxtech/videoplayer/ActivityPreferences;
.super Lcom/mxtech/app/PreferenceActivityBase;


# static fields
.field public static final 궗:Ljava/lang/String;


# instance fields
.field private ㅼ꽑嫄:[Ljava/lang/CharSequence;

.field private 弱밧:Landroid/content/pm/PackageManager;

.field private 먯꽌:[Ljava/lang/CharSequence;

.field private 쇰뒗:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/app/PreferenceActivityBase;-><init>()V

    return-void
.end method

.method private ㅼ꽑嫄(Landroid/preference/Preference;)V
    .locals 1

    new-instance v0, Ljc;

    invoke-direct {v0, p0}, Ljc;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static synthetic ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/ActivityPreferences;->ㅼ꽑嫄(Landroid/preference/Preference;)V

    return-void
.end method

.method private 弱밧(Landroid/preference/Preference;)V
    .locals 1

    new-instance v0, Lje;

    invoke-direct {v0, p0}, Lje;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static synthetic 弱밧(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/ActivityPreferences;->弱밧(Landroid/preference/Preference;)V

    return-void
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援:Lfm;

    return-object v0
.end method

.method private 癤욱븳援(Landroid/preference/CheckBoxPreference;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityPreferences;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->弱밧:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/mxtech/videoplayer/ActivityScreen$WebDelegate;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->쇰뒗:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->弱밧:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->쇰뒗:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-eq v1, v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Ljg;

    invoke-direct {v0, p0}, Ljg;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/preference/Preference;)V
    .locals 2

    invoke-static {}, Lms;->뚮젮議뚮떎怨()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Ljl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljl;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;Ljl;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 1

    new-instance v0, Ljh;

    invoke-direct {v0, p0}, Ljh;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Lji;

    invoke-direct {v0, p0}, Lji;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/preference/PreferenceGroup;Landroid/preference/ListPreference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x4

    const/4 v4, 0x0

    invoke-static {}, Lcom/mxtech/app/AppUtils;->getProcessorCount()I

    move-result v1

    if-ge v1, v0, :cond_6

    :goto_0
    add-int/lit8 v1, v0, 0x1

    new-array v2, v1, [Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v2, v4

    sget v1, Lnt;->font_default:I

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    :goto_1
    if-le v1, v0, :cond_5

    invoke-virtual {p2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "custom_codec"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Ljj;

    invoke-direct {v0, p0, v5}, Ljj;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;Ljj;)V

    invoke-virtual {p3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    sget-boolean v0, Lcom/mxtech/videoplayer/L;->洹:Z

    if-nez v0, :cond_4

    invoke-virtual {p1, p4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t remove preference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1, p5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t remove preference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1, p6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t remove preference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, p7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t remove preference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method private 癤욱븳援(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "subtitle_folder"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Ljn;

    invoke-direct {v0, p0, v2}, Ljn;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;Ljn;)V

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lfw;->癤욱븳援()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t remove preference: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private 癤욱븳援(Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;)V
    .locals 3

    const/16 v2, 0x8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    sget-boolean v0, Lms;->洹멸:Z

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "button_backlight_off"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    const-string v1, "Can\'t remove preference: button_backlight_off"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_4

    const-string v0, "audio_focus"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    const-string v1, "Can\'t remove preference: audio_focus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/CheckBoxPreference;)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/ActivityPreferences;->궗(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/Preference;Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/PreferenceGroup;Landroid/preference/ListPreference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/PreferenceGroup;Landroid/preference/ListPreference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;)V

    return-void
.end method

.method public static synthetic 궗(Lcom/mxtech/videoplayer/ActivityPreferences;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->쇰뒗:Landroid/content/ComponentName;

    return-object v0
.end method

.method private 궗(Landroid/preference/Preference;)V
    .locals 9

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->먯꽌:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget v0, Lnt;->auto_detect:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lnw;->charsets:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1060010

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    :try_start_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->먯꽌:[Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->ㅼ꽑嫄:[Ljava/lang/CharSequence;

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->먯꽌:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    check-cast p1, Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->ㅼ꽑嫄:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "charset"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v5, "name"

    invoke-interface {v3, v0, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    const-string v6, "display_name"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v6, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v3, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic 궗(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/Preference;)V

    return-void
.end method

.method public static synthetic 먯꽌(Lcom/mxtech/videoplayer/ActivityPreferences;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityPreferences;->弱밧:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private 먯꽌(Landroid/preference/Preference;)V
    .locals 2

    new-instance v0, Ljm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljm;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;Ljm;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static synthetic 먯꽌(Lcom/mxtech/videoplayer/ActivityPreferences;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/ActivityPreferences;->먯꽌(Landroid/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1

    sget v0, Lnw;->preference_header:I

    invoke-virtual {p0, v0, p1}, Lcom/mxtech/videoplayer/ActivityPreferences;->loadHeadersFromResource(ILjava/util/List;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "list_theme"

    const-string v2, "white"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/mxtech/app/PreferenceActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityPreferences;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mxtech/app/MXApplication;

    invoke-virtual {v0, p0}, Lcom/mxtech/app/MXApplication;->癤욱븳援(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lms;->궗()I

    invoke-static {}, Lms;->뚮Ц()Z

    invoke-static {}, Lms;->먮()I

    invoke-static {}, Lms;->留먰븷()Z

    invoke-static {}, Lms;->덉쓣()Z

    invoke-static {}, Lms;->寃껋씠()Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    sget v0, Lnw;->preferences:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->addPreferencesFromResource(I)V

    const-string v0, "category_player_playback"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v1, "category_player_display"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;)V

    const-string v0, "subtitle_charset"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->궗(Landroid/preference/Preference;)V

    const-string v0, "category_subtitle_load"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string v1, "subtitle_folder"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "subtitle_show_hw"

    invoke-virtual {p0, v2}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;Landroid/preference/Preference;)V

    const-string v0, "typeface_dir"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/Preference;)V

    const-string v0, "reset_settings"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->먯꽌(Landroid/preference/Preference;)V

    const-string v0, "clear_history"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->ㅼ꽑嫄(Landroid/preference/Preference;)V

    const-string v0, "clear_thumbnail"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->弱밧(Landroid/preference/Preference;)V

    const-string v0, "respect_nomedia"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "show_hidden"

    invoke-virtual {p0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/Preference;Landroid/preference/Preference;)V

    const-string v0, "category_hardware_decoder"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    const-string v0, "core_limit"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    const-string v0, "custom_codec"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v0, "omxdecoder"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v0, "omxdecoder_local"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v0, "omxdecoder_net"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    const-string v0, "omxdecoder_10bit"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/PreferenceGroup;Landroid/preference/ListPreference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    const-string v0, "play_video_links"

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Landroid/preference/CheckBoxPreference;)V

    goto/16 :goto_0
.end method

.method protected 癤욱븳援(Ljava/lang/String;)I
    .locals 1

    const-string v0, "white"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lnu;->WhiteTheme_Simple:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lnu;->BlackTheme_Simple:I

    goto :goto_0
.end method
