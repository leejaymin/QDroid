.class public Lnet/ser1/timetracker/Preferences;
.super Landroid/app/ListActivity;
.source "Preferences.java"


# static fields
.field private static final BOOL:Ljava/lang/String; = "bool"

.field private static final CHOOSE_DAY:I = 0x0

.field private static final CURRENT:Ljava/lang/String; = "current"

.field private static final CURRENTVALUE:Ljava/lang/String; = "current-value"

.field static DAYS_OF_WEEK:[Ljava/lang/String; = null

.field private static final DAY_OF_WEEK_PREF_IDX:I = 0x0

.field private static final DISABLED:Ljava/lang/String; = "disabled"

.field private static final DISABLEDVALUE:Ljava/lang/String; = "disabled-value"

.field private static final INT:Ljava/lang/String; = "int"

.field public static final LARGE:I = 0x18

.field public static final MEDIUM:I = 0x14

.field private static final PREFERENCE:Ljava/lang/String; = "preference"

.field private static final PREFERENCENAME:Ljava/lang/String; = "preference-name"

.field public static final SMALL:I = 0x10

.field private static final VALUETYPE:Ljava/lang/String; = "value-type"


# instance fields
.field protected final PREFS_ACTION:Ljava/lang/String;

.field private adapter:Landroid/widget/SimpleAdapter;

.field private applicationPreferences:Landroid/content/SharedPreferences;

.field private fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 200
    new-array v1, v4, [Ljava/lang/String;

    sput-object v1, Lnet/ser1/timetracker/Preferences;->DAYS_OF_WEEK:[Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 30
    return-void

    .line 203
    :cond_0
    sget-object v1, Lnet/ser1/timetracker/Preferences;->DAYS_OF_WEEK:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 48
    const-string v0, "PrefsAction"

    iput-object v0, p0, Lnet/ser1/timetracker/Preferences;->PREFS_ACTION:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lnet/ser1/timetracker/Preferences;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->prefs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lnet/ser1/timetracker/Preferences;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->adapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method private addBooleanPreference(ILjava/lang/String;II)V
    .locals 8
    .parameter "prefName"
    .parameter "name"
    .parameter "enabled"
    .parameter "disabled"

    .prologue
    const/4 v7, 0x0

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v2, pref:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, prefNameString:Ljava/lang/String;
    const-string v5, "preference"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v5, p0, Lnet/ser1/timetracker/Preferences;->applicationPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, p2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 113
    .local v4, value:Z
    invoke-virtual {p0, p3}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, enabledString:Ljava/lang/String;
    invoke-virtual {p0, p4}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, disabledString:Ljava/lang/String;
    const-string v5, "current"

    if-eqz v4, :cond_0

    move-object v6, v1

    :goto_0
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v5, "disabled"

    if-eqz v4, :cond_1

    move-object v6, v0

    :goto_1
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v5, "current-value"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v5, "disabled-value"

    if-eqz v4, :cond_2

    move v6, v7

    :goto_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v5, "value-type"

    const-string v6, "bool"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v5, "preference-name"

    invoke-interface {v2, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v5, p0, Lnet/ser1/timetracker/Preferences;->prefs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void

    :cond_0
    move-object v6, v0

    .line 115
    goto :goto_0

    :cond_1
    move-object v6, v1

    .line 116
    goto :goto_1

    .line 118
    :cond_2
    const/4 v6, 0x1

    goto :goto_2
.end method

.method private updateFontPrefs(Ljava/util/Map;I)V
    .locals 7
    .parameter
    .parameter "fontSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, pref:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "disabled-value"

    const-string v5, "disabled"

    const-string v4, "current"

    .line 125
    const v3, 0x7f06002a

    invoke-virtual {p0, v3}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, smallFont:Ljava/lang/String;
    const v3, 0x7f06002b

    invoke-virtual {p0, v3}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, mediumFont:Ljava/lang/String;
    const v3, 0x7f06002c

    invoke-virtual {p0, v3}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, largeFont:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 144
    :goto_0
    const-string v3, "current-value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void

    .line 130
    :sswitch_0
    const-string v3, "current"

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v3, "disabled"

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "disabled-value"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :sswitch_1
    const-string v3, "current"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v3, "disabled"

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v3, "disabled-value"

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :sswitch_2
    const-string v3, "current"

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v3, "disabled"

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v3, "disabled-value"

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x14 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public finish()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "value-type"

    const-string v11, "current-value"

    const-string v10, "PrefsAction"

    .line 175
    invoke-virtual {p0}, Lnet/ser1/timetracker/Preferences;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 176
    .local v3, returnIntent:Landroid/content/Intent;
    iget-object v5, p0, Lnet/ser1/timetracker/Preferences;->applicationPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lnet/ser1/timetracker/Preferences;->prefs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    invoke-virtual {p0}, Lnet/ser1/timetracker/Preferences;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "PrefsAction"

    const-string v6, "PrefsAction"

    invoke-virtual {v5, v10, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lnet/ser1/timetracker/Preferences;->setResult(ILandroid/content/Intent;)V

    .line 197
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 198
    return-void

    .line 177
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 178
    .local v1, pref:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "preference-name"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, prefName:Ljava/lang/String;
    const-string v5, "value-type"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "int"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 180
    const-string v5, "current-value"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 181
    .local v4, value:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lnet/ser1/timetracker/Preferences;->applicationPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v5, v7, :cond_0

    .line 182
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 185
    .end local v4           #value:Ljava/lang/Integer;
    :cond_2
    const-string v5, "value-type"

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "bool"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    const-string v5, "current-value"

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 187
    .local v4, value:Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v7, p0, Lnet/ser1/timetracker/Preferences;->applicationPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eq v5, v7, :cond_0

    .line 188
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v9, "preference"

    .line 53
    const-string v0, "timetracker.pref"

    invoke-virtual {p0, v0, v5}, Lnet/ser1/timetracker/Preferences;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/ser1/timetracker/Preferences;->applicationPreferences:Landroid/content/SharedPreferences;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/ser1/timetracker/Preferences;->prefs:Ljava/util/List;

    .line 55
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/Preferences;->setContentView(I)V

    .line 57
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v7, pref:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "preference"

    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->applicationPreferences:Landroid/content/SharedPreferences;

    const-string v1, "start_day"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    rem-int/lit8 v8, v0, 0x7

    .line 61
    .local v8, weekStart:I
    const-string v0, "current"

    add-int/lit8 v1, v8, 0x1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "current-value"

    if-nez v8, :cond_0

    move v1, v5

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "value-type"

    const-string v1, "int"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "preference-name"

    const-string v1, "start_day"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->prefs:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const v0, 0x7f060021

    const-string v1, "military-time"

    .line 68
    const v2, 0x7f060029

    const v3, 0x7f060028

    .line 67
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/ser1/timetracker/Preferences;->addBooleanPreference(ILjava/lang/String;II)V

    .line 70
    const v0, 0x7f060023

    const-string v1, "concurrent-tasks"

    .line 71
    const v2, 0x7f06002d

    const v3, 0x7f06002e

    .line 70
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/ser1/timetracker/Preferences;->addBooleanPreference(ILjava/lang/String;II)V

    .line 73
    const v0, 0x7f060024

    const-string v1, "sound-enabled"

    .line 74
    const v2, 0x7f06002f

    const v3, 0x7f060030

    .line 73
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/ser1/timetracker/Preferences;->addBooleanPreference(ILjava/lang/String;II)V

    .line 76
    const v0, 0x7f060025

    const-string v1, "vibrate-enabled"

    .line 77
    const v2, 0x7f060031

    const v3, 0x7f060032

    .line 76
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/ser1/timetracker/Preferences;->addBooleanPreference(ILjava/lang/String;II)V

    .line 79
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #pref:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 80
    .restart local v7       #pref:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "preference"

    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->applicationPreferences:Landroid/content/SharedPreferences;

    const-string v1, "font-size"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 83
    .local v6, fontSize:I
    invoke-direct {p0, v7, v6}, Lnet/ser1/timetracker/Preferences;->updateFontPrefs(Ljava/util/Map;I)V

    .line 84
    const-string v0, "value-type"

    const-string v1, "int"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "preference-name"

    const-string v1, "font-size"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->prefs:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/ser1/timetracker/Preferences;->fontMap:Ljava/util/Map;

    .line 88
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->fontMap:Ljava/util/Map;

    const v1, 0x7f06002a

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->fontMap:Ljava/util/Map;

    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->fontMap:Ljava/util/Map;

    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Preferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const v0, 0x7f060033

    const-string v1, "time_display"

    .line 93
    const v2, 0x7f060035

    const v3, 0x7f060034

    .line 92
    invoke-direct {p0, v0, v1, v2, v3}, Lnet/ser1/timetracker/Preferences;->addBooleanPreference(ILjava/lang/String;II)V

    .line 95
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 96
    iget-object v2, p0, Lnet/ser1/timetracker/Preferences;->prefs:Ljava/util/List;

    .line 97
    const v3, 0x7f030006

    .line 98
    new-array v4, v11, [Ljava/lang/String;

    const-string v1, "preference"

    aput-object v9, v4, v5

    const-string v1, "current"

    aput-object v1, v4, v10

    .line 99
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 95
    iput-object v0, p0, Lnet/ser1/timetracker/Preferences;->adapter:Landroid/widget/SimpleAdapter;

    .line 101
    iget-object v0, p0, Lnet/ser1/timetracker/Preferences;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/Preferences;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void

    .end local v6           #fontSize:I
    :cond_0
    move v1, v10

    .line 62
    goto/16 :goto_0

    .line 99
    :array_0
    .array-data 0x4
        0xft 0x0t 0x7t 0x7ft
        0x10t 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 209
    packed-switch p1, :pswitch_data_0

    .line 223
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 211
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lnet/ser1/timetracker/Preferences;->DAYS_OF_WEEK:[Ljava/lang/String;

    new-instance v2, Lnet/ser1/timetracker/Preferences$1;

    invoke-direct {v2, p0}, Lnet/ser1/timetracker/Preferences$1;-><init>(Lnet/ser1/timetracker/Preferences;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 149
    iget-object v5, p0, Lnet/ser1/timetracker/Preferences;->prefs:Ljava/util/List;

    long-to-int v6, p4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 151
    .local v4, pref:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "preference-name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    const-string v5, "start_day"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lnet/ser1/timetracker/Preferences;->showDialog(I)V

    .line 169
    :cond_0
    :goto_0
    iget-object v5, p0, Lnet/ser1/timetracker/Preferences;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v5}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 170
    invoke-virtual {p0}, Lnet/ser1/timetracker/Preferences;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidate()V

    .line 171
    return-void

    .line 155
    :cond_1
    const-string v5, "current"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, current:Ljava/lang/String;
    const-string v5, "disabled"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, disabled:Ljava/lang/String;
    const-string v5, "current"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v5, "disabled"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v5, "current-value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    .local v1, current_value:Ljava/lang/String;
    const-string v5, "disabled-value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, disabled_value:Ljava/lang/String;
    const-string v5, "current-value"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v5, "disabled-value"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v5, "preference-name"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v5, "font-size"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 165
    iget-object v5, p0, Lnet/ser1/timetracker/Preferences;->fontMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lnet/ser1/timetracker/Preferences;->updateFontPrefs(Ljava/util/Map;I)V

    goto :goto_0
.end method
