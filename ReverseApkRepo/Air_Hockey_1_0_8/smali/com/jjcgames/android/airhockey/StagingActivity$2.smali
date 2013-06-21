.class Lcom/jjcgames/android/airhockey/StagingActivity$2;
.super Ljava/lang/Object;
.source "StagingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 131
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    const-class v4, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;

    .line 131
    :goto_0
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v1, in:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f08001f

    .line 133
    if-ne v3, v4, :cond_2

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    .line 140
    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 139
    check-cast v3, Landroid/widget/EditText;

    .line 140
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 144
    .local v2, puckSpeed:F
    :goto_1
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 145
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    const v4, 0x7f060024

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 147
    const v4, 0x7f060012

    .line 148
    new-instance v5, Lcom/jjcgames/android/airhockey/StagingActivity$2$1;

    invoke-direct {v5, p0}, Lcom/jjcgames/android/airhockey/StagingActivity$2$1;-><init>(Lcom/jjcgames/android/airhockey/StagingActivity$2;)V

    .line 147
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 170
    .end local v2           #puckSpeed:F
    :goto_2
    return-void

    .line 132
    .end local v1           #in:Landroid/content/Intent;
    :cond_0
    const-class v4, Lcom/jjcgames/android/airhockey/GameActivity;

    goto :goto_0

    .line 141
    .restart local v1       #in:Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 142
    .local v0, e:Ljava/lang/NumberFormatException;
    const/high16 v2, -0x4080

    .restart local v2       #puckSpeed:F
    goto :goto_1

    .line 157
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v3, "puck_speed_custom"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 160
    .end local v2           #puckSpeed:F
    :cond_2
    const-string v3, "match_games"

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #calls: Lcom/jjcgames/android/airhockey/StagingActivity;->getMatchGames()I
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$2(Lcom/jjcgames/android/airhockey/StagingActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v3, "players"

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    :goto_3
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 163
    const-string v3, "player_id"

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$3(Lcom/jjcgames/android/airhockey/StagingActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v3, "cpu_level"

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$1(Lcom/jjcgames/android/airhockey/StagingActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    :cond_3
    const-string v4, "sound"

    .line 167
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const v5, 0x7f080004

    invoke-virtual {v3, v5}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 166
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #setter for: Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z
    invoke-static {v3, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$4(Lcom/jjcgames/android/airhockey/StagingActivity;Z)V

    .line 169
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$2;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_4
    move v4, v6

    .line 161
    goto :goto_3
.end method
