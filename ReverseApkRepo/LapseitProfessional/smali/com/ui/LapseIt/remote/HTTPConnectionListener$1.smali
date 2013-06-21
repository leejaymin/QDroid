.class Lcom/ui/LapseIt/remote/HTTPConnectionListener$1;
.super Ljava/lang/Object;
.source "HTTPConnectionListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/remote/HTTPConnectionListener;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

.field private final synthetic val$clientSocket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/remote/HTTPConnectionListener;Ljava/net/Socket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener$1;->this$0:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

    iput-object p2, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener$1;->val$clientSocket:Ljava/net/Socket;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/ui/LapseIt/remote/RemoteView;->feedback:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection received from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener$1;->val$clientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
