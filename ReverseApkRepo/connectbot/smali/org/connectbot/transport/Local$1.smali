.class Lorg/connectbot/transport/Local$1;
.super Ljava/lang/Object;
.source "Local.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/transport/Local;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/transport/Local;

.field private final synthetic val$shellPid:I


# direct methods
.method constructor <init>(Lorg/connectbot/transport/Local;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/transport/Local$1;->this$0:Lorg/connectbot/transport/Local;

    iput p2, p0, Lorg/connectbot/transport/Local$1;->val$shellPid:I

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lorg/connectbot/transport/Local$1;->val$shellPid:I

    invoke-static {v0}, Lcom/google/ase/Exec;->waitFor(I)I

    .line 105
    iget-object v0, p0, Lorg/connectbot/transport/Local$1;->this$0:Lorg/connectbot/transport/Local;

    iget-object v0, v0, Lorg/connectbot/transport/Local;->bridge:Lorg/connectbot/service/TerminalBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    .line 106
    return-void
.end method
