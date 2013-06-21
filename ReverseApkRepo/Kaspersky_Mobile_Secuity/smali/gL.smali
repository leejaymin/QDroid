.class public final LgL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaD;
.implements LgM;


# instance fields
.field private a:Ljava/lang/String;

.field private b:LaF;

.field private c:LaC;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, LgL;->d:Landroid/os/Handler;

    .line 17
    iput-object p2, p0, LgL;->a:Ljava/lang/String;

    .line 18
    iput-object p1, p0, LgL;->d:Landroid/os/Handler;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 32
    new-instance v0, LaF;

    invoke-direct {v0}, LaF;-><init>()V

    iput-object v0, p0, LgL;->b:LaF;

    .line 33
    new-instance v0, LaC;

    invoke-direct {v0, p0}, LaC;-><init>(LaD;)V

    iput-object v0, p0, LgL;->c:LaC;

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public final a(IILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, LgL;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 72
    iput p1, v0, Landroid/os/Message;->what:I

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v2, "error_key"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    const-string v2, "error_message"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 79
    iget-object v1, p0, LgL;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Handler;)Z
    .locals 3
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, LgL;->d:Landroid/os/Handler;

    .line 58
    iget-object v0, p0, LgL;->c:LaC;

    invoke-virtual {v0}, LaC;->a()I

    move-result v0

    iget-object v1, p0, LgL;->c:LaC;

    invoke-virtual {v1}, LaC;->b()I

    move-result v1

    iget-object v2, p0, LgL;->c:LaC;

    invoke-virtual {v2}, LaC;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, LgL;->a(IILjava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, LgL;->b:LaF;

    iget-object v1, p0, LgL;->a:Ljava/lang/String;

    iget-object v2, p0, LgL;->c:LaC;

    invoke-virtual {v0, v1, v2}, LaF;->a(Ljava/lang/String;LaG;)V

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, LgL;->d:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
