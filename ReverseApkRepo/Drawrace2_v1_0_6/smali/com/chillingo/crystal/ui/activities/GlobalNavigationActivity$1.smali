.class Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->activateBasicNavBar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity$1;->this$0:Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity$1;->this$0:Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;

    #getter for: Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->_navController:Lcom/chillingo/crystal/NavigationController;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;->access$000(Lcom/chillingo/crystal/ui/activities/GlobalNavigationActivity;)Lcom/chillingo/crystal/NavigationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManager;->startFetching()V

    return-void
.end method
