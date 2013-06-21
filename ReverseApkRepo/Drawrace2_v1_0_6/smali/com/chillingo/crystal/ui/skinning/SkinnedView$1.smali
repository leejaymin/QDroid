.class Lcom/chillingo/crystal/ui/skinning/SkinnedView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/skinning/SkinnedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$1;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$1;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    #getter for: Lcom/chillingo/crystal/ui/skinning/SkinnedView;->_textField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->access$000(Lcom/chillingo/crystal/ui/skinning/SkinnedView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$1;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    #calls: Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setModelData(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->access$100(Lcom/chillingo/crystal/ui/skinning/SkinnedView;Ljava/lang/Object;)V

    return-void
.end method
