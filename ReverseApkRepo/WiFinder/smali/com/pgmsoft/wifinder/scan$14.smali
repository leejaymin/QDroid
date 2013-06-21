.class Lcom/pgmsoft/wifinder/scan$14;
.super Ljava/lang/Object;
.source "scan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/scan;->showDialogNetwork(Ljava/lang/Object;ZI)V
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
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$14;->this$0:Lcom/pgmsoft/wifinder/scan;

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$14;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$14;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->connected:Z
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$35(Lcom/pgmsoft/wifinder/scan;)Z

    move-result v1

    iget-object v2, p0, Lcom/pgmsoft/wifinder/scan$14;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Lcom/pgmsoft/wifinder/scan;->access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/pgmsoft/wifinder/scan;->forgetNerwork(ZIZ)V

    .line 774
    return-void
.end method
