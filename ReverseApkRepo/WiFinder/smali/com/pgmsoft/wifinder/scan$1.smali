.class Lcom/pgmsoft/wifinder/scan$1;
.super Ljava/lang/Object;
.source "scan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/scan;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$1;->this$0:Lcom/pgmsoft/wifinder/scan;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$1;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/4 v1, 0x0

    #calls: Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Lcom/pgmsoft/wifinder/scan;->access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V

    .line 157
    return-void
.end method
