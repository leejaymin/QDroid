.class Lcom/chillingo/crystal/ui/skinning/SkinnedView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/skinning/SkinnedView;->deselect(J)V
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

    iput-object p1, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$3;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/ui/skinning/SkinnedView$3;->this$0:Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelected(Z)V

    return-void
.end method
