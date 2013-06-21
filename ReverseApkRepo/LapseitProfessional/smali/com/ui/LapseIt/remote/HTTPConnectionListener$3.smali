.class Lcom/ui/LapseIt/remote/HTTPConnectionListener$3;
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


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/remote/HTTPConnectionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/remote/HTTPConnectionListener$3;->this$0:Lcom/ui/LapseIt/remote/HTTPConnectionListener;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Lcom/ui/LapseIt/remote/RemoteView;->disconnect()V

    .line 73
    return-void
.end method
