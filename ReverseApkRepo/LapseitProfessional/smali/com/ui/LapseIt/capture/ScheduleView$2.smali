.class Lcom/ui/LapseIt/capture/ScheduleView$2;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/ScheduleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/ScheduleView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/ScheduleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/ScheduleView$2;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$2;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStartDate:J
    invoke-static {v0}, Lcom/ui/LapseIt/capture/ScheduleView;->access$1(Lcom/ui/LapseIt/capture/ScheduleView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$2;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$2;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStartDate:J
    invoke-static {v1}, Lcom/ui/LapseIt/capture/ScheduleView;->access$1(Lcom/ui/LapseIt/capture/ScheduleView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView$2;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEndDate:J
    invoke-static {v3}, Lcom/ui/LapseIt/capture/ScheduleView;->access$5(Lcom/ui/LapseIt/capture/ScheduleView;)J

    move-result-wide v3

    #calls: Lcom/ui/LapseIt/capture/ScheduleView;->scheduleCapture(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/ui/LapseIt/capture/ScheduleView;->access$6(Lcom/ui/LapseIt/capture/ScheduleView;JJ)V

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Your capture schedule was created"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$2;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/ScheduleView;->finish()V

    .line 169
    :cond_0
    return-void
.end method
