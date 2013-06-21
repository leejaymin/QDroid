.class Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;
.super Ljava/lang/Object;
.source "HighscoresActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/battlesheep/marblebox/activities/HighscoresActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;


# direct methods
.method constructor <init>(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    #calls: Lcom/battlesheep/marblebox/activities/HighscoresActivity;->hideKeyboard()V
    invoke-static {v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->access$1(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V

    .line 97
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNameInput:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->access$2(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    invoke-virtual {v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 99
    .local v0, name:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mLevelPlayed:Ljava/lang/String;
    invoke-static {v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->access$3(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNewScore:J
    invoke-static {v2}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->access$4(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/battlesheep/marblebox/Highscores;->addScore(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 100
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNewScorePanel:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->access$5(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mResetButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->access$6(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    #calls: Lcom/battlesheep/marblebox/activities/HighscoresActivity;->populateTable()V
    invoke-static {v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->access$0(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V

    .line 103
    return-void

    .line 98
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$4;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/HighscoresActivity;->mNameInput:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->access$2(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
