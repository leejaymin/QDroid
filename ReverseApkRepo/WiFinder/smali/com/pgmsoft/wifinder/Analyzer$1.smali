.class Lcom/pgmsoft/wifinder/Analyzer$1;
.super Landroid/content/BroadcastReceiver;
.source "Analyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/Analyzer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/Analyzer;


# direct methods
.method constructor <init>(Lcom/pgmsoft/wifinder/Analyzer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pgmsoft/wifinder/Analyzer$1;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer$1;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/Analyzer$1;->this$0:Lcom/pgmsoft/wifinder/Analyzer;

    iget-object v1, v1, Lcom/pgmsoft/wifinder/Analyzer;->managerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    #calls: Lcom/pgmsoft/wifinder/Analyzer;->drawCanvas(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/Analyzer;->access$0(Lcom/pgmsoft/wifinder/Analyzer;Ljava/util/List;)V

    .line 29
    return-void
.end method
