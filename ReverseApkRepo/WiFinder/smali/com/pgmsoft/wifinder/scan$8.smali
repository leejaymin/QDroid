.class Lcom/pgmsoft/wifinder/scan$8;
.super Ljava/lang/Object;
.source "scan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/scan;->wifiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pgmsoft/wifinder/scan;


# direct methods
.method constructor <init>(Lcom/pgmsoft/wifinder/scan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$8;->this$0:Lcom/pgmsoft/wifinder/scan;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$8;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;
    invoke-static {v0}, Lcom/pgmsoft/wifinder/scan;->access$16(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$8;->this$0:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/scan;->update()V

    .line 428
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$8;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/pgmsoft/wifinder/scan;->access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 429
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$8;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v1, 0x5

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/pgmsoft/wifinder/scan;->GorneInfo(ILjava/lang/String;)V

    .line 430
    return-void
.end method
