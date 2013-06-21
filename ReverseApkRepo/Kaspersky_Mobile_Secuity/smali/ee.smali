.class final Lee;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lej;

.field private synthetic c:Leb;


# direct methods
.method public constructor <init>(Leb;Landroid/os/Handler;Lej;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lee;->c:Leb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 104
    iput-object p2, p0, Lee;->a:Landroid/os/Handler;

    .line 105
    iput-object p3, p0, Lee;->b:Lej;

    .line 106
    return-void
.end method

.method private a(Landroid/os/Handler;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 111
    const-string v2, "total"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 113
    iget-object v1, p0, Lee;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 122
    const/4 v0, 0x0

    .line 123
    :goto_0
    if-eq v0, v2, :cond_2

    iget-object v1, p0, Lee;->c:Leb;

    invoke-static {v1}, Leb;->c(Leb;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 124
    iget-object v0, p0, Lee;->b:Lej;

    invoke-interface {v0}, Lej;->c()I

    move-result v0

    .line 125
    iget-object v1, p0, Lee;->c:Leb;

    invoke-static {v1}, Leb;->c(Leb;)I

    move-result v1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 127
    :cond_0
    iget-object v1, p0, Lee;->b:Lej;

    invoke-interface {v1}, Lej;->b()V

    .line 129
    :cond_1
    iget-object v1, p0, Lee;->a:Landroid/os/Handler;

    invoke-direct {p0, v1, v0}, Lee;->a(Landroid/os/Handler;I)V

    goto :goto_0

    .line 131
    :cond_2
    return-void
.end method
