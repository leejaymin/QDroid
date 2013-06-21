.class public Lcom/wareone/tappmt/ReminderService;
.super Landroid/app/Service;
.source "ReminderService.java"


# static fields
.field private static MOOD_NOTIFICATIONS:I

.field private static final TAG:Ljava/lang/String;

.field private static requestCode:I


# instance fields
.field private curDate:Ljava/util/Calendar;

.field private final mBinder:Landroid/os/IBinder;

.field private mCondition:Landroid/os/ConditionVariable;

.field private mNM:Landroid/app/NotificationManager;

.field private mTask:Ljava/lang/Runnable;

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private objHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/wareone/tappmt/ReminderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/ReminderService;->TAG:Ljava/lang/String;

    .line 30
    const v0, 0x7f030031

    sput v0, Lcom/wareone/tappmt/ReminderService;->MOOD_NOTIFICATIONS:I

    .line 292
    const/4 v0, 0x0

    sput v0, Lcom/wareone/tappmt/ReminderService;->requestCode:I

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/ReminderService;->objHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/wareone/tappmt/ReminderService$1;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/ReminderService$1;-><init>(Lcom/wareone/tappmt/ReminderService;)V

    iput-object v0, p0, Lcom/wareone/tappmt/ReminderService;->mTask:Ljava/lang/Runnable;

    .line 281
    new-instance v0, Lcom/wareone/tappmt/ReminderService$2;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/ReminderService$2;-><init>(Lcom/wareone/tappmt/ReminderService;)V

    iput-object v0, p0, Lcom/wareone/tappmt/ReminderService;->mBinder:Landroid/os/IBinder;

    .line 25
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/wareone/tappmt/ReminderService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/ReminderService;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/ReminderService;ILjava/lang/CharSequence;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wareone/tappmt/ReminderService;->showNotification(ILjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/ReminderService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderService;->objHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/ReminderService;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderService;->mTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method private showNotification(ILjava/lang/CharSequence;J)V
    .locals 6
    .parameter "moodId"
    .parameter "text"
    .parameter "reminder"

    .prologue
    .line 247
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 250
    .local v2, notification:Landroid/app/Notification;
    sget-object v3, Lcom/wareone/tappmt/ReminderService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "notification reminder id --> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/wareone/tappmt/Password;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v1, it:Landroid/content/Intent;
    const/high16 v3, 0x1400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    const-string v3, "REMINDER_ID"

    invoke-virtual {v1, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 262
    sget v3, Lcom/wareone/tappmt/ReminderService;->requestCode:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/wareone/tappmt/ReminderService;->requestCode:I

    .line 263
    const/4 v4, 0x0

    .line 262
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 265
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const-string v3, "TapPMT Reminder"

    invoke-virtual {v2, p0, v3, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 274
    sget-object v3, Lcom/wareone/tappmt/ReminderService;->TAG:Ljava/lang/String;

    const-string v4, "send notification"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderService;->mNM:Landroid/app/NotificationManager;

    long-to-int v4, p3

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 277
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 38
    sget-object v1, Lcom/wareone/tappmt/ReminderService;->TAG:Ljava/lang/String;

    const-string v2, "reminder service start"

    invoke-static {v1, v2}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/ReminderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/wareone/tappmt/ReminderService;->mNM:Landroid/app/NotificationManager;

    .line 41
    new-instance v1, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 42
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 47
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wareone/tappmt/ReminderService;->mTask:Ljava/lang/Runnable;

    const-string v3, "ReminderService"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 48
    .local v0, notifyingThread:Ljava/lang/Thread;
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lcom/wareone/tappmt/ReminderService;->mCondition:Landroid/os/ConditionVariable;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderService;->mNM:Landroid/app/NotificationManager;

    sget v1, Lcom/wareone/tappmt/ReminderService;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 62
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderService;->mCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 63
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderService;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 65
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderService;->objHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wareone/tappmt/ReminderService;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    sget-object v0, Lcom/wareone/tappmt/ReminderService;->TAG:Ljava/lang/String;

    const-string v1, "reminder service stop"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 68
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 54
    sget-object v0, Lcom/wareone/tappmt/ReminderService;->TAG:Ljava/lang/String;

    const-string v1, "ReminderService.onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
