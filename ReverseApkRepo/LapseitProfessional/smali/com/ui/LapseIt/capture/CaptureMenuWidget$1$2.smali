.class Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$2;
.super Ljava/lang/Object;
.source "CaptureMenuWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$2;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$2;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$2;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v1}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v1

    iget-object v1, v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$2;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isManual:Z

    .line 288
    return-void
.end method
