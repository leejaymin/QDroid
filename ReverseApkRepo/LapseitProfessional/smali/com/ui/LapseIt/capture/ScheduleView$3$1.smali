.class Lcom/ui/LapseIt/capture/ScheduleView$3$1;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/ScheduleView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/capture/ScheduleView$3;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/ScheduleView$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/ScheduleView$3$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$3;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 194
    packed-switch p2, :pswitch_data_0

    .line 203
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    return-void

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$3$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$3;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$3;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/ScheduleView$3;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$3;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v0

    const-string v1, "scheduledStart"

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->removeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$3$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$3;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$3;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/ScheduleView$3;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$3;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v0

    const-string v1, "scheduledEnd"

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->removeSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$3$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$3;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$3;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/ScheduleView$3;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$3;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v0

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleDate:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/ScheduleView;->access$7(Lcom/ui/LapseIt/capture/ScheduleView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "You don\'t have any scheduled capture"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$3$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$3;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$3;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/ScheduleView$3;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$3;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v0

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleDate:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/ScheduleView;->access$7(Lcom/ui/LapseIt/capture/ScheduleView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$3$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$3;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$3;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/ScheduleView$3;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$3;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v0

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleDate:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/ScheduleView;->access$7(Lcom/ui/LapseIt/capture/ScheduleView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
