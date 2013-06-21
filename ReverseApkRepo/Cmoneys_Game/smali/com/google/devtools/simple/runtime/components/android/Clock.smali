.class public final Lcom/google/devtools/simple/runtime/components/android/Clock;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/AlarmHandler;
.implements Lcom/google/devtools/simple/runtime/components/android/OnStopListener;
.implements Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->BASIC:Lcom/google/devtools/simple/common/ComponentCategory;
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private onScreen:Z

.field private timerAlwaysFires:Z

.field private timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerAlwaysFires:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->onScreen:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerAlwaysFires:Z

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->onScreen:Z

    .line 48
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-direct {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;-><init>(Lcom/google/devtools/simple/runtime/components/AlarmHandler;)V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    .line 51
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    .line 52
    .local v0, form:Lcom/google/devtools/simple/runtime/components/android/Form;
    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnResume(Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;)V

    .line 53
    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForOnStop(Lcom/google/devtools/simple/runtime/components/android/OnStopListener;)V

    .line 55
    return-void
.end method

.method public static AddDays(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .parameter "instant"
    .parameter "days"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "An instant in time some days after the argument"
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 241
    .local v0, newInstant:Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Lcom/google/devtools/simple/runtime/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 242
    return-object v0
.end method

.method public static AddHours(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .parameter "instant"
    .parameter "hours"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "An instant in time some hours after the argument"
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 234
    .local v0, newInstant:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Lcom/google/devtools/simple/runtime/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 235
    return-object v0
.end method

.method public static AddMinutes(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .parameter "instant"
    .parameter "minutes"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "An instant in time some minutes after the argument"
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 227
    .local v0, newInstant:Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Lcom/google/devtools/simple/runtime/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 228
    return-object v0
.end method

.method public static AddMonths(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .parameter "instant"
    .parameter "months"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "An instant in time some months after the argument"
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 255
    .local v0, newInstant:Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/google/devtools/simple/runtime/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 256
    return-object v0
.end method

.method public static AddSeconds(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .parameter "instant"
    .parameter "seconds"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "An instant in time some seconds after the argument"
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 220
    .local v0, newInstant:Ljava/util/Calendar;
    const/16 v1, 0xd

    invoke-static {v0, v1, p1}, Lcom/google/devtools/simple/runtime/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 221
    return-object v0
.end method

.method public static AddWeeks(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .parameter "instant"
    .parameter "weeks"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "An instant in time some weeks after the argument"
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 248
    .local v0, newInstant:Ljava/util/Calendar;
    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/google/devtools/simple/runtime/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 249
    return-object v0
.end method

.method public static AddYears(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .parameter "instant"
    .parameter "years"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "An instant in time some years after the argument"
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 262
    .local v0, newInstant:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/devtools/simple/runtime/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 263
    return-object v0
.end method

.method public static DayOfMonth(Ljava/util/Calendar;)I
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The day of the month"
    .end annotation

    .prologue
    .line 319
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->Day(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static Duration(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 4
    .parameter "start"
    .parameter "end"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Milliseconds between instants"
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static FormatDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Text describing the date of an instant"
    .end annotation

    .prologue
    .line 396
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->FormatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static FormatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Text describing the date and time of an instant"
    .end annotation

    .prologue
    .line 385
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->FormatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static FormatTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Text describing time time of an instant"
    .end annotation

    .prologue
    .line 407
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->FormatTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetMillis(Ljava/util/Calendar;)J
    .locals 2
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The instant in time measured as milliseconds since 1970."
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Hour(Ljava/util/Calendar;)I
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The hour of the day"
    .end annotation

    .prologue
    .line 308
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->Hour(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static MakeInstant(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4
    .parameter "from"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "An instant specified by MM/DD/YYYY hh:mm:ss or MM/DD/YYYY or hh:mm"
    .end annotation

    .prologue
    .line 184
    :try_start_0
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->DateValue(Ljava/lang/String;)Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;

    const-string v2, "Argument to MakeInstant should have form MM/DD/YYYY, hh:mm:ss, or MM/DD/YYYY or hh:mm"

    const-string v3, "Sorry to be so picky."

    invoke-direct {v1, v2, v3}, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static MakeInstantFromMillis(J)Ljava/util/Calendar;
    .locals 1
    .parameter "millis"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "An instant in time specified by the milliseconds since 1970."
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/google/devtools/simple/runtime/Dates;->Now()Ljava/util/Calendar;

    move-result-object v0

    .line 202
    .local v0, instant:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    return-object v0
.end method

.method public static Minute(Ljava/util/Calendar;)I
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The minute of the hour"
    .end annotation

    .prologue
    .line 297
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->Minute(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static Month(Ljava/util/Calendar;)I
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The month of the year, a number from 1 to 12)"
    .end annotation

    .prologue
    .line 352
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->Month(Ljava/util/Calendar;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static MonthName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The name of the month"
    .end annotation

    .prologue
    .line 363
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->MonthName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Now()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The instant in time read from phone\'s clock"
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/google/devtools/simple/runtime/Dates;->Now()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static Second(Ljava/util/Calendar;)I
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The second of the minute"
    .end annotation

    .prologue
    .line 286
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->Second(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static SystemTime()J
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The phone\'s internal time"
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/google/devtools/simple/runtime/Dates;->Timer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Weekday(Ljava/util/Calendar;)I
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The day of the week. a number from 1 (Sunday) to 7 (Saturday)"
    .end annotation

    .prologue
    .line 330
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->Weekday(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The name of the day of the week"
    .end annotation

    .prologue
    .line 341
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Year(Ljava/util/Calendar;)I
    .locals 1
    .parameter "instant"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "The year"
    .end annotation

    .prologue
    .line 374
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/Dates;->Year(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public Initialize()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public Timer()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Timer has gone off."
    .end annotation

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerAlwaysFires:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->onScreen:Z

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    const-string v0, "Timer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_1
    return-void
.end method

.method public TimerAlwaysFires(Z)V
    .locals 0
    .parameter "always"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerAlwaysFires:Z

    .line 147
    return-void
.end method

.method public TimerAlwaysFires()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerAlwaysFires:Z

    return v0
.end method

.method public TimerEnabled(Z)V
    .locals 1
    .parameter "enabled"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Enabled(Z)V

    .line 123
    return-void
.end method

.method public TimerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public TimerInterval()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public TimerInterval(I)V
    .locals 1
    .parameter "interval"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Interval(I)V

    .line 100
    return-void
.end method

.method public alarm()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Clock;->Timer()V

    .line 154
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Enabled(Z)V

    .line 423
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->onScreen:Z

    .line 418
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Clock;->onScreen:Z

    .line 413
    return-void
.end method
