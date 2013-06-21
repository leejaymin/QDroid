.class public Lcom/rookiestudio/perfectviewer/TPreferences;
.super Landroid/preference/PreferenceActivity;
.source "TPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TPreferences$NoCaseComparator;
    }
.end annotation


# instance fields
.field private BackgroundArray:[Ljava/lang/String;

.field private BackgroundColor:Landroid/preference/Preference;

.field private BackgroundResArray:[I

.field private BacklightLevel:Landroid/preference/Preference;

.field private BookCoverSmoothFilter:Landroid/preference/ListPreference;

.field private BookshelfBGType:Lcom/rookiestudio/customize/ImageListPreference;

.field private BookshelfFolder:Landroid/preference/Preference;

.field private BookshelfTitleColor:Landroid/preference/Preference;

.field private BookshelfTitleEffect:Landroid/preference/ListPreference;

.field private BorderOffset:Landroid/preference/Preference;

.field private CacheScaled:Landroid/preference/CheckBoxPreference;

.field private DefaultScreenList:[Ljava/lang/String;

.field private EffectArray:[Ljava/lang/String;

.field private FileBrowserSort:Landroid/preference/ListPreference;

.field private FileSortList:[Ljava/lang/String;

.field private FontSizeList:[Ljava/lang/String;

.field private GestureChangePage:Landroid/preference/ListPreference;

.field private GestureChangePageList:[Ljava/lang/String;

.field private GoBackKeyList:[Ljava/lang/String;

.field private HardwareKeyManagement:Landroid/preference/Preference;

.field private KeyGoBack2:Landroid/preference/ListPreference;

.field private LanguageNameList:[Ljava/lang/String;

.field private LanguageValueList:[Ljava/lang/String;

.field private NeedRestart:Z

.field private OpenArchiveDo:Landroid/preference/ListPreference;

.field private OpenArchiveDoList:[Ljava/lang/String;

.field private OpenPageDirection:Landroid/preference/ListPreference;

.field private PageFooterDelay:Landroid/preference/Preference;

.field private PageFooterSize:Landroid/preference/ListPreference;

.field private PageHeaderDelay:Landroid/preference/Preference;

.field private PageHeaderSize:Landroid/preference/ListPreference;

.field private PageInfoModeList:[Ljava/lang/String;

.field private PageShadowSize:Landroid/preference/Preference;

.field private PageTransitionSpeed:Landroid/preference/Preference;

.field private PageTransitions:Landroid/preference/ListPreference;

.field private PageTransitionsList:[Ljava/lang/String;

.field private Preferences:Landroid/content/SharedPreferences;

.field private PreferencesManagement:Landroid/preference/Preference;

.field private QuickBarCustomize:Landroid/preference/Preference;

.field private ScreenOrientation:Landroid/preference/ListPreference;

.field private ScreenOrientationList:[Ljava/lang/String;

.field private ScrollDistance:Landroid/preference/Preference;

.field private ScrollDistanceFormat:Ljava/lang/String;

.field private ShowClockColor:Landroid/preference/Preference;

.field private ShowClockSize:Landroid/preference/ListPreference;

.field private ShowHeaderColor:Landroid/preference/Preference;

.field private ShowHeaderMode:Landroid/preference/ListPreference;

.field private ShowInfoColor:Landroid/preference/Preference;

.field private ShowInfoMode:Landroid/preference/ListPreference;

.field private SlideshowSpeed:Landroid/preference/Preference;

.field private SlideshowTransitionSpeed:Landroid/preference/Preference;

.field private SlideshowTransitions:Landroid/preference/ListPreference;

.field private SlideshowTransitionsList:[Ljava/lang/String;

.field private SmoothFilterList:[Ljava/lang/String;

.field private StartupScreen:Landroid/preference/ListPreference;

.field private ThumbSmoothFilter:Landroid/preference/ListPreference;

.field private UseLanguage:Landroid/preference/ListPreference;

.field private ZoomPitch:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 72
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BackgroundResArray:[I

    .line 79
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "**"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fa"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hu"

    aput-object v2, v0, v1

    const-string v1, "ru"

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "zhCN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ko"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->LanguageValueList:[Ljava/lang/String;

    .line 86
    iput-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->NeedRestart:Z

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScrollDistanceFormat:Ljava/lang/String;

    .line 25
    return-void

    .line 72
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x8ct 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public GetDurationSummary(I)Ljava/lang/String;
    .locals 3
    .parameter "Duration"

    .prologue
    .line 491
    const v1, 0x7f0a0112

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, S:Ljava/lang/String;
    if-lez p1, :cond_0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00bf

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_0
    return-object v0
.end method

.method public PickBackgroundColor()I
    .locals 3

    .prologue
    .line 541
    new-instance v0, Lcom/rookiestudio/customize/AmbilWarnaDialog;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->BackgroundColor:I

    new-instance v2, Lcom/rookiestudio/perfectviewer/TPreferences$2;

    invoke-direct {v2, p0}, Lcom/rookiestudio/perfectviewer/TPreferences$2;-><init>(Lcom/rookiestudio/perfectviewer/TPreferences;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/rookiestudio/customize/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    .line 552
    .local v0, dialog:Lcom/rookiestudio/customize/AmbilWarnaDialog;
    invoke-virtual {v0}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->show()V

    .line 553
    const/4 v1, 0x0

    return v1
.end method

.method public PickBookshelfTitleColor()I
    .locals 3

    .prologue
    .line 524
    new-instance v0, Lcom/rookiestudio/customize/AmbilWarnaDialog;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->BookshelfTitleColor:I

    new-instance v2, Lcom/rookiestudio/perfectviewer/TPreferences$1;

    invoke-direct {v2, p0}, Lcom/rookiestudio/perfectviewer/TPreferences$1;-><init>(Lcom/rookiestudio/perfectviewer/TPreferences;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/rookiestudio/customize/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    .line 535
    .local v0, dialog:Lcom/rookiestudio/customize/AmbilWarnaDialog;
    invoke-virtual {v0}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->show()V

    .line 536
    const/4 v1, 0x0

    return v1
.end method

.method public PickClockColor()I
    .locals 3

    .prologue
    .line 558
    new-instance v0, Lcom/rookiestudio/customize/AmbilWarnaDialog;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ShowClockColor:I

    new-instance v2, Lcom/rookiestudio/perfectviewer/TPreferences$3;

    invoke-direct {v2, p0}, Lcom/rookiestudio/perfectviewer/TPreferences$3;-><init>(Lcom/rookiestudio/perfectviewer/TPreferences;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/rookiestudio/customize/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    .line 569
    .local v0, dialog:Lcom/rookiestudio/customize/AmbilWarnaDialog;
    invoke-virtual {v0}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->show()V

    .line 570
    const/4 v1, 0x0

    return v1
.end method

.method public PickHeaderColor()I
    .locals 3

    .prologue
    .line 575
    new-instance v0, Lcom/rookiestudio/customize/AmbilWarnaDialog;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderColor:I

    new-instance v2, Lcom/rookiestudio/perfectviewer/TPreferences$4;

    invoke-direct {v2, p0}, Lcom/rookiestudio/perfectviewer/TPreferences$4;-><init>(Lcom/rookiestudio/perfectviewer/TPreferences;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/rookiestudio/customize/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    .line 586
    .local v0, dialog:Lcom/rookiestudio/customize/AmbilWarnaDialog;
    invoke-virtual {v0}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->show()V

    .line 587
    const/4 v1, 0x0

    return v1
.end method

.method public PickInfoColor()I
    .locals 3

    .prologue
    .line 592
    new-instance v0, Lcom/rookiestudio/customize/AmbilWarnaDialog;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoColor:I

    new-instance v2, Lcom/rookiestudio/perfectviewer/TPreferences$5;

    invoke-direct {v2, p0}, Lcom/rookiestudio/perfectviewer/TPreferences$5;-><init>(Lcom/rookiestudio/perfectviewer/TPreferences;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/rookiestudio/customize/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    .line 603
    .local v0, dialog:Lcom/rookiestudio/customize/AmbilWarnaDialog;
    invoke-virtual {v0}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->show()V

    .line 604
    const/4 v1, 0x0

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/high16 v9, 0x42c8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/TStartup;->LibraryLoadded:Z

    if-nez v2, :cond_0

    .line 92
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TStartup;->CheckNativeLibrary(Landroid/content/Context;)I

    .line 94
    :cond_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    const-string v3, "**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    sget-object v2, Lcom/rookiestudio/perfectviewer/Config;->UseLanguage:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/rookiestudio/perfectviewer/TUtility;->setLocale(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 98
    const-string v3, "perfect_viewer_settings"

    .line 97
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 99
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->addPreferencesFromResource(I)V

    .line 101
    sget-object v2, Lcom/rookiestudio/perfectviewer/Config;->FunctionListStr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 102
    .local v0, entries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/rookiestudio/perfectviewer/Config;->FunctionListStr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->Preferences:Landroid/content/SharedPreferences;

    .line 106
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->Preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 107
    const-string v2, "HardwareKeyManagement"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->HardwareKeyManagement:Landroid/preference/Preference;

    .line 108
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->HardwareKeyManagement:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    const-string v2, "EnableCacheScaledImage"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->CacheScaled:Landroid/preference/CheckBoxPreference;

    .line 110
    invoke-static {}, Lcom/rookiestudio/perfectviewer/TUtility;->GetTotalMemory()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    const/16 v3, 0x140

    if-ge v2, v3, :cond_2

    .line 111
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->CacheScaled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->CacheScaled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 113
    sput-boolean v6, Lcom/rookiestudio/perfectviewer/Config;->EnableCacheScaledImage:Z

    .line 117
    :cond_2
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientationList:[Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientationList:[Ljava/lang/String;

    const v3, 0x7f0a015d

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 119
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientationList:[Ljava/lang/String;

    const v3, 0x7f0a015e

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 120
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientationList:[Ljava/lang/String;

    const v3, 0x7f0a015f

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 121
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientationList:[Ljava/lang/String;

    const v3, 0x7f0a0160

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 122
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientationList:[Ljava/lang/String;

    const/4 v3, 0x4

    const v4, 0x7f0a0161

    invoke-virtual {p0, v4}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 123
    const-string v2, "ScreenOrientation"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientation:Landroid/preference/ListPreference;

    .line 124
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientation:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientationList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientation:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientationList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->LanguageNameList:[Ljava/lang/String;

    .line 127
    const-string v2, "UseLanguage"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->UseLanguage:Landroid/preference/ListPreference;

    .line 128
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->UseLanguage:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->LanguageNameList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->UseLanguage:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->LanguageValueList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->UseLanguage:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->UseLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GoBackKeyList:[Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GoBackKeyList:[Ljava/lang/String;

    const v3, 0x7f0a011c

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 133
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GoBackKeyList:[Ljava/lang/String;

    const v3, 0x7f0a009a

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 134
    const-string v2, "KeyGoBack2"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->KeyGoBack2:Landroid/preference/ListPreference;

    .line 135
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->KeyGoBack2:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GoBackKeyList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->KeyGoBack2:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GoBackKeyList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->KeyGoBack2:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageInfoModeList:[Ljava/lang/String;

    .line 138
    const-string v2, "OpenArchiveDo"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenArchiveDo:Landroid/preference/ListPreference;

    .line 139
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenArchiveDoList:[Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenArchiveDo:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenArchiveDoList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenArchiveDo:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenArchiveDoList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->OpenArchiveDo:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    const-string v2, "GestureChangePage"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GestureChangePage:Landroid/preference/ListPreference;

    .line 143
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GestureChangePageList:[Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GestureChangePage:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GestureChangePageList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GestureChangePage:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GestureChangePageList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->GestureChangePage:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    const-string v2, "OpenPageDirection"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenPageDirection:Landroid/preference/ListPreference;

    .line 147
    const-string v2, "PageTransition"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitions:Landroid/preference/ListPreference;

    .line 148
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitionsList:[Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitions:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitionsList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitions:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitionsList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    const-string v2, "PageTransitionSpeed"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitionSpeed:Landroid/preference/Preference;

    .line 152
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitionSpeed:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->PageTransitionSpeed:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a00b6

    invoke-virtual {p0, v4}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    const-string v2, "SlideshowTransition"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitions:Landroid/preference/ListPreference;

    .line 155
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitionsList:[Ljava/lang/String;

    .line 156
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitions:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitionsList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitions:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitionsList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->SlideshowTransition:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    const-string v2, "SlideshowSpeed"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowSpeed:Landroid/preference/Preference;

    .line 159
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowSpeed:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->SlideshowSpeed:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a00bf

    invoke-virtual {p0, v4}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    const-string v2, "SlideshowTransitionSpeed"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitionSpeed:Landroid/preference/Preference;

    .line 161
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitionSpeed:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->SlideshowTransitionSpeed:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a00b6

    invoke-virtual {p0, v4}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    const v3, 0x7f0a003a

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 165
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    const v3, 0x7f0a003b

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 166
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    const v3, 0x7f0a003c

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 167
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    const v3, 0x7f0a003d

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 168
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    const/4 v3, 0x4

    const v4, 0x7f0a003e

    invoke-virtual {p0, v4}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 169
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    const/4 v3, 0x5

    const v4, 0x7f0a003f

    invoke-virtual {p0, v4}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 170
    const-string v2, "BookCoverSmoothFilter"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookCoverSmoothFilter:Landroid/preference/ListPreference;

    .line 171
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookCoverSmoothFilter:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 172
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookCoverSmoothFilter:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->BookCoverSmoothFilter:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    const-string v2, "ThumbSmoothFilter"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ThumbSmoothFilter:Landroid/preference/ListPreference;

    .line 174
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ThumbSmoothFilter:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ThumbSmoothFilter:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ThumbSmoothFilter:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->DefaultScreenList:[Ljava/lang/String;

    .line 178
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->DefaultScreenList:[Ljava/lang/String;

    const v3, 0x7f0a0103

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 179
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->DefaultScreenList:[Ljava/lang/String;

    const v3, 0x7f0a00ca

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 180
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->DefaultScreenList:[Ljava/lang/String;

    const v3, 0x7f0a0113

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 181
    const-string v2, "StartupScreen"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->StartupScreen:Landroid/preference/ListPreference;

    .line 182
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->StartupScreen:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->DefaultScreenList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->StartupScreen:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->DefaultScreenList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->StartupScreen:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    new-array v0, v7, [Ljava/lang/String;

    .line 185
    const v2, 0x7f0a0046

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 186
    const v2, 0x7f0a0047

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 187
    const-string v2, "OpenPageDirection"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenPageDirection:Landroid/preference/ListPreference;

    .line 188
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenPageDirection:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 189
    sget v2, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v2, :cond_4

    .line 190
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenPageDirection:Landroid/preference/ListPreference;

    const v3, 0x7f0a0046

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    :goto_1
    const-string v2, "ScreenBrightness"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BacklightLevel:Landroid/preference/Preference;

    .line 199
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BacklightLevel:Landroid/preference/Preference;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 200
    const-string v2, "ScrollDistance"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScrollDistance:Landroid/preference/Preference;

    .line 201
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScrollDistanceFormat:Ljava/lang/String;

    .line 202
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScrollDistance:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScrollDistanceFormat:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->ScrollDistance:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    const-string v2, "ZoomPitch"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ZoomPitch:Landroid/preference/Preference;

    .line 205
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ZoomPitch:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ZoomPitch:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    const-string v2, "PageShadowSize"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageShadowSize:Landroid/preference/Preference;

    .line 207
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageShadowSize:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->PageShadowSize:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    const-string v2, "BorderOffset"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BorderOffset:Landroid/preference/Preference;

    .line 209
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BorderOffset:Landroid/preference/Preference;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->BorderOffset:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FileSortList:[Ljava/lang/String;

    .line 212
    const-string v2, "FileBrowserSort"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FileBrowserSort:Landroid/preference/ListPreference;

    .line 213
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FileBrowserSort:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 214
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FileBrowserSort:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FileSortList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    mul-int/lit8 v4, v4, 0x4

    sget v5, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    add-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FileBrowserSort:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FileSortList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 217
    const-string v2, "BookshelfBGType"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/rookiestudio/customize/ImageListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfBGType:Lcom/rookiestudio/customize/ImageListPreference;

    .line 218
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BackgroundArray:[Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfBGType:Lcom/rookiestudio/customize/ImageListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BackgroundArray:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/rookiestudio/customize/ImageListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 220
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfBGType:Lcom/rookiestudio/customize/ImageListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BackgroundResArray:[I

    invoke-virtual {v2, v3}, Lcom/rookiestudio/customize/ImageListPreference;->setImageResources([I)V

    .line 221
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfBGType:Lcom/rookiestudio/customize/ImageListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BackgroundArray:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->BookshelfBGType:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/rookiestudio/customize/ImageListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    const-string v2, "BookshelfTitleEffect"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfTitleEffect:Landroid/preference/ListPreference;

    .line 223
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->EffectArray:[Ljava/lang/String;

    .line 224
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfTitleEffect:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->EffectArray:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 225
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfTitleEffect:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->EffectArray:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->BookshelfTitleEffect:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    const-string v2, "BookshelfTitleColor"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfTitleColor:Landroid/preference/Preference;

    .line 227
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfTitleColor:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 228
    const-string v2, "BookshelfFolderManagement"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfFolder:Landroid/preference/Preference;

    .line 229
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfFolder:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 231
    const-string v2, "QuickBarCustomize"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->QuickBarCustomize:Landroid/preference/Preference;

    .line 232
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->QuickBarCustomize:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 233
    const-string v2, "PreferencesManagement"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PreferencesManagement:Landroid/preference/Preference;

    .line 234
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PreferencesManagement:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 241
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    .line 242
    const-string v2, "BackgroundColor"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BackgroundColor:Landroid/preference/Preference;

    .line 243
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BackgroundColor:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 244
    const-string v2, "ShowClockColor"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowClockColor:Landroid/preference/Preference;

    .line 245
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowClockColor:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 246
    const-string v2, "ShowClockSize"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowClockSize:Landroid/preference/ListPreference;

    .line 247
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowClockSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 248
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowClockSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ShowClockSize:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    const-string v2, "ShowHeaderMode"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowHeaderMode:Landroid/preference/ListPreference;

    .line 251
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowHeaderMode:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageInfoModeList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowHeaderMode:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageInfoModeList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderMode:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    const-string v2, "ShowHeaderColor"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowHeaderColor:Landroid/preference/Preference;

    .line 254
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowHeaderColor:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    const-string v2, "ShowHeaderSize"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageHeaderSize:Landroid/preference/ListPreference;

    .line 256
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageHeaderSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageHeaderSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderSize:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    const-string v2, "ShowHeaderDelay"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageHeaderDelay:Landroid/preference/Preference;

    .line 259
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageHeaderDelay:Landroid/preference/Preference;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderDelay:I

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->GetDurationSummary(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    const-string v2, "ShowInfoMode"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowInfoMode:Landroid/preference/ListPreference;

    .line 262
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowInfoMode:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageInfoModeList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowInfoMode:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageInfoModeList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoMode:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    const-string v2, "ShowInfoColor"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowInfoColor:Landroid/preference/Preference;

    .line 265
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowInfoColor:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 266
    const-string v2, "ShowInfoSize"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageFooterSize:Landroid/preference/ListPreference;

    .line 267
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageFooterSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageFooterSize:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoSize:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    const-string v2, "ShowInfoDelay"

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageFooterDelay:Landroid/preference/Preference;

    .line 270
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageFooterDelay:Landroid/preference/Preference;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoDelay:I

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->GetDurationSummary(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    return-void

    .line 103
    :cond_3
    sget-object v2, Lcom/rookiestudio/perfectviewer/Config;->FunctionListStr:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenPageDirection:Landroid/preference/ListPreference;

    const v3, 0x7f0a0047

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->Preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 341
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 342
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 306
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->Preferences:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->LoadSetting(Landroid/content/SharedPreferences;)V

    .line 307
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->EnableBorderDetect:Z

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->BorderOffset:I

    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/TBitmap;->SetBorderDetect(ZI)V

    .line 308
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->WallpaperManagement:Z

    if-nez v1, :cond_0

    .line 309
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/TUtility;->SetBootReceiver(Z)V

    .line 310
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/PerfectViewer/wallpaper.png"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, WallpaperFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 315
    .end local v0           #WallpaperFile:Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-eqz v1, :cond_1

    .line 316
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoMode:I

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetInfoStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageInfoStr(Ljava/lang/String;)V

    .line 317
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderMode:I

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetInfoStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageHeaderStr(Ljava/lang/String;)V

    .line 319
    :cond_1
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    if-eqz v1, :cond_2

    .line 320
    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->LowMemoryMode:Z

    if-eqz v1, :cond_4

    .line 321
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TViewerMain;->SetLowMemMode(I)V

    .line 326
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->NeedRestart:Z

    if-eqz v1, :cond_5

    .line 327
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    if-eqz v1, :cond_3

    .line 328
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewerMain;->AskRestart()V

    .line 335
    :cond_3
    :goto_1
    return-void

    .line 323
    :cond_4
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-virtual {v1, v4}, Lcom/rookiestudio/perfectviewer/TViewerMain;->SetLowMemMode(I)V

    goto :goto_0

    .line 331
    :cond_5
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    if-eqz v1, :cond_3

    .line 332
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 500
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookshelfFolderManagement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->CreateBookshelfFolderManagement(Landroid/app/Activity;)V

    .line 519
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HardwareKeyManagement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->CreateHardwareKeyManagement(Landroid/app/Activity;)V

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickBarCustomize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->CreateQuickBarCustomize(Landroid/app/Activity;)V

    goto :goto_0

    .line 506
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreferencesManagement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    invoke-static {p0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->CreatePreferencesManagement(Landroid/app/Activity;)V

    goto :goto_0

    .line 508
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 509
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->PickBackgroundColor()I

    goto :goto_0

    .line 510
    :cond_5
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowClockColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 511
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->PickClockColor()I

    goto :goto_0

    .line 512
    :cond_6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowHeaderColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 513
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->PickHeaderColor()I

    goto :goto_0

    .line 514
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowInfoColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 515
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->PickInfoColor()I

    goto :goto_0

    .line 516
    :cond_8
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookshelfTitleColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPreferences;->PickBookshelfTitleColor()I

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 291
    return-void
.end method

.method public onSelectFolder(Ljava/lang/String;)V
    .locals 2
    .parameter "SelectedFolder"

    .prologue
    .line 609
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 610
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfFolder:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 611
    const-string v0, "BookshelfFolder"

    invoke-static {v0, p1}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/16 v6, 0x190

    const/4 v4, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 379
    const-string v1, "ZoomPitch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ZoomPitch:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZoomPitch"

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const-string v1, "UseLanguage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->UseLanguage:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->UseLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 383
    :cond_2
    const-string v1, "PageShadowSize"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageShadowSize:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PageShadowSize"

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 385
    :cond_3
    const-string v1, "BorderOffset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 386
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BorderOffset:Landroid/preference/Preference;

    const-string v2, "BorderOffset"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 387
    :cond_4
    const-string v1, "ScrollDistance"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 388
    const-string v1, "ScrollDistance"

    const/16 v2, 0x50

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ScrollDistance:I

    .line 389
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScrollDistance:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScrollDistanceFormat:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/rookiestudio/perfectviewer/Config;->ScrollDistance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 390
    :cond_5
    const-string v1, "BookshelfFolder"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 391
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    const-string v2, "BookshelfFolder"

    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto/16 :goto_0

    .line 392
    :cond_6
    const-string v1, "ScreenOrientation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 393
    const-string v1, "ScreenOrientation"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    .line 394
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientation:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ScreenOrientationList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 395
    :cond_7
    const-string v1, "KeyGoBack2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 396
    const-string v1, "KeyGoBack2"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->KeyGoBack2:I

    .line 397
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->KeyGoBack2:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GoBackKeyList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->KeyGoBack2:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 398
    :cond_8
    const-string v1, "OpenArchiveDo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 399
    const-string v1, "OpenArchiveDo"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->OpenArchiveDo:I

    .line 400
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenArchiveDo:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenArchiveDoList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->OpenArchiveDo:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 401
    :cond_9
    const-string v1, "PageTransition"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 402
    const-string v1, "PageTransition"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    .line 403
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitionsList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->PageTransition:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 404
    :cond_a
    const-string v1, "PageTransitionSpeed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 405
    const-string v1, "PageTransitionSpeed"

    invoke-interface {p1, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->PageTransitionSpeed:I

    .line 406
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageTransitionSpeed:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->PageTransitionSpeed:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00b6

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 407
    :cond_b
    const-string v1, "SlideshowTransition"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 408
    const-string v1, "SlideshowTransition"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->SlideshowTransition:I

    .line 409
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitionsList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->SlideshowTransition:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 410
    :cond_c
    const-string v1, "SlideshowTransitionSpeed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 411
    const-string v1, "SlideshowTransitionSpeed"

    invoke-interface {p1, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->SlideshowTransitionSpeed:I

    .line 412
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowTransitionSpeed:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->SlideshowTransitionSpeed:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00b6

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 413
    :cond_d
    const-string v1, "SlideshowSpeed"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 414
    const-string v1, "SlideshowSpeed"

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->SlideshowSpeed:I

    .line 415
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SlideshowSpeed:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->SlideshowSpeed:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a00bf

    invoke-virtual {p0, v3}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 416
    :cond_e
    const-string v1, "ScreenBrightness"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 417
    const-string v1, "ScreenBrightness"

    invoke-interface {p1, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    .line 418
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BacklightLevel:Landroid/preference/Preference;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ScreenBrightness:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 419
    :cond_f
    const-string v1, "EnableBrightnessControl"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 420
    const-string v1, "EnableBrightnessControl"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->EnableBrightnessControl:Z

    goto/16 :goto_0

    .line 421
    :cond_10
    const-string v1, "OpenPageDirection"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 422
    const-string v1, "OpenPageDirection"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    .line 423
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    if-nez v1, :cond_11

    .line 424
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenPageDirection:Landroid/preference/ListPreference;

    const v2, 0x7f0a0046

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 426
    :cond_11
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->OpenPageDirection:Landroid/preference/ListPreference;

    const v2, 0x7f0a0047

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 428
    :cond_12
    const-string v1, "GestureChangePage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 429
    const-string v1, "GestureChangePage"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->GestureChangePage:I

    .line 430
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GestureChangePage:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->GestureChangePageList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->GestureChangePage:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 431
    :cond_13
    const-string v1, "ShowClockSize"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 432
    const-string v1, "ShowClockSize"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ShowClockSize:I

    .line 433
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowClockSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowClockSize:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 434
    :cond_14
    const-string v1, "ShowHeaderSize"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 435
    const-string v1, "ShowHeaderSize"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderSize:I

    .line 436
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageHeaderSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderSize:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 437
    :cond_15
    const-string v1, "ShowInfoSize"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 438
    const-string v1, "ShowInfoSize"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoSize:I

    .line 439
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageFooterSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoSize:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 440
    :cond_16
    const-string v1, "ShowInfoMode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 441
    const-string v1, "ShowInfoMode"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoMode:I

    .line 442
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowInfoMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageInfoModeList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoMode:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 443
    :cond_17
    const-string v1, "ShowHeaderMode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 444
    const-string v1, "ShowHeaderMode"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderMode:I

    .line 445
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ShowHeaderMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageInfoModeList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderMode:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 446
    :cond_18
    const-string v1, "ShowHeaderDelay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 447
    const-string v1, "ShowHeaderDelay"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderDelay:I

    .line 448
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageHeaderDelay:Landroid/preference/Preference;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ShowHeaderDelay:I

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->GetDurationSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 449
    :cond_19
    const-string v1, "ShowInfoDelay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 450
    const-string v1, "ShowInfoDelay"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoDelay:I

    .line 451
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageFooterDelay:Landroid/preference/Preference;

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoDelay:I

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->GetDurationSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 452
    :cond_1a
    const-string v1, "ShowInfoSize"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 453
    const-string v1, "ShowInfoSize"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoSize:I

    .line 454
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->PageFooterSize:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FontSizeList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ShowInfoSize:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 455
    :cond_1b
    const-string v1, "IncrementalScan"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 456
    const-string v1, "IncrementalScan"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->IncrementalScan:Z

    goto/16 :goto_0

    .line 457
    :cond_1c
    const-string v1, "BookshelfBGType"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 458
    const-string v1, "BookshelfBGType"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->BookshelfBGType:I

    .line 459
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfBGType:Lcom/rookiestudio/customize/ImageListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BackgroundArray:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->BookshelfBGType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/rookiestudio/customize/ImageListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 460
    :cond_1d
    const-string v1, "BookshelfTitleEffect"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 461
    const-string v1, "BookshelfTitleEffect"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->BookshelfTitleEffect:I

    .line 462
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookshelfTitleEffect:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->EffectArray:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->BookshelfTitleEffect:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 463
    :cond_1e
    const-string v1, "FileBrowserSort"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 464
    const-string v1, "FileBrowserSort"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 465
    .local v0, SortType:I
    rem-int/lit8 v1, v0, 0x4

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    .line 466
    div-int/lit8 v1, v0, 0x4

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    .line 467
    const-string v1, "FileSortType"

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileSortType:I

    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 468
    const-string v1, "FileSortDirection"

    sget v2, Lcom/rookiestudio/perfectviewer/Config;->FileSortDirection:I

    invoke-static {v1, v2}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 469
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FileBrowserSort:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->FileSortList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 470
    .end local v0           #SortType:I
    :cond_1f
    const-string v1, "StartupScreen"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 471
    const-string v1, "StartupScreen"

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->StartupScreen:I

    .line 472
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->StartupScreen:I

    if-ne v1, v3, :cond_20

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 473
    const v1, 0x7f0a0074

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a00d5

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1080027

    invoke-static {p0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/TUtility;->MessageBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 474
    sput v5, Lcom/rookiestudio/perfectviewer/Config;->StartupScreen:I

    .line 475
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->StartupScreen:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 476
    const-string v1, "StartupScreen"

    invoke-static {v1, v5}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;I)V

    .line 478
    :cond_20
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->StartupScreen:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->DefaultScreenList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->StartupScreen:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 479
    :cond_21
    const-string v1, "BookCoverSmoothFilter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 480
    const-string v1, "BookCoverSmoothFilter"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->BookCoverSmoothFilter:I

    .line 481
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->BookCoverSmoothFilter:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->BookCoverSmoothFilter:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 482
    :cond_22
    const-string v1, "ThumbSmoothFilter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 483
    const-string v1, "ThumbSmoothFilter"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/rookiestudio/perfectviewer/Config;->ThumbSmoothFilter:I

    .line 484
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->ThumbSmoothFilter:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->SmoothFilterList:[Ljava/lang/String;

    sget v3, Lcom/rookiestudio/perfectviewer/Config;->ThumbSmoothFilter:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 485
    :cond_23
    const-string v1, "CropThumbnail"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "KeepScreenOn"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "ScreenAutoRotate"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "UseFullScreen"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    :cond_24
    iput-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TPreferences;->NeedRestart:Z

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 296
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 300
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 301
    return-void
.end method
