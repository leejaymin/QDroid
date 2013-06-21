.class Lcom/ui/LapseIt/capture/CaptureView$1$1;
.super Ljava/lang/Object;
.source "CaptureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/capture/CaptureView$1;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$1$1;->this$1:Lcom/ui/LapseIt/capture/CaptureView$1;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 212
    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureView$1$1;->this$1:Lcom/ui/LapseIt/capture/CaptureView$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureView$1;->this$0:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureView$1;->access$0(Lcom/ui/LapseIt/capture/CaptureView$1;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v4

    const-string v5, "dim"

    invoke-static {v4, v5}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059

    div-double v0, v4, v6

    .line 213
    .local v0, dimLevel:D
    const-wide v4, -0x3f90200000000000L

    const-wide v6, 0x406fe00000000000L

    mul-double/2addr v6, v0

    add-double v2, v4, v6

    .line 214
    .local v2, dimLevelInverted:D
    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureView$1$1;->this$1:Lcom/ui/LapseIt/capture/CaptureView$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureView$1;->this$0:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureView$1;->access$0(Lcom/ui/LapseIt/capture/CaptureView$1;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v4

    iget-object v4, v4, Lcom/ui/LapseIt/capture/CaptureView;->dimRect:Landroid/widget/RelativeLayout;

    double-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 215
    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureView$1$1;->this$1:Lcom/ui/LapseIt/capture/CaptureView$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureView$1;->this$0:Lcom/ui/LapseIt/capture/CaptureView;
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureView$1;->access$0(Lcom/ui/LapseIt/capture/CaptureView$1;)Lcom/ui/LapseIt/capture/CaptureView;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/ui/LapseIt/capture/CaptureView;->isDimmed:Z

    .line 216
    return-void
.end method
