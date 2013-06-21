.class final Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->initUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$marketType:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$secretKey:Ljava/lang/String;

.field final synthetic val$themeName:Ljava/lang/String;

.field final synthetic val$version:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$version:F

    iput-object p4, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$themeName:Ljava/lang/String;

    iput-object p5, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$secretKey:Ljava/lang/String;

    iput p6, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$marketType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "UnityCrystalSession"

    const-string v1, "Initialising Unity Crystal Session"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->access$000()Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;

    move-result-object v0

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/activities/CrystalUnityBase;->activityContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$version:F

    float-to-double v4, v4

    iget-object v6, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$themeName:Ljava/lang/String;

    iget-object v7, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$secretKey:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Lcom/chillingo/crystal/MarketType;->values()[Lcom/chillingo/crystal/MarketType;

    move-result-object v9

    iget v10, p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession$1;->val$marketType:I

    aget-object v9, v9, v10

    invoke-static/range {v0 .. v9}, Lcom/chillingo/crystal/CrystalSession;->init(Lcom/chillingo/crystal/CrystalDelegate;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Landroid/view/Window;Lcom/chillingo/crystal/MarketType;)V

    invoke-static {}, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCrystalSession;->camera()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CrystalSessionInitialised"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
