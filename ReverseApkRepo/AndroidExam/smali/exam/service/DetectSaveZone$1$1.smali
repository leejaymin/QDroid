.class Lexam/service/DetectSaveZone$1$1;
.super Ljava/lang/Object;
.source "DetectSaveZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/service/DetectSaveZone$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/service/DetectSaveZone$1;


# direct methods
.method constructor <init>(Lexam/service/DetectSaveZone$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/DetectSaveZone$1$1;->this$1:Lexam/service/DetectSaveZone$1;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "exam.service.SAVEZONE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    iget-object v1, p0, Lexam/service/DetectSaveZone$1$1;->this$1:Lexam/service/DetectSaveZone$1;

    #getter for: Lexam/service/DetectSaveZone$1;->this$0:Lexam/service/DetectSaveZone;
    invoke-static {v1}, Lexam/service/DetectSaveZone$1;->access$0(Lexam/service/DetectSaveZone$1;)Lexam/service/DetectSaveZone;

    move-result-object v1

    invoke-virtual {v1, v0}, Lexam/service/DetectSaveZone;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
