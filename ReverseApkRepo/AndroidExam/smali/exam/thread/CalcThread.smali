.class Lexam/thread/CalcThread;
.super Ljava/lang/Thread;
.source "LooperTest.java"


# instance fields
.field public mBackHandler:Landroid/os/Handler;

.field mMainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 82
    new-instance v0, Lexam/thread/CalcThread$1;

    invoke-direct {v0, p0}, Lexam/thread/CalcThread$1;-><init>(Lexam/thread/CalcThread;)V

    iput-object v0, p0, Lexam/thread/CalcThread;->mBackHandler:Landroid/os/Handler;

    .line 74
    iput-object p1, p0, Lexam/thread/CalcThread;->mMainHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 79
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 80
    return-void
.end method
