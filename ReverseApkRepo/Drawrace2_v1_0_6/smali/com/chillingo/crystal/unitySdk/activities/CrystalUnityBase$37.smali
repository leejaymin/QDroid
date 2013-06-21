.class Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->attachFriendsPullTabFromBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$37;->this$0:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$37;->this$0:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    sget-object v1, Lcom/chillingo/crystal/ui/PullTabConfiguration;->Freinds:Lcom/chillingo/crystal/ui/PullTabConfiguration;

    #setter for: Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_pullTabConfiguration:Lcom/chillingo/crystal/ui/PullTabConfiguration;
    invoke-static {v0, v1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->access$002(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Lcom/chillingo/crystal/ui/PullTabConfiguration;)Lcom/chillingo/crystal/ui/PullTabConfiguration;

    iget-object v0, p0, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase$37;->this$0:Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;

    sget-object v1, Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;->Bottom:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    #setter for: Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->_fromEdge:Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;
    invoke-static {v0, v1}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->access$102(Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;)Lcom/chillingo/crystal/ui/theming/PulltabFrameData$PullTabEdge;

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->access$200()Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;

    move-result-object v0

    sget-object v1, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->PullTab:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/restorable/RestorableUiProxy;->attachUi(Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;)V

    return-void
.end method
