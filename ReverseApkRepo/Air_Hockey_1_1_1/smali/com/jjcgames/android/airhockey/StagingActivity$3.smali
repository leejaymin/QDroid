.class Lcom/jjcgames/android/airhockey/StagingActivity$3;
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

.field private final synthetic val$multitouchPossible:Z


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/StagingActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    iput-boolean p2, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->val$multitouchPossible:Z

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const-class v8, Lcom/jjcgames/android/airhockey/GameActivity;

    const-string v7, "multitouch"

    .line 170
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    const-class v4, Lcom/jjcgames/android/airhockey/TwoPlayerInstructionsActivity;

    .line 170
    :goto_0
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v1, in:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 173
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const v4, 0x7f090023

    invoke-virtual {v3, v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const v4, 0x7f090025

    .line 172
    if-ne v3, v4, :cond_2

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    .line 179
    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 178
    check-cast v3, Landroid/widget/EditText;

    .line 179
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 183
    .local v2, puckSpeed:F
    :goto_1
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 184
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    const v4, 0x7f070024

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 186
    const v4, 0x7f070012

    .line 187
    new-instance v5, Lcom/jjcgames/android/airhockey/StagingActivity$3$1;

    invoke-direct {v5, p0}, Lcom/jjcgames/android/airhockey/StagingActivity$3$1;-><init>(Lcom/jjcgames/android/airhockey/StagingActivity$3;)V

    .line 186
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 219
    .end local v2           #puckSpeed:F
    :goto_2
    return-void

    .line 171
    .end local v1           #in:Landroid/content/Intent;
    :cond_0
    const-class v4, Lcom/jjcgames/android/airhockey/GameActivity;

    move-object v4, v8

    goto :goto_0

    .line 180
    .restart local v1       #in:Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 181
    .local v0, e:Ljava/lang/NumberFormatException;
    const/high16 v2, -0x4080

    .restart local v2       #puckSpeed:F
    goto :goto_1

    .line 196
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v3, "puck_speed_custom"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 199
    .end local v2           #puckSpeed:F
    :cond_2
    const-string v3, "match_games"

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #calls: Lcom/jjcgames/android/airhockey/StagingActivity;->getMatchGames()I
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$3(Lcom/jjcgames/android/airhockey/StagingActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v3, "players"

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    :goto_3
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->twoPlayer:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$0(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 202
    const-string v3, "player_id"

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->playerID:I
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$4(Lcom/jjcgames/android/airhockey/StagingActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v3, "cpu_level"

    iget-object v4, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->cpuLevel:I
    invoke-static {v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$2(Lcom/jjcgames/android/airhockey/StagingActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    :cond_3
    const-string v4, "sound"

    .line 206
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const v5, 0x7f090008

    invoke-virtual {v3, v5}, Lcom/jjcgames/android/airhockey/StagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 205
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    iget-boolean v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->val$multitouchPossible:Z

    if-eqz v3, :cond_4

    .line 208
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->multitouch:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$1(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 209
    const-string v3, "multitouch"

    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->multitouch:Z
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$1(Lcom/jjcgames/android/airhockey/StagingActivity;)Z

    move-result v3

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const-class v4, Lcom/jjcgames/android/airhockey/GameActivity;

    .line 210
    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 217
    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #setter for: Lcom/jjcgames/android/airhockey/StagingActivity;->movingOn:Z
    invoke-static {v3, v6}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$6(Lcom/jjcgames/android/airhockey/StagingActivity;Z)V

    .line 218
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/jjcgames/android/airhockey/StagingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_5
    move v4, v6

    .line 200
    goto :goto_3

    .line 212
    :cond_6
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    #getter for: Lcom/jjcgames/android/airhockey/StagingActivity;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/StagingActivity;->access$5(Lcom/jjcgames/android/airhockey/StagingActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "multitouch"

    invoke-interface {v3, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 214
    iget-object v3, p0, Lcom/jjcgames/android/airhockey/StagingActivity$3;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const-class v4, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    .line 213
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_4
.end method
