.class Lcom/ui/LapseIt/project/ProjectView$7;
.super Ljava/lang/Object;
.source "ProjectView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/ProjectView;->buildConfirmQuickRender()V
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
    iput-object p1, p0, Lcom/ui/LapseIt/project/ProjectView$7;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectView$7;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/ProjectView;->setRequestedOrientation(I)V

    .line 730
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 731
    return-void
.end method
