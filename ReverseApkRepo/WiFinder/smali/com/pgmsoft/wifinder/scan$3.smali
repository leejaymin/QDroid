.class Lcom/pgmsoft/wifinder/scan$3;
.super Ljava/lang/Object;
.source "scan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/scan;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$3;->this$0:Lcom/pgmsoft/wifinder/scan;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$3;->this$0:Lcom/pgmsoft/wifinder/scan;

    #setter for: Lcom/pgmsoft/wifinder/scan;->level_choose:I
    invoke-static {v0, p2}, Lcom/pgmsoft/wifinder/scan;->access$29(Lcom/pgmsoft/wifinder/scan;I)V

    .line 302
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$3;->this$0:Lcom/pgmsoft/wifinder/scan;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan$3;->this$0:Lcom/pgmsoft/wifinder/scan;

    #getter for: Lcom/pgmsoft/wifinder/scan;->level_choose:I
    invoke-static {v1}, Lcom/pgmsoft/wifinder/scan;->access$30(Lcom/pgmsoft/wifinder/scan;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/pgmsoft/wifinder/scan;->saveLevelChoose(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/scan;->access$31(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$3;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v1, 0x0

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 304
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 305
    return-void
.end method
