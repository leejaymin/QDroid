.class final Lcom/trilead/ssh2/Connection$1TimeoutState;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimeoutState"
.end annotation


# instance fields
.field isCancelled:Z

.field final synthetic this$0:Lcom/trilead/ssh2/Connection;

.field timeoutSocketClosed:Z


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 665
    iput-object p1, p0, Lcom/trilead/ssh2/Connection$1TimeoutState;->this$0:Lcom/trilead/ssh2/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection$1TimeoutState;->isCancelled:Z

    .line 668
    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    return-void
.end method
