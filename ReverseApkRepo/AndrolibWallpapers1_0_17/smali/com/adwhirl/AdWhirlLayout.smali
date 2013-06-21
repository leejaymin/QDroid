.class public Lcom/adwhirl/AdWhirlLayout;
.super Landroid/widget/RelativeLayout;
.source "AdWhirlLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;,
        Lcom/adwhirl/AdWhirlLayout$HandleAdRunnable;,
        Lcom/adwhirl/AdWhirlLayout$InitRunnable;,
        Lcom/adwhirl/AdWhirlLayout$PingUrlRunnable;,
        Lcom/adwhirl/AdWhirlLayout$RotateAdRunnable;,
        Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;
    }
.end annotation


# instance fields
.field public activeRation:Lcom/adwhirl/obj/Ration;

.field public final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public adWhirlInterface:Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;

.field public adWhirlManager:Lcom/adwhirl/AdWhirlManager;

.field public custom:Lcom/adwhirl/obj/Custom;

.field public extra:Lcom/adwhirl/obj/Extra;

.field public final handler:Landroid/os/Handler;

.field private hasWindow:Z

.field private isScheduled:Z

.field private keyAdWhirl:Ljava/lang/String;

.field private maxHeight:I

.field private maxWidth:I

.field public nextRation:Lcom/adwhirl/obj/Ration;

