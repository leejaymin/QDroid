.class final LbJ;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:LbH;


# direct methods
.method synthetic constructor <init>(LbH;)V
    .locals 1
    .parameter

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LbJ;-><init>(LbH;B)V

    return-void
.end method

.method private constructor <init>(LbH;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, LbJ;->a:LbH;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, LbJ;->a:LbH;

    invoke-virtual {v0}, LbH;->b()V

    .line 333
    return-void
.end method
