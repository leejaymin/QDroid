.class Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->activateBasicNavBar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner$2;->this$1:Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;->_navController:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->startFetching()V

    return-void
.end method
