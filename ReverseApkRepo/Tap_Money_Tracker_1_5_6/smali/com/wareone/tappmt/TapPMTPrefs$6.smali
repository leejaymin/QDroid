.class Lcom/wareone/tappmt/TapPMTPrefs$6;
.super Ljava/lang/Object;
.source "TapPMTPrefs.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMTPrefs;->_setReminderTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMTPrefs;

.field private final synthetic val$df:Ljava/text/SimpleDateFormat;

.field private final synthetic val$settings:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMTPrefs;Landroid/content/SharedPreferences;Ljava/text/SimpleDateFormat;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMTPrefs$6;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    iput-object p2, p0, Lcom/wareone/tappmt/TapPMTPrefs$6;->val$settings:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/wareone/tappmt/TapPMTPrefs$6;->val$df:Ljava/text/SimpleDateFormat;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 189
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 190
    .local v0, d:Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 191
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 193
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMTPrefs$6;->val$settings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 194
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "reminder_time"

    iget-object v3, p0, Lcom/wareone/tappmt/TapPMTPrefs$6;->val$df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method