.class Lcom/ui/LapseIt/capture/CaptureMenuWidget$3;
.super Ljava/lang/Object;
.source "CaptureMenuWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureMenuWidget;-><init>(Lcom/ui/LapseIt/capture/CaptureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$3;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$3;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->toggleMenuAnimation()V

    .line 149
    return-void
.end method
