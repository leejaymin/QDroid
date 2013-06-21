.class Lcom/shoutem/DeviceUiHandler$5;
.super Ljava/lang/Object;
.source "DeviceUiHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shoutem/DeviceUiHandler;->handleShowPopupMenu(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shoutem/DeviceUiHandler;

.field final synthetic val$labels:Ljava/util/Vector;


# direct methods
.method constructor <init>(Lcom/shoutem/DeviceUiHandler;Ljava/util/Vector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/shoutem/DeviceUiHandler$5;->this$0:Lcom/shoutem/DeviceUiHandler;

    iput-object p2, p0, Lcom/shoutem/DeviceUiHandler$5;->val$labels:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/shoutem/DeviceUiHandler$5;->val$labels:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/shoutem/DeviceUiHandler$5;->val$labels:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shoutem/ScriptMenuItem;

    iget-object v0, v0, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 418
    sget-object v1, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    iget-object v0, p0, Lcom/shoutem/DeviceUiHandler$5;->val$labels:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shoutem/ScriptMenuItem;

    iget-object v0, v0, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/shoutem/n64635/HomeActivity;->goUrl(Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void
.end method
