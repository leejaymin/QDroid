.class Lcom/lgt/arm/LGUArmManager$ArmConnection;
.super Ljava/lang/Object;
.source "LGUArmManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lgt/arm/LGUArmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArmConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lgt/arm/LGUArmManager;


# direct methods
.method private constructor <init>(Lcom/lgt/arm/LGUArmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lgt/arm/LGUArmManager$ArmConnection;->this$0:Lcom/lgt/arm/LGUArmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lgt/arm/LGUArmManager;Lcom/lgt/arm/LGUArmManager$ArmConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/lgt/arm/LGUArmManager$ArmConnection;-><init>(Lcom/lgt/arm/LGUArmManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "boundService"

    .prologue
    .line 194
    const-string v0, "LGUArmManger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " onServiceConnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/lgt/arm/LGUArmManager$ArmConnection;->this$0:Lcom/lgt/arm/LGUArmManager;

    iget-object v0, v0, Lcom/lgt/arm/LGUArmManager;->service:Lcom/lgt/arm/ArmInterface;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lgt/arm/LGUArmManager$ArmConnection;->this$0:Lcom/lgt/arm/LGUArmManager;

    invoke-static {p2}, Lcom/lgt/arm/ArmInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lgt/arm/ArmInterface;

    move-result-object v1

    iput-object v1, v0, Lcom/lgt/arm/LGUArmManager;->service:Lcom/lgt/arm/ArmInterface;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/lgt/arm/LGUArmManager$ArmConnection;->this$0:Lcom/lgt/arm/LGUArmManager;

    const/4 v1, 0x1

    iput v1, v0, Lcom/lgt/arm/LGUArmManager;->netState:I

    .line 198
    iget-object v0, p0, Lcom/lgt/arm/LGUArmManager$ArmConnection;->this$0:Lcom/lgt/arm/LGUArmManager;

    iget-object v1, p0, Lcom/lgt/arm/LGUArmManager$ArmConnection;->this$0:Lcom/lgt/arm/LGUArmManager;

    #getter for: Lcom/lgt/arm/LGUArmManager;->AID:Ljava/lang/String;
    invoke-static {v1}, Lcom/lgt/arm/LGUArmManager;->access$0(Lcom/lgt/arm/LGUArmManager;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/lgt/arm/LGUArmManager;->getLicenseStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lgt/arm/LGUArmManager;->access$1(Lcom/lgt/arm/LGUArmManager;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 202
    const-string v0, "LGUArmManger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " onServiceDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method
