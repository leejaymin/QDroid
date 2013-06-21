.class final Lcom/inisoft/mediaplayer/gp;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/SoftwarePlayer;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/SoftwarePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gp;->a:Lcom/inisoft/mediaplayer/SoftwarePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gp;->a:Lcom/inisoft/mediaplayer/SoftwarePlayer;

    #calls: Lcom/inisoft/mediaplayer/SoftwarePlayer;->waitEvent0()Z
    invoke-static {v0}, Lcom/inisoft/mediaplayer/SoftwarePlayer;->access$4(Lcom/inisoft/mediaplayer/SoftwarePlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method
