.class Lcom/ui/LapseIt/project/ProjectView$1;
.super Ljava/lang/Object;
.source "ProjectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/ProjectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/ProjectView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/ProjectView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/ProjectView$1;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectView$1;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    #calls: Lcom/ui/LapseIt/project/ProjectView;->buildConfirmQuickRender()V
    invoke-static {v0}, Lcom/ui/LapseIt/project/ProjectView;->access$0(Lcom/ui/LapseIt/project/ProjectView;)V

    .line 591
    return-void
.end method
