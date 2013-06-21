.class Lcom/shoutem/DeviceUiHandler$4;
.super Ljava/lang/Object;
.source "DeviceUiHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shoutem/DeviceUiHandler;->handleShowDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shoutem/DeviceUiHandler;

.field final synthetic val$nobut:Lcom/shoutem/ScriptMenuItem;


# direct methods
.method constructor <init>(Lcom/shoutem/DeviceUiHandler;Lcom/shoutem/ScriptMenuItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/shoutem/DeviceUiHandler$4;->this$0:Lcom/shoutem/DeviceUiHandler;

    iput-object p2, p0, Lcom/shoutem/DeviceUiHandler$4;->val$nobut:Lcom/shoutem/ScriptMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/shoutem/DeviceUiHandler$4;->val$nobut:Lcom/shoutem/ScriptMenuItem;

    iget-object v0, v0, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shoutem/DeviceUiHandler$4;->val$nobut:Lcom/shoutem/ScriptMenuItem;

    iget-object v0, v0, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    iget-object v1, p0, Lcom/shoutem/DeviceUiHandler$4;->val$nobut:Lcom/shoutem/ScriptMenuItem;

    iget-object v1, v1, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shoutem/n64635/HomeActivity;->goUrl(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method
