.class Lcom/battlesheep/marblebox/activities/HighscoresActivity$1;
.super Ljava/lang/Object;
.source "HighscoresActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$1;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/HighscoresActivity$1;->this$0:Lcom/battlesheep/marblebox/activities/HighscoresActivity;

    invoke-virtual {v0}, Lcom/battlesheep/marblebox/activities/HighscoresActivity;->finish()V

    .line 137
    return-void
.end method
