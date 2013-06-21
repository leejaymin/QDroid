.class Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;
.super Ljava/lang/Object;
.source "PostOverlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 185
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;
    invoke-static {v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->access$000(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Lcom/scoreloop/client/android/core/controller/MessageController;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    invoke-virtual {v4}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->getMessageTarget()Lcom/scoreloop/client/android/core/model/Entity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/core/controller/MessageController;->setTarget(Ljava/lang/Object;)V

    .line 187
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_checkboxToProviderMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->access$100(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 188
    .local v0, checkBox:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_checkboxToProviderMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->access$100(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 189
    .local v2, provider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;
    invoke-static {v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->access$000(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Lcom/scoreloop/client/android/core/controller/MessageController;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Lcom/scoreloop/client/android/core/controller/MessageController;->addReceiverWithUsers(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #provider:Lcom/scoreloop/client/android/core/model/SocialProvider;
    :cond_1
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;
    invoke-static {v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->access$000(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Lcom/scoreloop/client/android/core/controller/MessageController;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->access$200(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scoreloop/client/android/core/controller/MessageController;->setText(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;
    invoke-static {v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->access$000(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Lcom/scoreloop/client/android/core/controller/MessageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/MessageController;->isSubmitAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    const/4 v4, 0x1

    #calls: Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->blockUI(Z)V
    invoke-static {v3, v4}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->access$300(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;Z)V

    .line 197
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity$3;->this$0:Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;

    #getter for: Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->_messageController:Lcom/scoreloop/client/android/core/controller/MessageController;
    invoke-static {v3}, Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;->access$000(Lcom/scoreloop/client/android/ui/component/post/PostOverlayActivity;)Lcom/scoreloop/client/android/core/controller/MessageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/controller/MessageController;->submitMessage()V

    .line 199
    :cond_2
    return-void
.end method
