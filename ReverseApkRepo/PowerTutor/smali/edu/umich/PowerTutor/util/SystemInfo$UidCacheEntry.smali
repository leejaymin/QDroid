.class Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/util/SystemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidCacheEntry"
.end annotation


# static fields
.field private static EXPIRATION_TIME:J


# instance fields
.field private appId:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 522
    const-wide/32 v0, 0x927c0

    sput-wide v0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->EXPIRATION_TIME:J

    .line 521
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->updateTime:J

    .line 531
    return-void
.end method


# virtual methods
.method public clearIfExpired()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 564
    iget-wide v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->updateTime:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 565
    iget-wide v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->updateTime:J

    sget-wide v2, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->EXPIRATION_TIME:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 566
    iput-wide v5, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->updateTime:J

    .line 567
    iput-object v4, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->name:Ljava/lang/String;

    .line 568
    iput-object v4, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 570
    :cond_0
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 538
    iput-object p1, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->appId:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "icon"

    .prologue
    .line 557
    iput-object p1, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 558
    iget-wide v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->updateTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->updateTime:J

    .line 561
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 546
    iput-object p1, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->name:Ljava/lang/String;

    .line 547
    iget-wide v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->updateTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 548
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->updateTime:J

    .line 550
    :cond_0
    return-void
.end method
