.class Lcom/chillingo/crystal/ui/viewgroups/ModalView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/ModalView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;Landroid/graphics/Rect;)V
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

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/ModalView$1;->this$0:Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
