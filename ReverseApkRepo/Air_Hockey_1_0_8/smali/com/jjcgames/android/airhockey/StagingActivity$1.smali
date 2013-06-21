.class Lcom/jjcgames/android/airhockey/StagingActivity$1;
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
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/StagingActivity$1;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    .line 107
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

    .line 110
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/StagingActivity$1;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 111
    .local v0, t:Landroid/widget/EditText;
    const v1, 0x7f08001e

    if-ne p2, v1, :cond_1

    .line 112
    const-string v1, "%.01f"

    new-array v2, v3, [Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$1;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x4000

    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 119
    :goto_1
    return-void

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$1;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$1(Lcom/jjcgames/android/airhockey/StagingActivity;)I

    move-result v3

    invoke-static {v3}, Lcom/jjcgames/android/airhockey/Game;->puckSpeed(I)F

    move-result v3

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1
.end method
