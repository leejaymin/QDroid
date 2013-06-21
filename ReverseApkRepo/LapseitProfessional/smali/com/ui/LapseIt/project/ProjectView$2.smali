.class Lcom/ui/LapseIt/project/ProjectView$2;
.super Ljava/lang/Object;
.source "ProjectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/ProjectView;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/ui/LapseIt/project/ProjectView$2;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectView$2;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView$2;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/project/ProjectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    return-void
.end method
