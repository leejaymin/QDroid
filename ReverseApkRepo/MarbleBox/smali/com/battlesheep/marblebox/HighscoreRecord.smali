.class public Lcom/battlesheep/marblebox/HighscoreRecord;
.super Ljava/lang/Object;
.source "HighscoreRecord.java"


# static fields
.field private static final KEY_LEVEL:Ljava/lang/String; = "LEVEL"

.field private static final KEY_NAME:Ljava/lang/String; = "NAME"

.field private static final KEY_SCORE:Ljava/lang/String; = "SCORE"


# instance fields
.field public level:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public score:J


# direct methods
.method public constructor <init>(Lcom/battlesheep/marblebox/HighscoreRecord;)V
    .locals 2
    .parameter "record"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-wide v0, p1, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    iput-wide v0, p0, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    .line 43
    iget-object v0, p1, Lcom/battlesheep/marblebox/HighscoreRecord;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/battlesheep/marblebox/HighscoreRecord;->name:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/battlesheep/marblebox/HighscoreRecord;->level:Ljava/lang/String;

    iput-object v0, p0, Lcom/battlesheep/marblebox/HighscoreRecord;->level:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "aName"
    .parameter "aLevel"
    .parameter "aScore"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/battlesheep/marblebox/HighscoreRecord;->name:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/battlesheep/marblebox/HighscoreRecord;->level:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    .line 35
    return-void
.end method

.method public static deserialize(Lorg/json/JSONObject;)Lcom/battlesheep/marblebox/HighscoreRecord;
    .locals 5
    .parameter "jo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/battlesheep/marblebox/HighscoreRecord;

    .line 69
    const-string v1, "NAME"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string v2, "LEVEL"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    const-string v3, "SCORE"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 68
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/battlesheep/marblebox/HighscoreRecord;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public serialize()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v0, jo:Lorg/json/JSONObject;
    const-string v1, "SCORE"

    iget-wide v2, p0, Lcom/battlesheep/marblebox/HighscoreRecord;->score:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    const-string v1, "LEVEL"

    iget-object v2, p0, Lcom/battlesheep/marblebox/HighscoreRecord;->level:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "NAME"

    iget-object v2, p0, Lcom/battlesheep/marblebox/HighscoreRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    return-object v0
.end method
