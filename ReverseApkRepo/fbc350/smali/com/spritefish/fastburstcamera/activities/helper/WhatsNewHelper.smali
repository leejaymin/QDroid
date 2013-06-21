.class public Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;
.super Ljava/lang/Object;
.source "WhatsNewHelper.java"


# static fields
.field public static WHATSNEW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "3.5.0"

    sput-object v0, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;->WHATSNEW:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showWhatsNew(Landroid/app/Activity;ZLcom/google/android/apps/analytics/GoogleAnalyticsTracker;Landroid/content/Context;)Z
    .locals 16
    .parameter "caller"
    .parameter "forceShow"
    .parameter "tracker"
    .parameter "c"

    .prologue
    .line 21
    new-instance v14, Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v14, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 23
    .local v14, newConfig:Landroid/content/res/Configuration;
    if-nez p2, :cond_0

    iget-object v1, v14, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 234
    :goto_0
    return v1

    .line 26
    :cond_0
    const-string v8, "unknown"

    .line 28
    .local v8, app_ver:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v8, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_1
    new-instance v2, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 36
    .local v2, dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    const-string v1, "currentversion"

    const-string v3, "unknown"

    invoke-virtual {v2, v1, v3}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    .local v9, app_ver_prev:Ljava/lang/String;
    const-string v1, "last_whatsnew"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 39
    .local v13, lastShown:Ljava/lang/String;
    sget-object v1, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;->WHATSNEW:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v15, 0x0

    .line 42
    .local v15, showNew:Z
    :goto_2
    const-string v1, "unknown"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    if-eqz p3, :cond_1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "newinstall "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 51
    :cond_1
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    const-string v1, "last_whatsnew"

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;->WHATSNEW:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v15, 0x0

    .line 57
    :cond_2
    const-string v1, "currentversion"

    invoke-virtual {v2, v1, v8}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-nez p2, :cond_3

    if-eqz v15, :cond_6

    .line 61
    :cond_3
    if-eqz v15, :cond_4

    if-eqz p3, :cond_4

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "update "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 68
    :cond_4
    const-string v1, "last_whatsnew"

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;->WHATSNEW:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v10, b:Ljava/lang/StringBuilder;
    const-string v1, "Version 3.5.0 (23th of august 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "\u2022Bugfix/performance release\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "Version 3.1.7 (6th of august 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "\u2022Added GIF animations as a full feature\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "\u2022Fixed issue with orientation on front camera\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "\u2022Added french language\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "Version 3.1.6 (24th of july 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "\u2022Improved shot rate in low-light conditions\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "\u2022Fixed focus issues on Galaxy Note devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "Version 3.1.5 (12th of july 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "\u2022Added japanese language support\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "\u2022Fixed FC issues on 4.0 devices again (sorry for all the updates, but I really want these bugs to be fixed!)\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "Version 3.1.4 (11th of july 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "\u2022Fixed FC issues on 4.0 devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "Version 3.1.3 (4th of july 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "\u2022Fixed memory settings restart loop\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "Version 3.1.2 (3rd of july 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "\u2022Fixes for crashes on Android 2.2 devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "Version 3.1.0 (1st of july 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "\u2022Added support for front camera\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "Version 3.0.9 (26th of june 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "\u2022Fixed minor Facebook sharing bug on Sony devices\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "\u2022Added German language\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "Version 3.0.8 (22th of june 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "\u2022Deleted photos are now also deleted from the Gallery app\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, "\u2022Added korean and danish language support\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "Version 3.0.3 (19th of may 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "\u2022Fixed issue with some Galaxy S2 phones\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "Version 3.0.0 (7th of may 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "\u2022Fixed crash bug in Collage Creator\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "\u2022Major performance increase for some slower devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "Version 2.2.2 (19th of february 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "\u2022Focus and zoom can be done by tapping/scrolling on viewfinder ( full version only - must be enabled in preferences)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "\u2022Added time stretch effect for GIF animations\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "Version 2.2.1 (5th of february 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "\u2022Added film strip and other effects for collages\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "Version 2.1.9 (29th of january 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "\u2022Added multiple photo delete option\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "\u2022Added GIF animation feature (beta)\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "Version 2.1.8 (8th of january 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "\u2022Fixed issue with disappearing photos on some devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "Version 2.1.7 (1st of january 2012)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "\u2022Added more options for save location and labels\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "\u2022Fixed save bug on Galaxy Nexus\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, "Version 2.1.6 (15th of december 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "\u2022Fixed issue with ICS devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "Version 2.1.5 (5th of december 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "\u2022Added Live Wallpaper. Now you can see your fast burst bursts as a live wallpaper\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "Version 2.1.4 (28th of november 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "\u2022When viewing pictures, holding the arrow button will cycle trough the pictures\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "\u2022Fixes issues with collage creation (still work in progress)\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "Version 2.1.3 (22th of november 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "\u2022Fixed facebook sharing bug\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "\u2022Fixed more Dell issues\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, "Version 2.1.2 (13th of november 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "\u2022Various bugfixes.\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "Version 2.1.1 (10th of november 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "\u2022Fixed startup bug on some Dell devices.\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "Version 2.1.0 (29th of october 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "\u2022Improved performance when shooting.\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "\u2022Fixed out-of-memory crash bug.\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "Version 2.0.5 (25th of september 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "\u2022Fixed issue when rotating phone in picture viewer.\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "Version 2.0.4 (19th of september 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, "\u2022Fixed issue with aspect ratio in viewfinder.\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "Version 2.0.2 (11th of september 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "\u2022Speed improvements - now up to 25 pictures pr. second on high-end phones.\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "\u2022New setting : set delay between pictures\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "\u2022New setting : remove screen blink when shooting\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "Version 2.0.0 (27th of august 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "\u2022MAJOR improvement in burst size - now up to 100 pictures in a burst!\nYou can test this by selecting \"All Available\" in the Memory Buffer Size preference.\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "Version 1.3.1 (9th of august 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "\u2022Improved zoom on some HTC devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "Version 1.3.0 (6th of august 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "\u2022New memory option. This will allow high-end devices to take more photos\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "\u2022Possible fix for zoom on some HTC devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "Version 1.2.9 (1st of august 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "\u2022Corrected orientation of photos on tablets and some other devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "Version 1.2.8 (4th of july 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "\u2022Fixed crash issue with shutter control on some devices\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "Version 1.2.6 (27th of june 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "\u2022Added shoot anywhere option in preferences\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "Version 1.2.3 (13th of june 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "\u2022Added memory usage preferences\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "\u2022Fixed zoom bug on Nexus S\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "Version 1.2.2 (30th of may 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "\u2022Fixed various crash bugs\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "Version 1.2.1 (29th of may 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "\u2022Fixed issue with zoom lever\n\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "Version 1.2.0 (28th of may 2011)\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "\u2022Picture preview on main screen\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, "\u2022Burst list\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, "\u2022Share bursts or single pictures\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, "\u2022Browse pictures in burst\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "\u2022What\'s new dialog when updating to new version\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "\u2022Various bug fixes\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "show_whatsnew"

    const-string v3, "false"

    invoke-virtual {v2, v1, v3}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "What\'s new ?"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    new-instance v6, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper$1;-><init>(Lcom/spritefish/fastburstcamera/activities/helper/WhatsNewHelper;)V

    .line 229
    const/4 v7, 0x0

    move-object/from16 v1, p4

    .line 216
    invoke-static/range {v1 .. v7}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 230
    .local v11, builder3:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 232
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 30
    .end local v2           #dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    .end local v9           #app_ver_prev:Ljava/lang/String;
    .end local v10           #b:Ljava/lang/StringBuilder;
    .end local v11           #builder3:Landroid/app/AlertDialog$Builder;
    .end local v13           #lastShown:Ljava/lang/String;
    .end local v15           #showNew:Z
    :catch_0
    move-exception v12

    .line 32
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 39
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    .restart local v9       #app_ver_prev:Ljava/lang/String;
    .restart local v13       #lastShown:Ljava/lang/String;
    :cond_5
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 234
    .restart local v15       #showNew:Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
