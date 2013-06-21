.class Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->attachMultiTabFromBottom(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

.field final synthetic val$optionalLeaderboardId:Ljava/lang/String;

.field final synthetic val$tabs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;->this$0:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    iput-object p2, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;->val$optionalLeaderboardId:Ljava/lang/String;

    iput-object p3, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;->val$tabs:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;->this$0:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    iget-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;->val$optionalLeaderboardId:Ljava/lang/String;

    #setter for: Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_optionalLeaderboardId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->access$302(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;->this$0:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    iget-object v1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;->val$tabs:Ljava/util/List;

    invoke-static {v1}, Lcom/chillingo/crystal/ui/PullTabConfiguration;->stringListToConfigurationList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_multitabs:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->access$402(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$56;->this$0:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    #setter for: Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    invoke-static {v0, v1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->access$102(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;)Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->access$200()Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PullTabMultiTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachUi(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    return-void
.end method
