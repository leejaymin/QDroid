.class Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;
.super Ljava/lang/Object;
.source "PlayerSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

.field private final synthetic val$playerList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    iput-object p2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;->val$playerList:Landroid/widget/ListView;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 200
    iget-object v4, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;->val$playerList:Landroid/widget/ListView;

    invoke-virtual {v4, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjcgames/android/airhockey/Player;

    .line 201
    .local v2, p:Lcom/jjcgames/android/airhockey/Player;
    if-nez v2, :cond_0

    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    const v7, 0x7f06000d

    invoke-virtual {v6, v7}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 204
    const/16 v7, 0xc8

    #calls: Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->createPlayer(ILjava/lang/String;I)V
    invoke-static {v4, v5, v6, v7}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->access$0(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;ILjava/lang/String;I)V

    .line 205
    new-instance v3, Lcom/jjcgames/android/airhockey/Player;

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lcom/jjcgames/android/airhockey/Player;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #p:Lcom/jjcgames/android/airhockey/Player;
    .local v3, p:Lcom/jjcgames/android/airhockey/Player;
    move-object v2, v3

    .line 211
    .end local v3           #p:Lcom/jjcgames/android/airhockey/Player;
    .restart local v2       #p:Lcom/jjcgames/android/airhockey/Player;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 212
    iget-object v4, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    .line 213
    const-class v5, Lcom/jjcgames/android/airhockey/OnePlayerStagingActivity;

    .line 211
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v1, i:Landroid/content/Intent;
    const-string v4, "players"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v4, "player_id"

    iget v5, v2, Lcom/jjcgames/android/airhockey/Player;->id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget-object v4, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    #setter for: Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->movingOn:Z
    invoke-static {v4, v8}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->access$1(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Z)V

    .line 217
    iget-object v4, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$2;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    invoke-virtual {v4, v1}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 208
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method
