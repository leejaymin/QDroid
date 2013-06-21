.class Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;
.super Lcom/google/ads/AdSenseSpec;
.source "AdSenseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adwhirl/adapters/AdSenseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtendedAdSenseSpec"
.end annotation


# instance fields
.field public ageCode:I

.field public genderCode:I

.field final synthetic this$0:Lcom/adwhirl/adapters/AdSenseAdapter;


# direct methods
.method public constructor <init>(Lcom/adwhirl/adapters/AdSenseAdapter;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "clientId"

    .prologue
    const/4 v0, -0x1

    .line 199
    iput-object p1, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->this$0:Lcom/adwhirl/adapters/AdSenseAdapter;

    .line 198
    invoke-direct {p0, p2}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    .line 194
    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    .line 195
    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->genderCode:I

    return-void
.end method


# virtual methods
.method public generateParameters(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/AdSpec$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    .line 234
    invoke-super {p0, p1}, Lcom/google/ads/AdSenseSpec;->generateParameters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 233
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .local v0, parameters:Ljava/util/List;,"Ljava/util/List<Lcom/google/ads/AdSpec$Parameter;>;"
    iget v1, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    if-eq v1, v4, :cond_0

    .line 237
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "cust_age"

    iget v3, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_0
    iget v1, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->genderCode:I

    if-eq v1, v4, :cond_1

    .line 240
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "cust_gender"

    .line 241
    iget v3, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->genderCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    return-object v0
.end method

.method public setAge(I)V
    .locals 1
    .parameter "age"

    .prologue
    .line 202
    if-gtz p1, :cond_0

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    .line 219
    :goto_0
    return-void

    .line 204
    :cond_0
    const/16 v0, 0x11

    if-gt p1, v0, :cond_1

    .line 205
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    goto :goto_0

    .line 206
    :cond_1
    const/16 v0, 0x18

    if-gt p1, v0, :cond_2

    .line 207
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    goto :goto_0

    .line 208
    :cond_2
    const/16 v0, 0x22

    if-gt p1, v0, :cond_3

    .line 209
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    goto :goto_0

    .line 210
    :cond_3
    const/16 v0, 0x2c

    if-gt p1, v0, :cond_4

    .line 211
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    goto :goto_0

    .line 212
    :cond_4
    const/16 v0, 0x36

    if-gt p1, v0, :cond_5

    .line 213
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    goto :goto_0

    .line 214
    :cond_5
    const/16 v0, 0x40

    if-gt p1, v0, :cond_6

    .line 215
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    goto :goto_0

    .line 217
    :cond_6
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->ageCode:I

    goto :goto_0
.end method

.method public setGender(Lcom/adwhirl/AdWhirlTargeting$Gender;)V
    .locals 1
    .parameter "gender"

    .prologue
    .line 222
    sget-object v0, Lcom/adwhirl/AdWhirlTargeting$Gender;->MALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

    if-ne p1, v0, :cond_0

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->genderCode:I

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    sget-object v0, Lcom/adwhirl/AdWhirlTargeting$Gender;->FEMALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

    if-ne p1, v0, :cond_1

    .line 225
    const/4 v0, 0x2

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->genderCode:I

    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->genderCode:I

    goto :goto_0
.end method
