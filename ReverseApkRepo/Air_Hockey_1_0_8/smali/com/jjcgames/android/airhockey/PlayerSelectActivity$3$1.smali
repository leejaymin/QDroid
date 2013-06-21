.class Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$1;
.super Ljava/lang/Object;
.source "PlayerSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;

.field private final synthetic val$p:Lcom/jjcgames/android/airhockey/Player;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;Lcom/jjcgames/android/airhockey/Player;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$1;->this$1:Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;

    iput-object p2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$1;->val$p:Lcom/jjcgames/android/airhockey/Player;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 242
    new-instance v0, Ljava/io/File;

    .line 243
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$1;->this$1:Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;

    #getter for: Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;
    invoke-static {v1}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->access$0(Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;)Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    move-result-object v1

    const-string v2, "players"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$1;->val$p:Lcom/jjcgames/android/airhockey/Player;

    iget v2, v2, Lcom/jjcgames/android/airhockey/Player;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 245
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$1;->this$1:Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;

    #getter for: Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;
    invoke-static {v0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->access$0(Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;)Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    move-result-object v0

    #calls: Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->populatePlayerList()V
    invoke-static {v0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->access$2(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;)V

    .line 246
    return-void
.end method
