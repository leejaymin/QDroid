.class Lcom/ui/LapseIt/Main$2;
.super Ljava/util/TimerTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/Main;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/Main$2;->this$0:Lcom/ui/LapseIt/Main;

    .line 89
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ui/LapseIt/Main$2;->this$0:Lcom/ui/LapseIt/Main;

    invoke-virtual {v1}, Lcom/ui/LapseIt/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ui/LapseIt/StartView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ui/LapseIt/Main$2;->this$0:Lcom/ui/LapseIt/Main;

    invoke-virtual {v1, v0}, Lcom/ui/LapseIt/Main;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method
