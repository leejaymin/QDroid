.class Lcom/battlesheep/marblebox/activities/HighscoresActivity$3;
.super Ljava/lang/Object;
.source "HighscoresActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/battlesheep/marblebox/activities/HighscoresActivity;
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
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$3;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 158
    invoke-static {}, Lcom/battlesheep/marblebox/Highscores;->resetScores()V

    .line 159
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$3;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    #calls: Lcom/battlesheep/marblebox/activities/HighscoresActivity;->populateTable()V
    invoke-static {v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->access$0(Lcom/battlesheep/marblebox/activities/HighscoresActivity;)V

    .line 160
    return-void
.end method
