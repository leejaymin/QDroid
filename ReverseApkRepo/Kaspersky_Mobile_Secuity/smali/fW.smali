.class public final LfW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LfW;

.field private static b:Lgi;

.field private static final c:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, LfW;->a:LfW;

    .line 19
    sput-object v0, LfW;->b:Lgi;

    .line 20
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, LfW;->c:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    return-void
.end method

.method public static a()LfW;
    .locals 1

    .prologue
    .line 25
    :try_start_0
    sget-object v0, LfW;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    sget-object v0, LfW;->a:LfW;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, LfW;

    invoke-direct {v0}, LfW;-><init>()V

    sput-object v0, LfW;->a:LfW;

    .line 31
    invoke-static {}, Lgi;->a()Lgi;

    move-result-object v0

    sput-object v0, LfW;->b:Lgi;

    .line 34
    :cond_0
    sget-object v0, LfW;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 35
    sget-object v0, LfW;->a:LfW;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    sget-object v0, LfW;->b:Lgi;

    invoke-virtual {v0, p0}, Lgi;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static synthetic b()Lgi;
    .locals 1

    .prologue
    .line 17
    sget-object v0, LfW;->b:Lgi;

    return-object v0
.end method
