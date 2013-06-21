.class Lcom/battlesheep/marblebox/Highscores$1;
.super Ljava/lang/Object;
.source "Highscores.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/battlesheep/marblebox/Highscores;->addScore(Ljava/lang/String;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/battlesheep/marblebox/HighscoreRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/battlesheep/marblebox/HighscoreRecord;Lcom/battlesheep/marblebox/HighscoreRecord;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 114
    iget-wide v0, p1, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    iget-wide v2, p2, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_0
    iget-wide v0, p1, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    iget-wide v2, p2, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 118
    const/4 v0, -0x1

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/battlesheep/marblebox/HighscoreRecord;

    check-cast p2, Lcom/battlesheep/marblebox/HighscoreRecord;

    invoke-virtual {p0, p1, p2}, Lcom/battlesheep/marblebox/Highscores$1;->compare(Lcom/battlesheep/marblebox/HighscoreRecord;Lcom/battlesheep/marblebox/HighscoreRecord;)I

    move-result v0

    return v0
.end method
