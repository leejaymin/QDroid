.class final LfA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lfy;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 243
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getNextUTCDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 249
    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getPriority()I

    move-result v2

    invoke-virtual {p1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getPriority()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->getPriority()I

    move-result v2

    if-le v0, v2, :cond_3

    move v0, v1

    .line 259
    goto :goto_0

    .line 262
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 239
    check-cast p1, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    check-cast p2, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;

    invoke-static {p1, p2}, LfA;->a(Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;)I

    move-result v0

    return v0
.end method
