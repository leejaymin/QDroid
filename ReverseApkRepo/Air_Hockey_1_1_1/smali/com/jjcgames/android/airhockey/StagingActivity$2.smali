.class Lcom/jjcgames/android/airhockey/StagingActivity$2;
.super Ljava/lang/Object;
.source "StagingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/StagingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/StagingActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/StagingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 148
    .local v0, t:Landroid/widget/EditText;
    const v1, 0x7f090024

    if-ne p2, v1, :cond_2

    .line 149
    const-string v1, "%.01f"

    new-array v2, v3, [Ljava/lang/Object;

    .line 150
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->multitouch:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$1(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const v3, 0x40466666

    .line 150
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 158
    :goto_1
    return-void

    .line 152
    :cond_0
    const/high16 v3, 0x4000

    goto :goto_0

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$2(Lcom/jjcgames/android/airhockey/StagingActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/jjcgames/android/airhockey/Game;->puckSpeed(I)F

    move-result v3

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1
.end method