.field public final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field public superViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "keyAdWhirl"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->activityReference:Ljava/lang/ref/WeakReference;

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    .line 86
    iput-object p2, p0, Lcom/adwhirl/AdWhirlLayout;->keyAdWhirl:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lcom/adwhirl/AdWhirlLayout;->hasWindow:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->handler:Landroid/os/Handler;

    .line 92
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 93
    iput-boolean v1, p0, Lcom/adwhirl/AdWhirlLayout;->isScheduled:Z

    .line 94
    iget-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adwhirl/AdWhirlLayout$InitRunnable;

    invoke-direct {v1, p0, p2}, Lcom/adwhirl/AdWhirlLayout$InitRunnable;-><init>(Lcom/adwhirl/AdWhirlLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 96
    invoke-virtual {p0, v5}, Lcom/adwhirl/AdWhirlLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 97
    invoke-virtual {p0, v5}, Lcom/adwhirl/AdWhirlLayout;->setVerticalScrollBarEnabled(Z)V

    .line 99
    iput v5, p0, Lcom/adwhirl/AdWhirlLayout;->maxWidth:I

    .line 100
    iput v5, p0, Lcom/adwhirl/AdWhirlLayout;->maxHeight:I

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/adwhirl/AdWhirlLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/adwhirl/AdWhirlLayout;->hasWindow:Z

    return v0
.end method

.method static synthetic access$1(Lcom/adwhirl/AdWhirlLayout;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/adwhirl/AdWhirlLayout;->isScheduled:Z

    return-void
.end method

.method static synthetic access$2(Lcom/adwhirl/AdWhirlLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/adwhirl/AdWhirlLayout;->rotateAd()V

    return-void
.end method

.method static synthetic access$3(Lcom/adwhirl/AdWhirlLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/adwhirl/AdWhirlLayout;->handleAd()V

    return-void
.end method

.method private countClick()V
    .locals 6

    .prologue
    .line 214
    iget-object v1, p0, Lcom/adwhirl/AdWhirlLayout;->activeRation:Lcom/adwhirl/obj/Ration;

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "http://met.adwhirl.com/exclick.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=2"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    iget-object v4, v4, Lcom/adwhirl/AdWhirlManager;->keyAdWhirl:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->activeRation:Lcom/adwhirl/obj/Ration;

    iget-object v4, v4, Lcom/adwhirl/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->activeRation:Lcom/adwhirl/obj/Ration;

    iget v4, v4, Lcom/adwhirl/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    iget-object v4, v4, Lcom/adwhirl/AdWhirlManager;->deviceIDHash:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    iget-object v4, v4, Lcom/adwhirl/AdWhirlManager;->localeString:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/adwhirl/AdWhirlLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adwhirl/AdWhirlLayout$PingUrlRunnable;

    invoke-direct {v2, v0}, Lcom/adwhirl/AdWhirlLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 218
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private countImpression()V
    .locals 6

    .prologue
    .line 207
    iget-object v1, p0, Lcom/adwhirl/AdWhirlLayout;->activeRation:Lcom/adwhirl/obj/Ration;

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "http://met.adwhirl.com/exmet.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=2"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    iget-object v4, v4, Lcom/adwhirl/AdWhirlManager;->keyAdWhirl:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->activeRation:Lcom/adwhirl/obj/Ration;

    iget-object v4, v4, Lcom/adwhirl/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->activeRation:Lcom/adwhirl/obj/Ration;

    iget v4, v4, Lcom/adwhirl/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    iget-object v4, v4, Lcom/adwhirl/AdWhirlManager;->deviceIDHash:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    iget-object v4, v4, Lcom/adwhirl/AdWhirlManager;->localeString:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/adwhirl/AdWhirlLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adwhirl/AdWhirlLayout$PingUrlRunnable;

    invoke-direct {v2, v0}, Lcom/adwhirl/AdWhirlLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 211
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleAd()V
    .locals 7

    .prologue
    const-string v6, "AdWhirl SDK"

    .line 153
    iget-object v2, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    if-nez v2, :cond_1

    .line 154
    sget-boolean v2, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v2, :cond_0

    const-string v2, "AdWhirl SDK"

    const-string v2, "nextRation is null!"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedDelayed()V

    .line 170
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v2, "Showing ad:\n\tnid: %s\n\tname: %s\n\ttype: %d\n\tkey: %s\n\tkey2: %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    iget-object v5, v5, Lcom/adwhirl/obj/Ration;->nid:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    iget-object v5, v5, Lcom/adwhirl/obj/Ration;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    iget v5, v5, Lcom/adwhirl/obj/Ration;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    iget-object v5, v5, Lcom/adwhirl/obj/Ration;->key:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    iget-object v5, v5, Lcom/adwhirl/obj/Ration;->key2:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, rationInfo:Ljava/lang/String;
    sget-boolean v2, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v2, :cond_2

    const-string v2, "AdWhirl SDK"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    invoke-static {p0, v2}, Lcom/adwhirl/adapters/AdWhirlAdapter;->handle(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 166
    .local v1, t:Ljava/lang/Throwable;
    sget-boolean v2, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v2, :cond_3

    const-string v2, "AdWhirl SDK"

    const-string v2, "Caught an exception in adapter:"

    invoke-static {v6, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0
.end method

.method private rotateAd()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/adwhirl/AdWhirlLayout;->hasWindow:Z

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adwhirl/AdWhirlLayout;->isScheduled:Z

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    sget-boolean v0, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v0, :cond_1

    const-string v0, "AdWhirl SDK"

    const-string v1, "Rotating Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlManager;->getRation()Lcom/adwhirl/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    .line 147
    iget-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adwhirl/AdWhirlLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/adwhirl/AdWhirlLayout$HandleAdRunnable;-><init>(Lcom/adwhirl/AdWhirlLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const-string v6, "AdWhirl SDK"

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v3, v5

    .line 256
    :goto_1
    return v3

    .line 226
    :pswitch_0
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_1

    const-string v3, "AdWhirl SDK"

    const-string v3, "Intercepted ACTION_DOWN event"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/adwhirl/AdWhirlLayout;->activeRation:Lcom/adwhirl/obj/Ration;

    if-eqz v3, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/adwhirl/AdWhirlLayout;->countClick()V

    .line 230
    iget-object v3, p0, Lcom/adwhirl/AdWhirlLayout;->activeRation:Lcom/adwhirl/obj/Ration;

    iget v3, v3, Lcom/adwhirl/obj/Ration;->type:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    .line 231
    iget-object v3, p0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    iget-object v3, v3, Lcom/adwhirl/obj/Custom;->link:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 232
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    iget-object v4, v4, Lcom/adwhirl/obj/Custom;->link:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    :try_start_0
    iget-object v3, p0, Lcom/adwhirl/AdWhirlLayout;->activityReference:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    move v3, v5

    .line 236
    goto :goto_1

    .line 238
    :cond_2
    iget-object v3, p0, Lcom/adwhirl/AdWhirlLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 239
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_3

    move v3, v5

    .line 240
    goto :goto_1

    .line 242
    :cond_3
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v0           #activity:Landroid/app/Activity;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 244
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_0

    const-string v3, "AdWhirl SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not handle click to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    iget-object v4, v4, Lcom/adwhirl/obj/Custom;->link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 248
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    sget-boolean v3, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v3, :cond_0

    const-string v3, "AdWhirl SDK"

    const-string v3, "In onInterceptTouchEvent(), but custom or custom.link is null"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, -0x8000

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 106
    .local v1, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 108
    .local v0, heightSize:I
    iget v2, p0, Lcom/adwhirl/AdWhirlLayout;->maxWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adwhirl/AdWhirlLayout;->maxWidth:I

    if-le v1, v2, :cond_0

    .line 109
    iget v2, p0, Lcom/adwhirl/AdWhirlLayout;->maxWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 112
    :cond_0
    iget v2, p0, Lcom/adwhirl/AdWhirlLayout;->maxHeight:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/adwhirl/AdWhirlLayout;->maxHeight:I

    if-le v0, v2, :cond_1

    .line 113
    iget v2, p0, Lcom/adwhirl/AdWhirlLayout;->maxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 116
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 117
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    .line 121
    if-nez p1, :cond_2

    .line 122
    iput-boolean v1, p0, Lcom/adwhirl/AdWhirlLayout;->hasWindow:Z

    .line 123
    iget-boolean v0, p0, Lcom/adwhirl/AdWhirlLayout;->isScheduled:Z

    if-nez v0, :cond_0

    .line 124
    iput-boolean v1, p0, Lcom/adwhirl/AdWhirlLayout;->isScheduled:Z

    .line 126
    iget-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedNow()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adwhirl/AdWhirlLayout$InitRunnable;

    iget-object v2, p0, Lcom/adwhirl/AdWhirlLayout;->keyAdWhirl:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/adwhirl/AdWhirlLayout$InitRunnable;-><init>(Lcom/adwhirl/AdWhirlLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adwhirl/AdWhirlLayout;->hasWindow:Z

    goto :goto_0
.end method

.method public pushSubView(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "subView"

    .prologue
    const/4 v3, -0x2

    .line 185
    iget-object v2, p0, Lcom/adwhirl/AdWhirlLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 186
    .local v1, superView:Landroid/widget/RelativeLayout;
    if-nez v1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 191
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    sget-boolean v2, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v2, :cond_1

    const-string v2, "AdWhirl SDK"

    const-string v3, "Added subview"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    iput-object v2, p0, Lcom/adwhirl/AdWhirlLayout;->activeRation:Lcom/adwhirl/obj/Ration;

    .line 198
    invoke-direct {p0}, Lcom/adwhirl/AdWhirlLayout;->countImpression()V

    goto :goto_0
.end method

.method public rollover()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlManager;->getRollover()Lcom/adwhirl/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->nextRation:Lcom/adwhirl/obj/Ration;

    .line 203
    iget-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adwhirl/AdWhirlLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/adwhirl/AdWhirlLayout$HandleAdRunnable;-><init>(Lcom/adwhirl/AdWhirlLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public rotateThreadedDelayed()V
    .locals 5

    .prologue
    .line 179
    sget-boolean v0, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v0, :cond_0

    const-string v0, "AdWhirl SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Will call rotateAd() in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    iget v2, v2, Lcom/adwhirl/obj/Extra;->cycleTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adwhirl/AdWhirlLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/adwhirl/AdWhirlLayout$RotateAdRunnable;-><init>(Lcom/adwhirl/AdWhirlLayout;)V

    iget-object v2, p0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    iget v2, v2, Lcom/adwhirl/obj/Extra;->cycleTime:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 181
    return-void
.end method

.method public rotateThreadedNow()V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adwhirl/AdWhirlLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adwhirl/AdWhirlLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/adwhirl/AdWhirlLayout$RotateAdRunnable;-><init>(Lcom/adwhirl/AdWhirlLayout;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 175
    return-void
.end method

.method public setAdWhirlInterface(Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/adwhirl/AdWhirlLayout;->adWhirlInterface:Lcom/adwhirl/AdWhirlLayout$AdWhirlInterface;

    .line 265
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 79
    iput p1, p0, Lcom/adwhirl/AdWhirlLayout;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 76
    iput p1, p0, Lcom/adwhirl/AdWhirlLayout;->maxWidth:I

    return-void
.end method
