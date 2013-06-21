.class Lorg/tf/ui/ActivityBase$1;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/ui/ActivityBase;->onCreatePanelView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/ui/ActivityBase;


# direct methods
.method constructor <init>(Lorg/tf/ui/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/ui/ActivityBase$1;->this$0:Lorg/tf/ui/ActivityBase;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 170
    iget-object v0, p0, Lorg/tf/ui/ActivityBase$1;->this$0:Lorg/tf/ui/ActivityBase;

    invoke-virtual {v0}, Lorg/tf/ui/ActivityBase;->closeOptionsMenu()V

    .line 171
    iget-object v0, p0, Lorg/tf/ui/ActivityBase$1;->this$0:Lorg/tf/ui/ActivityBase;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/tf/ui/ActivityBase;->onMenuItemClick(I)V

    .line 172
    return-void
.end method
