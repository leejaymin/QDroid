.class public Lcom/zubhium/utils/ZubhiumCrashReporter;
.super Ljava/lang/Object;
.source "ZubhiumCrashReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field context:Landroid/content/Context;

.field errorCallback:Lcom/zubhium/interfaces/ZubhiumCallback;

.field private zuExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/zubhium/interfaces/ZubhiumCallback;)V
    .locals 1
    .parameter "ctx"
    .parameter "callback"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/zubhium/utils/ZubhiumCrashReporter;->context:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/zubhium/utils/ZubhiumCrashReporter;->errorCallback:Lcom/zubhium/interfaces/ZubhiumCallback;

    .line 16
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/zubhium/utils/ZubhiumCrashReporter;->zuExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 17
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 18
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"
    .parameter "e"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zubhium/utils/ZubhiumCrashReporter;->errorCallback:Lcom/zubhium/interfaces/ZubhiumCallback;

    iget-object v1, p0, Lcom/zubhium/utils/ZubhiumCrashReporter;->zuExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v1, p1, p2}, Lcom/zubhium/interfaces/ZubhiumCallback;->submitLogs(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method
