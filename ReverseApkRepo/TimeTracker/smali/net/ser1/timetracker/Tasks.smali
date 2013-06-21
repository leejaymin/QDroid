.class public Lnet/ser1/timetracker/Tasks;
.super Landroid/app/ListActivity;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ser1/timetracker/Tasks$Result;,
        Lnet/ser1/timetracker/Tasks$TaskAdapter;,
        Lnet/ser1/timetracker/Tasks$TaskView;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$ser1$timetracker$Tasks$Result:[I = null

.field protected static final ADD_TASK:I = 0x0

.field protected static final BACKUP:I = 0xe

.field protected static final BACKUP_DB:I = 0x0

.field protected static final CHANGE_VIEW:I = 0x5

.field protected static final CONCURRENT:Ljava/lang/String; = "concurrent-tasks"

.field private static final DECIMAL_FORMAT:Ljava/lang/String; = null

.field protected static final DELETE_TASK:I = 0x2

.field private static final D_M:D = 1.6666666666666667

.field private static final D_S:D = 0.027777777777777776

.field protected static final EDIT_TASK:I = 0x1

.field private static final EDIT_TASK_BUNDLE_KEY:Ljava/lang/String; = "edit_task"

.field protected static final END_DATE:Ljava/lang/String; = "end_date"

.field protected static final ERROR_DIALOG:I = 0xb

.field protected static final EXPORT_VIEW:I = 0x9

.field protected static final FONTSIZE:Ljava/lang/String; = "font-size"

.field private static final FORMAT:Ljava/lang/String; = "%02d:%02d"

.field protected static final HELP:I = 0x8

.field protected static final MILITARY:Ljava/lang/String; = "military-time"

.field protected static final MORE:I = 0xd

.field private static final MS_H:J = 0x36ee80L

.field private static final MS_M:J = 0xea60L

.field private static final MS_S:J = 0x3e8L

.field protected static final PREFERENCES:I = 0xf

.field protected static final PROGRESS_DIALOG:I = 0x10

.field private static final REFRESH_MS:I = 0xea60

.field protected static final REPORT:I = 0x3

.field protected static final REPORT_DATE:Ljava/lang/String; = "report_date"

.field protected static final RESTORE_DB:I = 0x1

.field static final SDCARD:Ljava/lang/String; = "/sdcard/"

.field protected static final SELECT_END_DATE:I = 0x7

.field protected static final SELECT_START_DATE:I = 0x6

.field protected static final SET_WEEK_START_DAY:I = 0xc

.field protected static final SHOW_TIMES:I = 0x4

.field protected static final SOUND:Ljava/lang/String; = "sound-enabled"

.field protected static final START_DATE:Ljava/lang/String; = "start_date"

.field protected static final START_DAY:Ljava/lang/String; = "start_day"

.field protected static final SUCCESS_DIALOG:I = 0xa

.field protected static final TIMEDISPLAY:Ljava/lang/String; = "time_display"

.field public static final TIMETRACKERPREF:Ljava/lang/String; = "timetracker.pref"

.field protected static final VIBRATE:Ljava/lang/String; = "vibrate-enabled"

.field protected static final VIEW_MODE:Ljava/lang/String; = "view_mode"

.field private static clickPlayer:Landroid/media/MediaPlayer; = null

.field private static final dbBackup:Ljava/lang/String; = "/sdcard/timetracker.db"

.field private static final dbPath:Ljava/lang/String; = "/data/data/net.ser1.timetracker/databases/timetracker.db"

.field private static fontSize:I


# instance fields
.field private adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

.field private baseTitle:Ljava/lang/String;

.field private concurrency:Z

.field private decimalFormat:Z

.field private exportMessage:Ljava/lang/String;

.field private operationFailed:Landroid/app/AlertDialog;

.field private operationSucceed:Landroid/app/AlertDialog;

.field private playClick:Z

.field private preferences:Landroid/content/SharedPreferences;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private running:Z

.field private selectedTask:Lnet/ser1/timetracker/Task;

.field private timer:Landroid/os/Handler;

.field private updater:Ljava/util/TimerTask;

.field private vibrateAgent:Landroid/os/Vibrator;

.field private vibrateClick:Z


# direct methods
.method static synthetic $SWITCH_TABLE$net$ser1$timetracker$Tasks$Result()[I
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lnet/ser1/timetracker/Tasks;->$SWITCH_TABLE$net$ser1$timetracker$Tasks$Result:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/ser1/timetracker/Tasks$Result;->values()[Lnet/ser1/timetracker/Tasks$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/ser1/timetracker/Tasks$Result;->FAILURE:Lnet/ser1/timetracker/Tasks$Result;

    invoke-virtual {v1}, Lnet/ser1/timetracker/Tasks$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lnet/ser1/timetracker/Tasks$Result;->SUCCESS:Lnet/ser1/timetracker/Tasks$Result;

    invoke-virtual {v1}, Lnet/ser1/timetracker/Tasks$Result;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lnet/ser1/timetracker/Tasks;->$SWITCH_TABLE$net$ser1$timetracker$Tasks$Result:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "%02d"

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%02d"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1}, Ljava/text/DecimalFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/ser1/timetracker/Tasks;->DECIMAL_FORMAT:Ljava/lang/String;

    .line 135
    const/16 v0, 0x10

    sput v0, Lnet/ser1/timetracker/Tasks;->fontSize:I

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 129
    iput-boolean v1, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    .line 138
    iput-boolean v1, p0, Lnet/ser1/timetracker/Tasks;->playClick:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ser1/timetracker/Tasks;->vibrateClick:Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    .line 142
    iput-boolean v1, p0, Lnet/ser1/timetracker/Tasks;->decimalFormat:Z

    .line 86
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lnet/ser1/timetracker/Tasks;->fontSize:I

    return v0
.end method

.method static synthetic access$1(Lnet/ser1/timetracker/Tasks;)Z
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-boolean v0, p0, Lnet/ser1/timetracker/Tasks;->decimalFormat:Z

    return v0
.end method

.method static synthetic access$10(Lnet/ser1/timetracker/Tasks;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lnet/ser1/timetracker/Tasks;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks;->exportMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lnet/ser1/timetracker/Tasks;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lnet/ser1/timetracker/Tasks;->switchView(I)V

    return-void
.end method

.method static synthetic access$14(Lnet/ser1/timetracker/Tasks;)Lnet/ser1/timetracker/Task;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    return-object v0
.end method

.method static synthetic access$2(Lnet/ser1/timetracker/Tasks;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3(Lnet/ser1/timetracker/Tasks;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-boolean p1, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    return-void
.end method

.method static synthetic access$4(Lnet/ser1/timetracker/Tasks;)Z
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-boolean v0, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    return v0
.end method

.method static synthetic access$5(Lnet/ser1/timetracker/Tasks;)Lnet/ser1/timetracker/Tasks$TaskAdapter;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lnet/ser1/timetracker/Tasks;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks;->setTitle()V

    return-void
.end method

.method static synthetic access$7(Lnet/ser1/timetracker/Tasks;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lnet/ser1/timetracker/Tasks;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 629
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks;->getExportCsvFileName()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lnet/ser1/timetracker/Tasks;Ljava/io/File;)Lnet/ser1/timetracker/Tasks$Result;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lnet/ser1/timetracker/Tasks;->export(Ljava/io/File;)Lnet/ser1/timetracker/Tasks$Result;

    move-result-object v0

    return-object v0
.end method

.method private export(Ljava/io/File;)Lnet/ser1/timetracker/Tasks$Result;
    .locals 4
    .parameter "fout"

    .prologue
    .line 647
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 648
    .local v2, out:Ljava/io/OutputStream;
    iget-object v3, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {v3}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->getCurrentRange()Landroid/database/Cursor;

    move-result-object v0

    .line 649
    .local v0, currentRange:Landroid/database/Cursor;
    invoke-static {v2, v0}, Lnet/ser1/timetracker/CSVExporter;->exportRows(Ljava/io/OutputStream;Landroid/database/Cursor;)V

    .line 650
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 652
    sget-object v3, Lnet/ser1/timetracker/Tasks$Result;->SUCCESS:Lnet/ser1/timetracker/Tasks$Result;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v0           #currentRange:Landroid/database/Cursor;
    .end local v2           #out:Ljava/io/OutputStream;
    :goto_0
    return-object v3

    .line 653
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 654
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 655
    sget-object v3, Lnet/ser1/timetracker/Tasks$Result;->FAILURE:Lnet/ser1/timetracker/Tasks$Result;

    goto :goto_0
.end method

.method static formatTotal(ZJ)Ljava/lang/String;
    .locals 1
    .parameter "decimalFormat"
    .parameter "ttl"

    .prologue
    .line 792
    const-string v0, "%02d:%02d"

    invoke-static {p0, v0, p1, p2}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static formatTotal(ZJJJ)Ljava/lang/String;
    .locals 8
    .parameter "decimalFormat"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    .line 803
    const-string v1, "%02d:%02d"

    move v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZLjava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static formatTotal(ZLjava/lang/String;J)Ljava/lang/String;
    .locals 8
    .parameter "decimalFormat"
    .parameter "format"
    .parameter "ttl"

    .prologue
    .line 795
    const-wide/32 v0, 0x36ee80

    div-long v2, p2, v0

    .line 796
    .local v2, hours:J
    const-wide/32 v0, 0x36ee80

    mul-long/2addr v0, v2

    .line 797
    .local v0, hours_in_ms:J
    sub-long v4, p2, v0

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    .line 798
    .local v4, minutes:J
    const-wide/32 v6, 0xea60

    mul-long/2addr v6, v4

    .line 799
    .local v6, minutes_in_ms:J
    sub-long/2addr p2, v0

    sub-long/2addr p2, v6

    const-wide/16 v0, 0x3e8

    div-long v6, p2, v0

    .end local v0           #hours_in_ms:J
    .end local p2
    .local v6, seconds:J
    move v0, p0

    move-object v1, p1

    .line 800
    invoke-static/range {v0 .. v7}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZLjava/lang/String;JJJ)Ljava/lang/String;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method static formatTotal(ZLjava/lang/String;JJJ)Ljava/lang/String;
    .locals 6
    .parameter "decimalFormat"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    .line 806
    if-eqz p0, :cond_0

    .line 807
    sget-object p1, Lnet/ser1/timetracker/Tasks;->DECIMAL_FORMAT:Ljava/lang/String;

    .line 808
    const-wide v0, 0x3ffaaaaaaaaaaaabL

    long-to-double v2, p4

    mul-double/2addr v0, v2

    const-wide v2, 0x3f9c71c71c71c71cL

    long-to-double v4, p6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p4

    .line 809
    const-wide/16 p6, 0x0

    .line 811
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExportCsvFileName()Ljava/io/File;
    .locals 8

    .prologue
    const-string v7, "/sdcard/"

    const-string v6, ".csv"

    .line 630
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks;->getRangeName()Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, rangeName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".csv"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, fname:Ljava/lang/String;
    const/4 v0, 0x0

    .line 634
    .local v0, counter:I
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/sdcard/"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 635
    .local v2, fout:Ljava/io/File;
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 640
    return-object v2

    .line 636
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".csv"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 637
    new-instance v2, Ljava/io/File;

    .end local v2           #fout:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/sdcard/"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    .restart local v2       #fout:Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getRangeName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 660
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    #getter for: Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeStart:J
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->access$0(Lnet/ser1/timetracker/Tasks$TaskAdapter;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 661
    const-string v2, "all"

    .line 666
    :goto_0
    return-object v2

    .line 663
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, f:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 665
    .local v0, d:Ljava/util/Date;
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    #getter for: Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeStart:J
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->access$0(Lnet/ser1/timetracker/Tasks$TaskAdapter;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 666
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private openAboutDialog()Landroid/app/Dialog;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0xf

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 670
    const-string v7, ""

    .line 672
    .local v7, versionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "net.ser1.timetracker"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 673
    .local v5, pkginfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v5           #pkginfo:Landroid/content/pm/PackageInfo;
    :goto_0
    const v8, 0x7f060036

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v7, v9, v11

    invoke-virtual {p0, v8, v9}, Lnet/ser1/timetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, formattedVersion:Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 681
    .local v2, factory:Landroid/view/LayoutInflater;
    const/high16 v8, 0x7f03

    invoke-virtual {v2, v8, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 683
    .local v0, about:Landroid/view/View;
    const v8, 0x7f070001

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 684
    .local v6, version:Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    const v8, 0x7f070004

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 686
    .local v1, donate:Landroid/widget/TextView;
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setClickable(Z)V

    .line 687
    new-instance v8, Lnet/ser1/timetracker/Tasks$7;

    invoke-direct {v8, p0}, Lnet/ser1/timetracker/Tasks$7;-><init>(Lnet/ser1/timetracker/Tasks;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    const v8, 0x7f070002

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 695
    .local v4, links:Landroid/widget/TextView;
    invoke-static {v4, v13}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 696
    const v8, 0x7f070003

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #links:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 697
    .restart local v4       #links:Landroid/widget/TextView;
    invoke-static {v4, v13}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 699
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104000a

    invoke-virtual {v8, v9, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 674
    .end local v0           #about:Landroid/view/View;
    .end local v1           #donate:Landroid/widget/TextView;
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #formattedVersion:Ljava/lang/String;
    .end local v4           #links:Landroid/widget/TextView;
    .end local v6           #version:Landroid/widget/TextView;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private openChangeViewDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 447
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f05

    new-instance v2, Lnet/ser1/timetracker/Tasks$3;

    invoke-direct {v2, p0}, Lnet/ser1/timetracker/Tasks$3;-><init>(Lnet/ser1/timetracker/Tasks;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 447
    return-object v0
.end method

.method private openDeleteTaskDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 614
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    if-nez v1, :cond_0

    move-object v1, v6

    .line 619
    :goto_0
    return-object v1

    .line 617
    :cond_0
    const v1, 0x7f060009

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 618
    iget-object v4, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    invoke-virtual {v4}, Lnet/ser1/timetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 617
    invoke-virtual {p0, v1, v2}, Lnet/ser1/timetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, formattedMessage:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060007

    new-instance v3, Lnet/ser1/timetracker/Tasks$6;

    invoke-direct {v3, p0}, Lnet/ser1/timetracker/Tasks$6;-><init>(Lnet/ser1/timetracker/Tasks;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 625
    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method private openEditTaskDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 582
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    if-nez v2, :cond_0

    move-object v2, v5

    .line 587
    :goto_0
    return-object v2

    .line 585
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 586
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030002

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 587
    .local v1, textEntryView:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lnet/ser1/timetracker/Tasks$5;

    invoke-direct {v4, p0, v1}, Lnet/ser1/timetracker/Tasks$5;-><init>(Lnet/ser1/timetracker/Tasks;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 598
    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method private openNewTaskDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 562
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 563
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030002

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 564
    .local v1, textEntryView:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060004

    new-instance v4, Lnet/ser1/timetracker/Tasks$4;

    invoke-direct {v4, p0, v1}, Lnet/ser1/timetracker/Tasks$4;-><init>(Lnet/ser1/timetracker/Tasks;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 573
    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 564
    return-object v2
.end method

.method private setTitle()V
    .locals 6

    .prologue
    .line 549
    const-wide/16 v1, 0x0

    .line 550
    .local v1, total:J
    iget-object v3, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    iget-object v3, v3, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/ser1/timetracker/Tasks;->baseTitle:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lnet/ser1/timetracker/Tasks;->decimalFormat:Z

    invoke-static {v4, v1, v2}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/ser1/timetracker/Tasks;->setTitle(Ljava/lang/CharSequence;)V

    .line 554
    return-void

    .line 550
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/ser1/timetracker/Task;

    .line 551
    .local v0, t:Lnet/ser1/timetracker/Task;
    invoke-virtual {v0}, Lnet/ser1/timetracker/Task;->getTotal()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0
.end method

.method private switchView(I)V
    .locals 14
    .parameter "which"

    .prologue
    const v13, 0x7f060018

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 507
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 508
    .local v5, tw:Ljava/util/Calendar;
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "start_day"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 509
    .local v3, startDay:I
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 510
    new-array v6, v11, [Ljava/lang/Object;

    .line 511
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f05

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p1

    aput-object v7, v6, v10

    .line 510
    invoke-virtual {p0, v13, v6}, Lnet/ser1/timetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, ttl:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 543
    :goto_0
    iput-object v4, p0, Lnet/ser1/timetracker/Tasks;->baseTitle:Ljava/lang/String;

    .line 544
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks;->setTitle()V

    .line 545
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidate()V

    .line 546
    return-void

    .line 514
    :pswitch_0
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {v6, v5}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;)V

    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-static {v5, v3}, Lnet/ser1/timetracker/Report;->weekStart(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v7

    invoke-static {v5, v3}, Lnet/ser1/timetracker/Report;->weekEnd(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0

    .line 520
    :pswitch_2
    const/4 v6, 0x5

    invoke-virtual {v5, v6, v9}, Ljava/util/Calendar;->add(II)V

    .line 521
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {v6, v5}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;)V

    goto :goto_0

    .line 524
    :pswitch_3
    invoke-virtual {v5, v12, v9}, Ljava/util/Calendar;->add(II)V

    .line 525
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-static {v5, v3}, Lnet/ser1/timetracker/Report;->weekStart(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v7

    invoke-static {v5, v3}, Lnet/ser1/timetracker/Report;->weekEnd(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0

    .line 528
    :pswitch_4
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    #calls: Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks()V
    invoke-static {v6}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->access$2(Lnet/ser1/timetracker/Tasks$TaskAdapter;)V

    goto :goto_0

    .line 531
    :pswitch_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 532
    .local v2, start:Ljava/util/Calendar;
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "start_date"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 533
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 534
    .local v0, end:Ljava/util/Calendar;
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "end_date"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 535
    iget-object v6, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {v6, v2, v0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->loadTasks(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 536
    invoke-static {v12}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 537
    .local v1, f:Ljava/text/DateFormat;
    new-array v6, v11, [Ljava/lang/Object;

    .line 538
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 537
    invoke-virtual {p0, v13, v6}, Lnet/ser1/timetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 539
    goto/16 :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected finishedCopy(Lnet/ser1/timetracker/Tasks$Result;Ljava/lang/String;I)V
    .locals 5
    .parameter "result"
    .parameter "message"
    .parameter "operation"

    .prologue
    .line 1173
    sget-object v2, Lnet/ser1/timetracker/Tasks$Result;->SUCCESS:Lnet/ser1/timetracker/Tasks$Result;

    if-ne p1, v2, :cond_0

    .line 1174
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "view_mode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lnet/ser1/timetracker/Tasks;->switchView(I)V

    .line 1175
    const-string p2, "/sdcard/timetracker.db"

    .line 1177
    :cond_0
    const v1, 0x7f060042

    .line 1178
    .local v1, successId:I
    const v0, 0x7f060043

    .line 1179
    .local v0, failureId:I
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 1180
    const v1, 0x7f060044

    .line 1181
    const v0, 0x7f060045

    .line 1183
    :cond_1
    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/ser1/timetracker/Tasks;->perform(Lnet/ser1/timetracker/Tasks$Result;Ljava/lang/String;II)V

    .line 1184
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "font-size"

    const-string v4, "concurrent-tasks"

    .line 1125
    const/16 v2, 0xf

    if-ne p1, v2, :cond_8

    const/4 v2, -0x1

    if-ne p2, v2, :cond_8

    .line 1126
    if-nez p3, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1128
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "start_day"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1129
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "view_mode"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lnet/ser1/timetracker/Tasks;->switchView(I)V

    .line 1131
    :cond_2
    const-string v2, "military-time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1132
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "military-time"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1133
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnet/ser1/timetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    .line 1138
    :cond_3
    :goto_1
    const-string v2, "concurrent-tasks"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1139
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "concurrent-tasks"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->concurrency:Z

    .line 1141
    :cond_4
    const-string v2, "sound-enabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1142
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sound-enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->playClick:Z

    .line 1143
    iget-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->playClick:Z

    if-eqz v2, :cond_5

    sget-object v2, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_5

    .line 1144
    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    sput-object v2, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    .line 1146
    :try_start_0
    sget-object v2, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1147
    sget-object v2, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    :cond_5
    :goto_2
    const-string v2, "vibrate-enabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1157
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "vibrate-enabled"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->vibrateClick:Z

    .line 1159
    :cond_6
    const-string v2, "font-size"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1160
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "font-size"

    const/16 v3, 0x10

    invoke-interface {v2, v8, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lnet/ser1/timetracker/Tasks;->fontSize:I

    .line 1162
    :cond_7
    const-string v2, "time_display"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1163
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "time_display"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->decimalFormat:Z

    .line 1167
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1168
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_0

    .line 1135
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_9
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnet/ser1/timetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    goto/16 :goto_1

    .line 1148
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1150
    .local v1, illegalStateException:Ljava/lang/IllegalStateException;
    const-string v2, "TimeTracker"

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 1151
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to set up audio player: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1150
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 272
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    iget-wide v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/ser1/timetracker/Task;

    iput-object v2, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    .line 273
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V

    .line 287
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 275
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/ser1/timetracker/TaskTimes;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "task_id"

    iget-object v3, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    invoke-virtual {v3}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    #getter for: Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeStart:J
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->access$0(Lnet/ser1/timetracker/Tasks$TaskAdapter;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 278
    const-string v2, "start"

    iget-object v3, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    #getter for: Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeStart:J
    invoke-static {v3}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->access$0(Lnet/ser1/timetracker/Tasks$TaskAdapter;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 279
    const-string v2, "end"

    iget-object v3, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    #getter for: Lnet/ser1/timetracker/Tasks$TaskAdapter;->currentRangeEnd:J
    invoke-static {v3}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->access$1(Lnet/ser1/timetracker/Tasks$TaskAdapter;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 281
    :cond_0
    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Tasks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "edit_task"

    .line 162
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    const-string v2, "timetracker.pref"

    invoke-virtual {p0, v2, v6}, Lnet/ser1/timetracker/Tasks;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    .line 165
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "font-size"

    const/16 v4, 0x10

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lnet/ser1/timetracker/Tasks;->fontSize:I

    .line 166
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "concurrent-tasks"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->concurrency:Z

    .line 167
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "military-time"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 168
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnet/ser1/timetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    .line 173
    :goto_0
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "view_mode"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, which:I
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-direct {v2, p0, p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;-><init>(Lnet/ser1/timetracker/Tasks;Landroid/content/Context;)V

    iput-object v2, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    .line 176
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/Tasks;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    invoke-direct {p0, v1}, Lnet/ser1/timetracker/Tasks;->switchView(I)V

    .line 179
    :cond_0
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 180
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    .line 182
    :cond_1
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->updater:Ljava/util/TimerTask;

    if-nez v2, :cond_2

    .line 183
    new-instance v2, Lnet/ser1/timetracker/Tasks$1;

    invoke-direct {v2, p0}, Lnet/ser1/timetracker/Tasks$1;-><init>(Lnet/ser1/timetracker/Tasks;)V

    iput-object v2, p0, Lnet/ser1/timetracker/Tasks;->updater:Ljava/util/TimerTask;

    .line 196
    :cond_2
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sound-enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->playClick:Z

    .line 197
    iget-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->playClick:Z

    if-eqz v2, :cond_3

    sget-object v2, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_3

    .line 198
    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    sput-object v2, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    .line 200
    :try_start_0
    sget-object v2, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_3
    :goto_1
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "time_display"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->decimalFormat:Z

    .line 209
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/Tasks;->registerForContextMenu(Landroid/view/View;)V

    .line 210
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    iget-object v2, v2, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 211
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V

    .line 213
    :cond_4
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/Tasks;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lnet/ser1/timetracker/Tasks;->vibrateAgent:Landroid/os/Vibrator;

    .line 214
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "vibrate-enabled"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->vibrateClick:Z

    .line 216
    if-eqz p1, :cond_5

    const-string v2, "edit_task"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    const-string v3, "edit_task"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->getTask(I)Lnet/ser1/timetracker/Task;

    move-result-object v2

    iput-object v2, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    .line 219
    :cond_5
    return-void

    .line 170
    .end local v1           #which:I
    :cond_6
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "hh:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lnet/ser1/timetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    goto/16 :goto_0

    .line 201
    .restart local v1       #which:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 203
    .local v0, illegalStateException:Ljava/lang/IllegalStateException;
    const-string v2, "TimeTracker"

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to set up audio player: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 263
    const-string v0, "Task menu"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 264
    const/4 v0, 0x1

    const v1, 0x7f06001c

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Tasks;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 265
    const/4 v0, 0x2

    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Tasks;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 266
    const/4 v0, 0x4

    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Tasks;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 267
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x108007a

    const v3, 0x104000a

    const/4 v2, 0x0

    .line 318
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v2

    .line 416
    :goto_0
    return-object v0

    .line 320
    :pswitch_1
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks;->openNewTaskDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 322
    :pswitch_2
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks;->openEditTaskDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 324
    :pswitch_3
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks;->openDeleteTaskDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 326
    :pswitch_4
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks;->openChangeViewDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 328
    :pswitch_5
    invoke-direct {p0}, Lnet/ser1/timetracker/Tasks;->openAboutDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 331
    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->exportMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 334
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 330
    iput-object v0, p0, Lnet/ser1/timetracker/Tasks;->operationSucceed:Landroid/app/AlertDialog;

    .line 336
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->operationSucceed:Landroid/app/AlertDialog;

    goto :goto_0

    .line 338
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->exportMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 338
    iput-object v0, p0, Lnet/ser1/timetracker/Tasks;->operationFailed:Landroid/app/AlertDialog;

    .line 344
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->operationFailed:Landroid/app/AlertDialog;

    goto :goto_0

    .line 346
    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    .line 347
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060048

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Tasks;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 349
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 350
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 352
    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050002

    new-instance v2, Lnet/ser1/timetracker/Tasks$2;

    invoke-direct {v2, p0}, Lnet/ser1/timetracker/Tasks$2;-><init>(Lnet/ser1/timetracker/Tasks;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 254
    const v0, 0x7f06000a

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 255
    const/4 v0, 0x3

    const v1, 0x7f06000c

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080058

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 256
    const/16 v0, 0xd

    const/4 v1, 0x2

    const v2, 0x7f060041

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080045

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 257
    return v4
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1063
    iget-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->vibrateClick:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/ser1/timetracker/Tasks;->vibrateAgent:Landroid/os/Vibrator;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1064
    :cond_0
    iget-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->playClick:Z

    if-eqz v7, :cond_1

    .line 1067
    :try_start_0
    sget-object v7, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 1084
    .local v2, item:Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 1085
    move-object v0, v2

    check-cast v0, Lnet/ser1/timetracker/Task;

    move-object v4, v0

    .line 1086
    .local v4, selected:Lnet/ser1/timetracker/Task;
    iget-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->concurrency:Z

    if-nez v7, :cond_7

    .line 1087
    invoke-virtual {v4}, Lnet/ser1/timetracker/Task;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    move v5, v7

    .line 1088
    .local v5, startSelected:Z
    :goto_1
    iget-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    if-eqz v7, :cond_2

    .line 1089
    const/4 v7, 0x0

    iput-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    .line 1090
    iget-object v7, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v8, p0, Lnet/ser1/timetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1092
    iget-object v7, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {v7}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->findCurrentlyActive()Ljava/util/Iterator;

    move-result-object v3

    .line 1093
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/ser1/timetracker/Task;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 1092
    if-nez v7, :cond_6

    .line 1099
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/ser1/timetracker/Task;>;"
    :cond_2
    if-eqz v5, :cond_3

    .line 1100
    invoke-virtual {v4}, Lnet/ser1/timetracker/Task;->start()V

    .line 1101
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    .line 1102
    iget-object v7, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v8, p0, Lnet/ser1/timetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1117
    .end local v5           #startSelected:Z
    :cond_3
    :goto_3
    iget-object v7, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {v7, v4}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->updateTask(Lnet/ser1/timetracker/Task;)V

    .line 1119
    .end local v4           #selected:Lnet/ser1/timetracker/Task;
    :cond_4
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->invalidate()V

    .line 1120
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1121
    return-void

    .line 1068
    .end local v2           #item:Ljava/lang/Object;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1072
    .local v1, exception:Ljava/lang/Exception;
    const-string v7, "TimeTracker"

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 1073
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to play audio: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1073
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1072
    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    .end local v1           #exception:Ljava/lang/Exception;
    .restart local v2       #item:Ljava/lang/Object;
    .restart local v4       #selected:Lnet/ser1/timetracker/Task;
    :cond_5
    const/4 v7, 0x1

    move v5, v7

    goto :goto_1

    .line 1094
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/ser1/timetracker/Task;>;"
    .restart local v5       #startSelected:Z
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/ser1/timetracker/Task;

    .line 1095
    .local v6, t:Lnet/ser1/timetracker/Task;
    invoke-virtual {v6}, Lnet/ser1/timetracker/Task;->stop()V

    .line 1096
    iget-object v7, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {v7, v6}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->updateTask(Lnet/ser1/timetracker/Task;)V

    goto :goto_2

    .line 1105
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/ser1/timetracker/Task;>;"
    .end local v5           #startSelected:Z
    .end local v6           #t:Lnet/ser1/timetracker/Task;
    :cond_7
    invoke-virtual {v4}, Lnet/ser1/timetracker/Task;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1106
    invoke-virtual {v4}, Lnet/ser1/timetracker/Task;->stop()V

    .line 1107
    iget-object v7, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {v7}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->findCurrentlyActive()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iput-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    .line 1108
    iget-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v8, p0, Lnet/ser1/timetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1110
    :cond_8
    invoke-virtual {v4}, Lnet/ser1/timetracker/Task;->start()V

    .line 1111
    iget-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    if-nez v7, :cond_3

    .line 1112
    const/4 v7, 0x1

    iput-boolean v7, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    .line 1113
    iget-object v7, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v8, p0, Lnet/ser1/timetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5
    .parameter "featureId"
    .parameter "item"

    .prologue
    const-string v4, "start_day"

    .line 297
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 313
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 300
    :sswitch_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V

    goto :goto_0

    .line 303
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/ser1/timetracker/Report;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "report_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 305
    const-string v1, "start_day"

    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "start_day"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v1, "time_display"

    iget-boolean v2, p0, Lnet/ser1/timetracker/Tasks;->decimalFormat:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/Tasks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 297
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 224
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "d"

    .prologue
    const v1, 0x7f07000a

    .line 705
    packed-switch p1, :pswitch_data_0

    .line 717
    :goto_0
    return-void

    .line 707
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 708
    .local v0, textView:Landroid/widget/EditText;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 711
    .end local v0           #textView:Landroid/widget/EditText;
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 712
    .restart local v0       #textView:Landroid/widget/EditText;
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    invoke-virtual {v1}, Lnet/ser1/timetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 243
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "view_mode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, which:I
    invoke-direct {p0, v0}, Lnet/ser1/timetracker/Tasks;->switchView(I)V

    .line 246
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lnet/ser1/timetracker/Tasks;->running:Z

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;

    iget-object v2, p0, Lnet/ser1/timetracker/Tasks;->updater:Ljava/util/TimerTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 603
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    if-eqz v0, :cond_0

    .line 604
    const-string v0, "edit_task"

    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;

    invoke-virtual {v1}, Lnet/ser1/timetracker/Task;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    invoke-virtual {v0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->close()V

    .line 233
    :cond_0
    sget-object v0, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 234
    sget-object v0, Lnet/ser1/timetracker/Tasks;->clickPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 235
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 236
    return-void
.end method

.method protected perform(Lnet/ser1/timetracker/Tasks$Result;Ljava/lang/String;II)V
    .locals 4
    .parameter "result"
    .parameter "message"
    .parameter "successId"
    .parameter "failureId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    invoke-static {}, Lnet/ser1/timetracker/Tasks;->$SWITCH_TABLE$net$ser1$timetracker$Tasks$Result()[I

    move-result-object v0

    invoke-virtual {p1}, Lnet/ser1/timetracker/Tasks$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 436
    :goto_0
    return-void

    .line 422
    :pswitch_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p0, p3, v0}, Lnet/ser1/timetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks;->exportMessage:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->operationSucceed:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->operationSucceed:Landroid/app/AlertDialog;

    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->exportMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 426
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V

    goto :goto_0

    .line 429
    :pswitch_1
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    invoke-virtual {p0, p4, v0}, Lnet/ser1/timetracker/Tasks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks;->exportMessage:Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->operationFailed:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks;->operationFailed:Landroid/app/AlertDialog;

    iget-object v1, p0, Lnet/ser1/timetracker/Tasks;->exportMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 433
    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
