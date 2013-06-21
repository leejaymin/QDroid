.class public Lcom/wareone/tappmt/TapPMTPrefs;
.super Landroid/preference/PreferenceActivity;
.source "TapPMTPrefs.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/wareone/tappmt/TapPMTPrefs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/TapPMTPrefs;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private _getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 210
    return-object v1

    .line 208
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _setAccount(Ljava/lang/String;)V
    .locals 14
    .parameter "key"

    .prologue
    const/4 v13, 0x0

    const-string v12, "acc_name"

    const-string v11, "_id"

    .line 123
    move-object v7, p1

    .line 124
    .local v7, pref_key:Ljava/lang/String;
    const-string v9, "TapPMTPrefs"

    invoke-virtual {p0, v9, v13}, Lcom/wareone/tappmt/TapPMTPrefs;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 125
    .local v8, settings:Landroid/content/SharedPreferences;
    const-wide/16 v9, 0x1

    invoke-interface {v8, v7, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 127
    .local v0, acc_id:J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v5, m_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v6, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    .line 131
    .local v6, m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-virtual {v6}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 132
    invoke-virtual {v6}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccountRoot()Landroid/database/Cursor;

    move-result-object v2

    .line 133
    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 135
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v3, curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v9, "_id"

    const-string v9, "_id"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v9, "acc_name"

    const-string v9, "acc_name"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    .line 134
    if-nez v9, :cond_0

    .line 142
    .end local v3           #curMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 143
    invoke-virtual {v6}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 145
    const-string v9, "_id"

    invoke-direct {p0, v5, v11}, Lcom/wareone/tappmt/TapPMTPrefs;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 147
    .local v4, index:I
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    const-string v9, "acc_name"

    invoke-direct {p0, v5, v12}, Lcom/wareone/tappmt/TapPMTPrefs;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    new-array v11, v13, [Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    new-instance v11, Lcom/wareone/tappmt/TapPMTPrefs$5;

    invoke-direct {v11, p0, v8, v7, v5}, Lcom/wareone/tappmt/TapPMTPrefs$5;-><init>(Lcom/wareone/tappmt/TapPMTPrefs;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v9, v4, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 166
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 168
    return-void
.end method

.method private _setReminderTime()V
    .locals 11

    .prologue
    .line 171
    const-string v0, "TapPMTPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wareone/tappmt/TapPMTPrefs;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 173
    .local v10, settings:Landroid/content/SharedPreferences;
    const-string v0, "reminder_time"

    const-string v1, "00:00"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, old_time:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v6

    .line 175
    .local v6, d:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 177
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 184
    new-instance v2, Lcom/wareone/tappmt/TapPMTPrefs$6;

    invoke-direct {v2, p0, v10, v7}, Lcom/wareone/tappmt/TapPMTPrefs$6;-><init>(Lcom/wareone/tappmt/TapPMTPrefs;Landroid/content/SharedPreferences;Ljava/text/SimpleDateFormat;)V

    .line 200
    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    .line 183
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 201
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 202
    return-void

    .line 179
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 180
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method private _toggleReminder(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wareone/tappmt/ReminderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, it:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 103
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/TapPMTPrefs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/TapPMTPrefs;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private _toggleSync(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wareone/tappmt/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, it:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 113
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/TapPMTPrefs;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/TapPMTPrefs;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private _toggleUseExternal(Z)V
    .locals 2
    .parameter "isExternal"

    .prologue
    .line 89
    new-instance v0, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;
    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 91
    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->backupOrignal()V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->transfer(I)V

    .line 97
    :goto_0
    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 98
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->transfer(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/TapPMTPrefs;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/TapPMTPrefs;->_setAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/TapPMTPrefs;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMTPrefs;->_setReminderTime()V

    return-void
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/TapPMTPrefs;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/TapPMTPrefs;->_toggleReminder(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/TapPMTPrefs;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/wareone/tappmt/TapPMTPrefs;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/high16 v4, 0x7f05

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/TapPMTPrefs;->addPreferencesFromResource(I)V

    .line 36
    const-string v4, "show_account"

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/TapPMTPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 37
    .local v2, showme_account:Landroid/preference/Preference;
    new-instance v4, Lcom/wareone/tappmt/TapPMTPrefs$1;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/TapPMTPrefs$1;-><init>(Lcom/wareone/tappmt/TapPMTPrefs;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 48
    const-string v4, "widget_account"

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/TapPMTPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 49
    .local v3, widget_account:Landroid/preference/Preference;
    new-instance v4, Lcom/wareone/tappmt/TapPMTPrefs$2;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/TapPMTPrefs$2;-><init>(Lcom/wareone/tappmt/TapPMTPrefs;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 60
    const-string v4, "reminder_time"

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/TapPMTPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 61
    .local v0, reminderPref:Landroid/preference/Preference;
    new-instance v4, Lcom/wareone/tappmt/TapPMTPrefs$3;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/TapPMTPrefs$3;-><init>(Lcom/wareone/tappmt/TapPMTPrefs;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 72
    const-string v4, "reminder_service"

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/TapPMTPrefs;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 73
    .local v1, reminderService:Landroid/preference/Preference;
    new-instance v4, Lcom/wareone/tappmt/TapPMTPrefs$4;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/TapPMTPrefs$4;-><init>(Lcom/wareone/tappmt/TapPMTPrefs;)V

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    return-void
.end method
