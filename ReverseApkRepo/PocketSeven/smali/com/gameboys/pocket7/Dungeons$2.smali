.class Lcom/gameboys/pocket7/Dungeons$2;
.super Ljava/lang/Object;
.source "Dungeons.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameboys/pocket7/Dungeons;->setupWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/Dungeons;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/Dungeons;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/Dungeons$2;->this$0:Lcom/gameboys/pocket7/Dungeons;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/gameboys/pocket7/Dungeons$2;->this$0:Lcom/gameboys/pocket7/Dungeons;

    #getter for: Lcom/gameboys/pocket7/Dungeons;->mBillingService:Lcom/gameboys/pocket7/BillingService;
    invoke-static {v0}, Lcom/gameboys/pocket7/Dungeons;->access$2(Lcom/gameboys/pocket7/Dungeons;)Lcom/gameboys/pocket7/BillingService;

    move-result-object v0

    iget-object v1, p0, Lcom/gameboys/pocket7/Dungeons$2;->this$0:Lcom/gameboys/pocket7/Dungeons;

    #getter for: Lcom/gameboys/pocket7/Dungeons;->PID:Ljava/lang/String;
    invoke-static {v1}, Lcom/gameboys/pocket7/Dungeons;->access$3(Lcom/gameboys/pocket7/Dungeons;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/gameboys/pocket7/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 391
    return-void
.end method
