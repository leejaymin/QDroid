.class Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/ModalView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/ModalView;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "ModalView"

    const-string v1, "+show"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_delegate:Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;

    invoke-interface {v0}, Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;->shouldShowDialog()Z

    move-result v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v1, "ModalView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to show modal internet connection dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    iget-object v1, v1, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_parent:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_2

    const-string v0, "ModalView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    iget-object v2, v2, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_parent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    const/4 v1, 0x0

    #calls: Lcom/chillingo/crystal/ui/viewgroups/ModalView;->setChildrenClickable(Z)V
    invoke-static {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->access$000(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {v0, v4}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->setClickable(Z)V

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    iget-object v0, v0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->_parent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$2;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "ModalView"

    const-string v1, "-show"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v1, "ModalView"

    const-string v2, "ModalView::show(), exception adding view"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
