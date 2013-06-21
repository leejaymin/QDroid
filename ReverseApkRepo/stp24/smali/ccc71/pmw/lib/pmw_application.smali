.class public Lccc71/pmw/lib/pmw_application;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_application;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lccc71/pmw/lib/pmw_application;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_application;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lccc71/pmw/lib/pmw_application;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pmw/crash_reports.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_application;->a:Ljava/lang/String;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_application;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading exception handler onto file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/pmw_application;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_application;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lccc71/pmw/lib/al;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/al;-><init>(Lccc71/pmw/lib/pmw_application;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_application;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_application;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 29
    :cond_0
    return-void
.end method
