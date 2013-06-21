.class public Lcom/scoreloop/client/android/core/model/Challenge;
.super Lcom/scoreloop/client/android/core/model/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/MessageTargetInterface;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/Date;

.field private d:Lcom/scoreloop/client/android/core/model/User;

.field private e:Lcom/scoreloop/client/android/core/model/Score;

.field private f:Ljava/lang/Integer;

.field private g:Lcom/scoreloop/client/android/core/model/User;

.field private h:Lcom/scoreloop/client/android/core/model/Score;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Date;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Integer;

.field private n:Lcom/scoreloop/client/android/core/model/User;

.field private o:Ljava/lang/Integer;

.field private p:Lcom/scoreloop/client/android/core/model/Money;

.field private q:Lcom/scoreloop/client/android/core/model/Money;

.field private r:Ljava/lang/String;

.field private s:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "challenge"

    sput-object v0, Lcom/scoreloop/client/android/core/model/Challenge;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Money;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->q:Lcom/scoreloop/client/android/core/model/Money;

    .line 229
    const-string v0, "created"

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 215
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/Challenge;->a(Lorg/json/JSONObject;)V

    .line 216
    return-void
.end method

.method public static a(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/core/model/User;)Lcom/scoreloop/client/android/core/model/Challenge;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stake parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getBalance()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Money;->compareTo(Lcom/scoreloop/client/android/core/model/Money;)I

    move-result v0

    if-gez v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stake is greater then the available balance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "session needs to be authenticated before calling ChallengeController.createChallenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a challenge going on!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    new-instance v0, Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-direct {v0, p1}, Lcom/scoreloop/client/android/core/model/Challenge;-><init>(Lcom/scoreloop/client/android/core/model/Money;)V

    .line 170
    const-string v1, "created"

    iput-object v1, v0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    .line 172
    if-eqz p2, :cond_5

    .line 173
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User cannot challenge himself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_4
    invoke-virtual {v0, p2}, Lcom/scoreloop/client/android/core/model/Challenge;->setContestant(Lcom/scoreloop/client/android/core/model/User;)V

    .line 180
    :cond_5
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Challenge;->setContender(Lcom/scoreloop/client/android/core/model/User;)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Session;->setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V

    .line 184
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/scoreloop/client/android/core/model/Challenge;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 2
    .parameter

    .prologue
    .line 587
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not modify a already open challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not modify a already completed challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_2
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    .line 595
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->e:Lcom/scoreloop/client/android/core/model/Score;

    .line 596
    const-string v0, "open"

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    .line 605
    :goto_0
    return-void

    .line 598
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 599
    :cond_4
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isCreated()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isOpen()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAccepted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not submit a score for a non-open challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_5
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    .line 603
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->h:Lcom/scoreloop/client/android/core/model/Score;

    .line 604
    const-string v0, "complete"

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    goto :goto_0

    .line 607
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not change already assigned contender or contestant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/User;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAssigned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 873
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 874
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not accept a rejected challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    .line 878
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not reject a accepted challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_3
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/Challenge;->setContestant(Lcom/scoreloop/client/android/core/model/User;)V

    .line 885
    if-eqz p2, :cond_4

    const-string v0, "accepted"

    :goto_0
    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    .line 887
    return-void

    .line 885
    :cond_4
    const-string v0, "rejected"

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Lorg/json/JSONObject;)V

    .line 763
    new-instance v1, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 766
    const-string v0, "state"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    .line 769
    :cond_0
    const-string v0, "level"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->m:Ljava/lang/Integer;

    .line 772
    :cond_1
    const-string v0, "mode"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->o:Ljava/lang/Integer;

    .line 775
    :cond_2
    const-string v0, "game_id"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 776
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->l:Ljava/lang/String;

    .line 780
    :cond_3
    const-string v0, "contender_id"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 781
    new-instance v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/User;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    .line 782
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/User;->b(Ljava/lang/String;)V

    .line 785
    :cond_4
    const-string v0, "contender"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 786
    new-instance v2, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/User;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    .line 789
    :cond_5
    const-string v0, "contestant_id"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 790
    new-instance v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/User;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    .line 791
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/User;->b(Ljava/lang/String;)V

    .line 794
    :cond_6
    const-string v0, "contestant"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 795
    new-instance v2, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/User;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    .line 798
    :cond_7
    const-string v0, "winner"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 799
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    if-nez v0, :cond_9

    .line 800
    :cond_8
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "winner present but missing contender or contestant"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_9
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "id"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->COERCE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_AND_COERCES_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 806
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->s:Lcom/scoreloop/client/android/core/model/User;

    .line 807
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->n:Lcom/scoreloop/client/android/core/model/User;

    .line 817
    :cond_a
    :goto_0
    const-string v0, "contender_score"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 818
    new-instance v2, Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->e:Lcom/scoreloop/client/android/core/model/Score;

    .line 820
    :cond_b
    const-string v0, "contestant_score"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 821
    new-instance v2, Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->h:Lcom/scoreloop/client/android/core/model/Score;

    .line 825
    :cond_c
    const-string v0, "contender_skill_value"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 826
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->f:Ljava/lang/Integer;

    .line 828
    :cond_d
    const-string v0, "contestant_skill_value"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 829
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->i:Ljava/lang/Integer;

    .line 833
    :cond_e
    const-string v0, "stake"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 834
    new-instance v2, Lcom/scoreloop/client/android/core/model/Money;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->q:Lcom/scoreloop/client/android/core/model/Money;

    .line 836
    :cond_f
    const-string v0, "price"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 837
    new-instance v2, Lcom/scoreloop/client/android/core/model/Money;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->p:Lcom/scoreloop/client/android/core/model/Money;

    .line 839
    :cond_10
    const-string v0, "stake_in_local_currency"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 840
    new-instance v2, Lcom/scoreloop/client/android/core/model/Money;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Lorg/json/JSONObject;)V

    .line 848
    :goto_1
    const-string v0, "stake_in_contestant_currency"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 849
    new-instance v2, Lcom/scoreloop/client/android/core/model/Money;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Lorg/json/JSONObject;)V

    .line 851
    :cond_11
    const-string v0, "price_in_contestant_currency"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 852
    new-instance v2, Lcom/scoreloop/client/android/core/model/Money;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/Money;-><init>(Lorg/json/JSONObject;)V

    .line 856
    :cond_12
    const-string v0, "created_at"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 857
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->k:Ljava/util/Date;

    .line 859
    :cond_13
    const-string v0, "completed_at"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 860
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->c:Ljava/util/Date;

    .line 863
    :cond_14
    const-string v0, "context"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 864
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->j:Ljava/util/Map;

    .line 867
    :cond_15
    return-void

    .line 808
    :cond_16
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 809
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->s:Lcom/scoreloop/client/android/core/model/User;

    .line 810
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->n:Lcom/scoreloop/client/android/core/model/User;

    goto/16 :goto_0

    .line 812
    :cond_17
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Winner is neither contender nor contestant!"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_18
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->q:Lcom/scoreloop/client/android/core/model/Money;

    if-eqz v0, :cond_19

    .line 843
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->q:Lcom/scoreloop/client/android/core/model/Money;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Money;->b()Lcom/scoreloop/client/android/core/model/Money;

    goto/16 :goto_1

    .line 845
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->q:Lcom/scoreloop/client/android/core/model/Money;

    goto/16 :goto_1
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-super {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b_()Lorg/json/JSONObject;

    move-result-object v0

    .line 703
    const-string v1, "state"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 704
    const-string v1, "level"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->m:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 705
    const-string v1, "mode"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->o:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    const-string v1, "game_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_0

    .line 710
    const-string v1, "contender_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->s:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_1

    .line 713
    const-string v1, "winner_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->s:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->n:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_2

    .line 716
    const-string v1, "looser_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->n:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    :cond_2
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->q:Lcom/scoreloop/client/android/core/model/Money;

    if-eqz v1, :cond_3

    .line 719
    const-string v1, "stake"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->q:Lcom/scoreloop/client/android/core/model/Money;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Money;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    :cond_3
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_4

    .line 725
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 726
    if-eqz v1, :cond_8

    .line 727
    const-string v2, "contestant_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->h:Lcom/scoreloop/client/android/core/model/Score;

    if-eqz v1, :cond_5

    .line 735
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->h:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Score;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 736
    if-eqz v1, :cond_9

    .line 737
    const-string v2, "contestant_score_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->e:Lcom/scoreloop/client/android/core/model/Score;

    if-eqz v1, :cond_6

    .line 743
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->e:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Score;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 744
    if-eqz v1, :cond_a

    .line 745
    const-string v2, "contender_score_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->j:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 752
    const-string v1, "context"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->j:Ljava/util/Map;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    :cond_7
    return-object v0

    .line 729
    :cond_8
    const-string v1, "contestant"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 739
    :cond_9
    const-string v1, "contestant_score"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->h:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Score;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 747
    :cond_a
    const-string v1, "contender_score"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Challenge;->e:Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Score;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2
.end method

.method public getCompletedAt()Ljava/util/Date;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->c:Ljava/util/Date;

    return-object v0
.end method

.method public getContender()Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method public getContenderScore()Lcom/scoreloop/client/android/core/model/Score;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->e:Lcom/scoreloop/client/android/core/model/Score;

    return-object v0
.end method

.method public getContenderSkill()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContestant()Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method public getContestantScore()Lcom/scoreloop/client/android/core/model/Score;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->h:Lcom/scoreloop/client/android/core/model/Score;

    return-object v0
.end method

.method public getContestantSkill()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public getContext()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->j:Ljava/util/Map;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->k:Ljava/util/Date;

    return-object v0
.end method

.method public getLevel()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLoser()Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->n:Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->o:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrize()Lcom/scoreloop/client/android/core/model/Money;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->p:Lcom/scoreloop/client/android/core/model/Money;

    return-object v0
.end method

.method public getStake()Lcom/scoreloop/client/android/core/model/Money;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->q:Lcom/scoreloop/client/android/core/model/Money;

    return-object v0
.end method

.method public getWinner()Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Challenge;->s:Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method public isAccepted()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 437
    const-string v0, "accepted"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAssigned()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 449
    const-string v0, "assigned"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 459
    const-string v0, "cancelled"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 471
    const-string v0, "complete"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCreated()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 484
    const-string v0, "created"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 495
    const-string v0, "done"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInvalid()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 506
    const-string v0, "invalid"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInvited()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 518
    const-string v0, "invited"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 529
    const-string v0, "open"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPlayableForUser(Lcom/scoreloop/client/android/core/model/User;)Z
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->isAssigned()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->getContender()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRejected()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 553
    const-string v0, "rejected"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWinner(Lcom/scoreloop/client/android/core/model/User;)Z
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 564
    if-nez p1, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Challenge;->getWinner()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContender(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 618
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->d:Lcom/scoreloop/client/android/core/model/User;

    .line 619
    return-void
.end method

.method public setContenderScore(Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 628
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->e:Lcom/scoreloop/client/android/core/model/Score;

    .line 629
    return-void
.end method

.method public setContestant(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 638
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->g:Lcom/scoreloop/client/android/core/model/User;

    .line 639
    return-void
.end method

.method public setContestantScore(Lcom/scoreloop/client/android/core/model/Score;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 648
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->h:Lcom/scoreloop/client/android/core/model/Score;

    .line 649
    return-void
.end method

.method public setContext(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->j:Ljava/util/Map;

    .line 662
    return-void
.end method

.method public setLevel(Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 674
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->m:Ljava/lang/Integer;

    .line 675
    return-void
.end method

.method public setMode(Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 686
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Challenge;->o:Ljava/lang/Integer;

    .line 687
    return-void
.end method
