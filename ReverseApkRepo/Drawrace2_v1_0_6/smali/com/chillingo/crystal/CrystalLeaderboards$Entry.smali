.class public Lcom/chillingo/crystal/CrystalLeaderboards$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/CrystalLeaderboards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field private _percentile:Ljava/lang/String;

.field private _position:I

.field private _score:D

.field private _username:Ljava/lang/String;

.field final synthetic this$0:Lcom/chillingo/crystal/CrystalLeaderboards;


# direct methods
.method private constructor <init>(Lcom/chillingo/crystal/CrystalLeaderboards;Lorg/json/JSONObject;)V
    .locals 3

    iput-object p1, p0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;->this$0:Lcom/chillingo/crystal/CrystalLeaderboards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "username"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;->_username:Ljava/lang/String;

    const-string v0, "position"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;->_position:I

    const-string v0, "position"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;->_percentile:Ljava/lang/String;

    const-string v0, "score"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;->_score:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/chillingo/crystal/CrystalLeaderboards;Lorg/json/JSONObject;Lcom/chillingo/crystal/CrystalLeaderboards$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;-><init>(Lcom/chillingo/crystal/CrystalLeaderboards;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public percentile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;->_percentile:Ljava/lang/String;

    return-object v0
.end method

.method public position()I
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;->_position:I

    return v0
.end method

.method public score()D
    .locals 2

    iget-wide v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;->_score:D

    return-wide v0
.end method

.method public username()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/CrystalLeaderboards$Entry;->_username:Ljava/lang/String;

    return-object v0
.end method
