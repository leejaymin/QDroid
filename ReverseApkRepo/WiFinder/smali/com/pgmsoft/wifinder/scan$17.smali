.class Lcom/pgmsoft/wifinder/scan$17;
.super Ljava/lang/Object;
.source "scan.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgmsoft/wifinder/scan;->onKeyDown(ILandroid/view/KeyEvent;)Z
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
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan$17;->this$0:Lcom/pgmsoft/wifinder/scan;

    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$17;->this$0:Lcom/pgmsoft/wifinder/scan;

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WiFi ON remain, Bye Bye"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan$17;->this$0:Lcom/pgmsoft/wifinder/scan;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/scan;->finish()V

    .line 1257
    return-void
.end method
