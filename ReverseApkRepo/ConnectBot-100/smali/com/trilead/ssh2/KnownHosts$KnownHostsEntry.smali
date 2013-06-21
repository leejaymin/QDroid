.class Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;
.super Ljava/lang/Object;
.source "KnownHosts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trilead/ssh2/KnownHosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnownHostsEntry"
.end annotation


# instance fields
.field key:Ljava/lang/Object;

.field patterns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/trilead/ssh2/KnownHosts;


# direct methods
.method constructor <init>(Lcom/trilead/ssh2/KnownHosts;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "patterns"
    .parameter "key"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->this$0:Lcom/trilead/ssh2/KnownHosts;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->patterns:[Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/trilead/ssh2/KnownHosts$KnownHostsEntry;->key:Ljava/lang/Object;

    return-void
.end method
