.class public Lcom/virtuallyabstract/eve/Eve;
.super Landroid/app/ListActivity;
.source "Eve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/virtuallyabstract/eve/Eve$CharInfoThread;,
        Lcom/virtuallyabstract/eve/Eve$UpdateTime;
    }
.end annotation


# instance fields
.field private CHARACTERSHEET:Ljava/lang/String;

.field private PORTRAIT:Ljava/lang/String;

.field private SKILLINTRAINING:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private charID:Ljava/lang/String;

.field private charNames:Landroid/widget/ArrayAdapter;

.field private charisma:F

.field private charismaBonus:I

.field private corp:Ljava/lang/String;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

.field private dbApi:Lcom/virtuallyabstract/eve/ApiDBHelper;

.field private from:[Ljava/lang/String;

.field private intel:F

.field private intelBonus:I

.field private learning:F

.field private levelPoints:[I

.field private memory:F

.field private memoryBonus:I

.field private money:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pd:Landroid/app/ProgressDialog;

.field private percept:F

.field private perceptBonus:I

.field private prefs:Landroid/content/SharedPreferences;

.field private race:Ljava/lang/String;

.field private selectedChar:Ljava/lang/String;

.field private skillTime:J

.field private skillTimer:Landroid/os/Handler;

.field private spinNames:Landroid/widget/Spinner;

.field private to:[I

.field private trainingName:Ljava/lang/String;

.field private trainingTime:Ljava/lang/String;

.field private userID:Ljava/lang/String;

.field private will:F

.field private willBonus:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v1, ""

    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->charID:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->userID:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->apiKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->selectedChar:Ljava/lang/String;

    .line 38
    const-string v0, "http://img.eve.is/serv.asp?s=64&c=#CHARID#"

    iput-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->PORTRAIT:Ljava/lang/String;

    .line 40
    iput v3, p0, Lcom/virtuallyabstract/eve/Eve;->intelBonus:I

    iput v3, p0, Lcom/virtuallyabstract/eve/Eve;->memoryBonus:I

    iput v3, p0, Lcom/virtuallyabstract/eve/Eve;->charismaBonus:I

    iput v3, p0, Lcom/virtuallyabstract/eve/Eve;->perceptBonus:I

    iput v3, p0, Lcom/virtuallyabstract/eve/Eve;->willBonus:I

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xfa

    aput v1, v0, v5

    const/16 v1, 0x586

    aput v1, v0, v6

    const/4 v1, 0x3

    const/16 v2, 0x1f40

    aput v2, v0, v1

    const v1, 0xb0c7

    aput v1, v0, v4

    const/4 v1, 0x5

    const v2, 0x3e800

    aput v2, v0, v1

    iput-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->levelPoints:[I

    .line 42
    const-string v0, "http://api.eve-online.com/char/CharacterSheet.xml.aspx?userID=#USERID#&apiKey=#APIKEY#&characterID=#CHARID#"

    iput-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->CHARACTERSHEET:Ljava/lang/String;

    .line 43
    const-string v0, "http://api.eve-online.com/char/SkillInTraining.xml.aspx?userID=#USERID#&apiKey=#APIKEY#&characterID=#CHARID#"

    iput-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->SKILLINTRAINING:Ljava/lang/String;

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "rank"

    aput-object v1, v0, v5

    const-string v1, "points"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "groupname"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->from:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->to:[I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/virtuallyabstract/eve/Eve;->skillTime:J

    .line 32
    return-void

    .line 48
    nop

    :array_0
    .array-data 0x4
        0x1ct 0x0t 0x5t 0x7ft
        0x1et 0x0t 0x5t 0x7ft
        0x1dt 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/virtuallyabstract/eve/Eve;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/virtuallyabstract/eve/Eve;->populateCharInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/virtuallyabstract/eve/Eve;)J
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/virtuallyabstract/eve/Eve;->skillTime:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/virtuallyabstract/eve/Eve;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/virtuallyabstract/eve/Eve;->skillTime:J

    return-void
.end method

.method static synthetic access$3(Lcom/virtuallyabstract/eve/Eve;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 457
    invoke-direct {p0, p1, p2}, Lcom/virtuallyabstract/eve/Eve;->longToStringTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/virtuallyabstract/eve/Eve;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->skillTimer:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/virtuallyabstract/eve/Eve;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/virtuallyabstract/eve/Eve;->selectChar(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/virtuallyabstract/eve/Eve;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/Eve;->selectChar()V

    return-void
.end method

.method static synthetic access$7(Lcom/virtuallyabstract/eve/Eve;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/Eve;->updateScreen()V

    return-void
.end method

.method private calcAtts(Lcom/virtuallyabstract/eve/XMLHandler;)V
    .locals 11
    .parameter "xml"

    .prologue
    const/high16 v8, 0x3f80

    const v7, 0x3ca3d70a

    const-string v10, "memory"

    const-string v9, "charisma"

    .line 246
    const-string v5, "intelligence"

    invoke-virtual {p1, v5}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    .line 247
    const-string v5, "willpower"

    invoke-virtual {p1, v5}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    .line 248
    const-string v5, "perception"

    invoke-virtual {p1, v5}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    .line 249
    const-string v5, "charisma"

    invoke-virtual {p1, v9}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    .line 250
    const-string v5, "memory"

    invoke-virtual {p1, v10}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    .line 251
    const-string v5, "intelligenceBonusaugmentatorValue"

    invoke-virtual {p1, v5}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    .local v1, intelbonus:Ljava/lang/String;
    const-string v5, "willpowerBonusaugmentatorValue"

    invoke-virtual {p1, v5}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 253
    .local v4, willbonus:Ljava/lang/String;
    const-string v5, "perceptionBonusaugmentatorValue"

    invoke-virtual {p1, v5}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 254
    .local v3, perceptbonus:Ljava/lang/String;
    const-string v5, "charismaBonusaugmentatorValue"

    invoke-virtual {p1, v5}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    .local v0, charismabonus:Ljava/lang/String;
    const-string v5, "memoryBonusaugmentatorValue"

    invoke-virtual {p1, v5}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    .local v2, memorybonus:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    .line 257
    :cond_0
    if-eqz v4, :cond_1

    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    .line 258
    :cond_1
    if-eqz v3, :cond_2

    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    .line 259
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    .line 260
    :cond_3
    if-eqz v2, :cond_4

    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    .line 261
    :cond_4
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->intelBonus:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    .line 262
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->perceptBonus:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    .line 263
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->willBonus:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    .line 264
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->memoryBonus:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    .line 265
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->charismaBonus:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    .line 266
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->learning:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    .line 267
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->learning:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    .line 268
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->learning:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    .line 269
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->learning:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    .line 270
    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->learning:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    .line 271
    const-string v5, "intel"

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v5, "memory"

    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v5, "percept"

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v5, "will"

    iget v6, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v5, "charisma"

    iget v5, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method private loadInfo()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method private loadPortrait()V
    .locals 5

    .prologue
    .line 334
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->charID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 343
    .end local p0
    :goto_0
    return-void

    .line 335
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->PORTRAIT:Ljava/lang/String;

    const-string v3, "#CHARID#"

    iget-object v4, p0, Lcom/virtuallyabstract/eve/Eve;->charID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, target:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, urlPortrait:Ljava/net/URL;
    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/Eve;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "charPortrait"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v1           #urlPortrait:Ljava/net/URL;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadSkillsFromDB()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 347
    iget-object v7, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v8, p0, Lcom/virtuallyabstract/eve/Eve;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getCharSkills(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, skills:[Ljava/lang/String;
    array-length v7, v5

    if-nez v7, :cond_1

    .line 364
    :cond_0
    return-void

    .line 350
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/virtuallyabstract/eve/Eve;->data:Ljava/util/ArrayList;

    .line 351
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v5

    if-ge v0, v7, :cond_0

    .line 353
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v4, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    aget-object v7, v5, v0

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, temp:[Ljava/lang/String;
    iget-object v7, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getNameByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v7, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillRank(Ljava/lang/String;)I

    move-result v3

    .line 357
    .local v3, rank:I
    iget-object v7, p0, Lcom/virtuallyabstract/eve/Eve;->levelPoints:[I

    aget-object v8, v6, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget v7, v7, v8

    mul-int v2, v7, v3

    .line 358
    .local v2, pointsNext:I
    const-string v7, "name"

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v7, "rank"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Level: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v6, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v7, "points"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Points: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v7, "groupname"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v7, p0, Lcom/virtuallyabstract/eve/Eve;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadXML(Ljava/lang/String;)Lcom/virtuallyabstract/eve/XMLHandler;
    .locals 4
    .parameter "url"

    .prologue
    .line 482
    const-string v2, "#CHARID#"

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->charID:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, target:Ljava/lang/String;
    const-string v2, "#APIKEY#"

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 484
    const-string v2, "#USERID#"

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->userID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Lcom/virtuallyabstract/eve/XMLHandler;

    invoke-direct {v1}, Lcom/virtuallyabstract/eve/XMLHandler;-><init>()V

    .line 486
    .local v1, xml:Lcom/virtuallyabstract/eve/XMLHandler;
    invoke-virtual {v1, v0}, Lcom/virtuallyabstract/eve/XMLHandler;->parse(Ljava/lang/String;)V

    .line 487
    return-object v1
.end method

.method private longToStringTime(J)Ljava/lang/String;
    .locals 11
    .parameter "millis"

    .prologue
    .line 459
    const-wide/16 v9, 0x3e8

    div-long v6, p1, v9

    .line 460
    .local v6, seconds:J
    const-wide/32 v9, 0x15180

    div-long v0, v6, v9

    .line 461
    .local v0, days:J
    const-wide/32 v9, 0x15180

    rem-long/2addr v6, v9

    .line 462
    const-wide/16 v9, 0xe10

    div-long v2, v6, v9

    .line 463
    .local v2, hours:J
    const-wide/16 v9, 0xe10

    rem-long/2addr v6, v9

    .line 464
    const-wide/16 v9, 0x3c

    div-long v4, v6, v9

    .line 465
    .local v4, mins:J
    const-wide/16 v9, 0x3c

    rem-long/2addr v6, v9

    .line 466
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " days "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hours "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mins "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " secs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 467
    .local v8, timeDiff:Ljava/lang/String;
    return-object v8
.end method

.method private parseForAttSkill(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "level"

    .prologue
    .line 280
    const-string v0, "Analytical Mind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Logic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    iget v0, p0, Lcom/virtuallyabstract/eve/Eve;->intelBonus:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/virtuallyabstract/eve/Eve;->intelBonus:I

    .line 284
    :cond_1
    const-string v0, "Spatial Awareness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Clarity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    :cond_2
    iget v0, p0, Lcom/virtuallyabstract/eve/Eve;->perceptBonus:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/virtuallyabstract/eve/Eve;->perceptBonus:I

    .line 288
    :cond_3
    const-string v0, "Instant Recall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Eidetic Memory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    :cond_4
    iget v0, p0, Lcom/virtuallyabstract/eve/Eve;->memoryBonus:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/virtuallyabstract/eve/Eve;->memoryBonus:I

    .line 292
    :cond_5
    const-string v0, "Empathy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Presence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 294
    :cond_6
    iget v0, p0, Lcom/virtuallyabstract/eve/Eve;->charismaBonus:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/virtuallyabstract/eve/Eve;->charismaBonus:I

    .line 296
    :cond_7
    const-string v0, "Iron Will"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 298
    :cond_8
    iget v0, p0, Lcom/virtuallyabstract/eve/Eve;->willBonus:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/virtuallyabstract/eve/Eve;->willBonus:I

    .line 300
    :cond_9
    const-string v0, "Learning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/virtuallyabstract/eve/Eve;->learning:F

    .line 303
    :cond_a
    return-void
.end method

.method private populateCharInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "charID"
    .parameter "userID"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    const-string v5, " "

    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iput-object p2, p0, Lcom/virtuallyabstract/eve/Eve;->charID:Ljava/lang/String;

    .line 208
    iput-object p3, p0, Lcom/virtuallyabstract/eve/Eve;->userID:Ljava/lang/String;

    .line 209
    iput-object p4, p0, Lcom/virtuallyabstract/eve/Eve;->apiKey:Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lcom/virtuallyabstract/eve/Eve;->name:Ljava/lang/String;

    .line 211
    iput v4, p0, Lcom/virtuallyabstract/eve/Eve;->willBonus:I

    .line 212
    iput v4, p0, Lcom/virtuallyabstract/eve/Eve;->intelBonus:I

    .line 213
    iput v4, p0, Lcom/virtuallyabstract/eve/Eve;->charismaBonus:I

    .line 214
    iput v4, p0, Lcom/virtuallyabstract/eve/Eve;->perceptBonus:I

    .line 215
    iput v4, p0, Lcom/virtuallyabstract/eve/Eve;->memoryBonus:I

    .line 218
    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->CHARACTERSHEET:Ljava/lang/String;

    const-string v4, "#CHARID#"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, target:Ljava/lang/String;
    const-string v3, "#USERID#"

    invoke-virtual {v0, v3, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v3, "#APIKEY#"

    invoke-virtual {v0, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-direct {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->loadXML(Ljava/lang/String;)Lcom/virtuallyabstract/eve/XMLHandler;

    move-result-object v2

    .line 227
    .local v2, xml:Lcom/virtuallyabstract/eve/XMLHandler;
    const-string v3, "gender"

    invoke-virtual {v2, v3}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    .local v1, test:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, "race"

    invoke-virtual {v2, v3}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v3, "bloodLine"

    invoke-virtual {v2, v3}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    iput-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->race:Ljava/lang/String;

    .line 233
    const-string v3, "corporationName"

    invoke-virtual {v2, v3}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #test:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 234
    .restart local v1       #test:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->corp:Ljava/lang/String;

    .line 236
    const-string v3, "balance"

    invoke-virtual {v2, v3}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #test:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 237
    .restart local v1       #test:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/virtuallyabstract/eve/Eve;->prettyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Balance: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ISK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->money:Ljava/lang/String;

    .line 240
    invoke-direct {p0, v2}, Lcom/virtuallyabstract/eve/Eve;->populateSkills(Lcom/virtuallyabstract/eve/XMLHandler;)V

    .line 241
    invoke-direct {p0, v2}, Lcom/virtuallyabstract/eve/Eve;->calcAtts(Lcom/virtuallyabstract/eve/XMLHandler;)V

    goto/16 :goto_0
.end method

.method private populateSkills(Lcom/virtuallyabstract/eve/XMLHandler;)V
    .locals 22
    .parameter "xmlIn"

    .prologue
    .line 368
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/Eve;->data:Ljava/util/ArrayList;

    .line 369
    const-string v19, "row"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/XMLHandler;->getAttributesArray(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 370
    .local v18, rowvals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v8, groups:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->clearCharacterSkills(Ljava/lang/String;)V

    .line 372
    const/4 v9, 0x0

    .end local p1
    .local v9, i:I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v9

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 397
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 398
    .local v7, groupKeys:[Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 399
    const/4 v9, 0x0

    :goto_1
    move-object v0, v7

    array-length v0, v0

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/virtuallyabstract/eve/Eve;->skillInTraining()V

    .line 415
    return-void

    .line 374
    .end local v7           #groupKeys:[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 375
    .local v16, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "typeID"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 377
    const-string v19, "typeID"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_1

    const-string v19, "level"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_2

    .line 372
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 379
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "typeID"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v21, "level"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v21, "skillpoints"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->addCharacterSkill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v11, listRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object/from16 v19, v0

    const-string v20, "typeID"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getNameByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 382
    .local v12, name:Ljava/lang/String;
    const-string v19, "level"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/virtuallyabstract/eve/Eve;->parseForAttSkill(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v19, "name"

    move-object v0, v11

    move-object/from16 v1, v19

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v19, "rank"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Level: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "level"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v11

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillRank(Ljava/lang/String;)I

    move-result v15

    .line 386
    .local v15, rank:I
    const-string v19, "level"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 387
    .local v10, level:I
    const/16 v19, 0x5

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 388
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->levelPoints:[I

    move-object/from16 v19, v0

    aget v19, v19, v10

    mul-int v13, v19, v15

    .line 389
    .local v13, pointsNext:I
    const-string v19, "points"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Points: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "skillpoints"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v11

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v19, "groupname"

    const-string v20, ""

    move-object v0, v11

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object/from16 v19, v0

    const-string v20, "typeID"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getGroupNameByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 392
    .local v5, group:Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 393
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_4
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 401
    .end local v5           #group:Ljava/lang/String;
    .end local v10           #level:I
    .end local v11           #listRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #pointsNext:I
    .end local v15           #rank:I
    .end local v16           #row:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #groupKeys:[Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v6, groupCell:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, "groupname"

    aget-object v20, v7, v9

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v19, "name"

    const-string v20, ""

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v19, "rank"

    const-string v20, ""

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v19, "points"

    const-string v20, ""

    move-object v0, v6

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    aget-object v19, v7, v9

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 408
    .local v17, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v14, 0x0

    .local v14, q:I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v14

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 399
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 409
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->data:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v14, v14, 0x1

    goto :goto_3
.end method

.method private prettyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "uglyNumber"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "."

    .line 307
    const-string v5, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, left:Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, right:Ljava/lang/String;
    const-string v3, ""

    .line 310
    .local v3, leftnew:Ljava/lang/String;
    const/4 v0, 0x0

    .line 311
    .local v0, count:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v1, v5, v9

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_1

    .line 325
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    .line 326
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 314
    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 319
    const/4 v0, 0x0

    .line 321
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    add-int/lit8 v0, v0, 0x1

    .line 311
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private selectChar()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->spinNames:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->selectChar(I)V

    .line 181
    return-void
.end method

.method private selectChar(I)V
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v5, 0x1

    .line 137
    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->spinNames:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    sub-int/2addr v3, v5

    if-le p1, v3, :cond_0

    .line 152
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->spinNames:Landroid/widget/Spinner;

    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->dbApi:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v3, v1}, Lcom/virtuallyabstract/eve/ApiDBHelper;->getCharacter(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, charinfo:[Ljava/lang/String;
    const-string v3, "Loading Character"

    const-string v4, "Populating Character Data"

    invoke-static {p0, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 141
    .local v2, pd:Landroid/app/ProgressDialog;
    new-instance v3, Lcom/virtuallyabstract/eve/Eve$3;

    invoke-direct {v3, p0}, Lcom/virtuallyabstract/eve/Eve$3;-><init>(Lcom/virtuallyabstract/eve/Eve;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 145
    new-instance v3, Lcom/virtuallyabstract/eve/Eve$4;

    invoke-direct {v3, p0, v0, v2}, Lcom/virtuallyabstract/eve/Eve$4;-><init>(Lcom/virtuallyabstract/eve/Eve;[Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 148
    invoke-virtual {v3}, Lcom/virtuallyabstract/eve/Eve$4;->start()V

    goto :goto_0
.end method

.method private setAPIKey()V
    .locals 2

    .prologue
    .line 550
    iget-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->dbApi:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v1}, Lcom/virtuallyabstract/eve/ApiDBHelper;->close()V

    .line 551
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/virtuallyabstract/eve/ApiInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    .local v0, apiInfo:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->startActivity(Landroid/content/Intent;)V

    .line 553
    return-void
.end method

.method private skillInTraining()V
    .locals 19

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->SKILLINTRAINING:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/virtuallyabstract/eve/Eve;->loadXML(Ljava/lang/String;)Lcom/virtuallyabstract/eve/XMLHandler;

    move-result-object v11

    .line 420
    .local v11, inTraining:Lcom/virtuallyabstract/eve/XMLHandler;
    const-string v15, "trainingTypeID"

    invoke-virtual {v11, v15}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 421
    .local v10, id:Ljava/lang/String;
    const-string v15, "currentTQTime"

    invoke-virtual {v11, v15}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 422
    .local v8, ctime:Ljava/lang/String;
    const-string v15, "trainingEndTime"

    invoke-virtual {v11, v15}, Lcom/virtuallyabstract/eve/XMLHandler;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 424
    .local v9, etime:Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 425
    .local v5, c3:J
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 427
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/virtuallyabstract/eve/Eve;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 428
    .local v3, c1:Ljava/util/Calendar;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/virtuallyabstract/eve/Eve;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    .line 429
    .local v4, c2:Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    sub-long v5, v15, v17

    .line 432
    .end local v3           #c1:Ljava/util/Calendar;
    .end local v4           #c2:Ljava/util/Calendar;
    :cond_0
    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-gez v15, :cond_1

    .line 434
    const-string v15, "Not currently training any skills."

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/Eve;->trainingName:Ljava/lang/String;

    .line 435
    const-string v15, ""

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/Eve;->trainingTime:Ljava/lang/String;

    .line 437
    const-wide/16 v15, -0x1

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/virtuallyabstract/eve/Eve;->skillTime:J

    .line 455
    :goto_0
    return-void

    .line 444
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Training: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getNameByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/Eve;->trainingName:Ljava/lang/String;

    .line 446
    const-string v15, "-"

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v12, v15, v16

    .line 447
    .local v12, m1:Ljava/lang/String;
    const-string v15, "-"

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v13, v15, v16

    .line 448
    .local v13, m2:Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 449
    const-wide/32 v15, 0x5265c00

    sub-long/2addr v5, v15

    .line 450
    :cond_2
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/virtuallyabstract/eve/Eve;->skillTime:J

    .line 451
    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/virtuallyabstract/eve/Eve;->longToStringTime(J)Ljava/lang/String;

    move-result-object v14

    .line 452
    .local v14, timeDiff:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Remaining: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 453
    .local v7, caption:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/Eve;->trainingTime:Ljava/lang/String;

    goto :goto_0
.end method

.method private toCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 10
    .parameter "time"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, ctimeparts:[Ljava/lang/String;
    aget-object v1, v7, v4

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 474
    .local v8, dateparts:[Ljava/lang/String;
    aget-object v1, v7, v5

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, timeparts:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 476
    .local v0, c:Ljava/util/Calendar;
    aget-object v1, v8, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v8, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v8, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v9, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v9, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 477
    return-object v0
.end method

.method private updateCharList()V
    .locals 5

    .prologue
    .line 122
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->dbApi:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/ApiDBHelper;->getCharList()[Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, names:[Ljava/lang/String;
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->charNames:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 124
    const/4 v1, 0x0

    .local v1, q:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->selectedChar:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->spinNames:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->charNames:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/Eve;->selectedChar:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 131
    const-string v2, ""

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->selectedChar:Ljava/lang/String;

    .line 133
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->charNames:Landroid/widget/ArrayAdapter;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 12

    .prologue
    .line 156
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 157
    .local v9, txtRace:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->race:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 160
    .local v7, txtCorp:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->corp:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 163
    .local v8, txtMoney:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->money:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 166
    .local v6, listMain:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->data:Ljava/util/ArrayList;

    const v3, 0x7f030007

    iget-object v4, p0, Lcom/virtuallyabstract/eve/Eve;->from:[Ljava/lang/String;

    iget-object v5, p0, Lcom/virtuallyabstract/eve/Eve;->to:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    const-string v0, "LIST"

    const-string v1, "UPDATING LIST"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v6}, Landroid/widget/ListView;->invalidate()V

    .line 170
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 171
    .local v10, txtTrainingName:Landroid/widget/TextView;
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 172
    .local v11, txtTrainingTime:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->trainingName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->trainingTime:Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/Eve;->loadPortrait()V

    .line 176
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-string v6, "/sdcard/api.txt"

    .line 59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/Eve;->setContentView(I)V

    .line 62
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/Eve;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->prefs:Landroid/content/SharedPreferences;

    .line 63
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "name"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->selectedChar:Ljava/lang/String;

    .line 65
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->charNames:Landroid/widget/ArrayAdapter;

    .line 66
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->charNames:Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 67
    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/Eve;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->spinNames:Landroid/widget/Spinner;

    .line 68
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->spinNames:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->charNames:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 69
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->spinNames:Landroid/widget/Spinner;

    new-instance v3, Lcom/virtuallyabstract/eve/Eve$1;

    invoke-direct {v3, p0}, Lcom/virtuallyabstract/eve/Eve$1;-><init>(Lcom/virtuallyabstract/eve/Eve;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 71
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->pd:Landroid/app/ProgressDialog;

    .line 72
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->pd:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/virtuallyabstract/eve/Eve$2;

    invoke-direct {v3, p0}, Lcom/virtuallyabstract/eve/Eve$2;-><init>(Lcom/virtuallyabstract/eve/Eve;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->pd:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 74
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->pd:Landroid/app/ProgressDialog;

    const-string v3, "Loading Skills Database"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->pd:Landroid/app/ProgressDialog;

    const-string v3, "Populating DB"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->data:Ljava/util/ArrayList;

    .line 78
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->skillTimer:Landroid/os/Handler;

    .line 81
    new-instance v2, Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->pd:Landroid/app/ProgressDialog;

    invoke-direct {v2, p0, v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;-><init>(Landroid/content/Context;Landroid/app/ProgressDialog;)V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    .line 82
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 84
    new-instance v2, Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-direct {v2, p0}, Lcom/virtuallyabstract/eve/ApiDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->dbApi:Lcom/virtuallyabstract/eve/ApiDBHelper;

    .line 85
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->dbApi:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/ApiDBHelper;->open()V

    .line 87
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/Eve;->updateCharList()V

    .line 98
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->skillTimer:Landroid/os/Handler;

    new-instance v3, Lcom/virtuallyabstract/eve/Eve$UpdateTime;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/virtuallyabstract/eve/Eve$UpdateTime;-><init>(Lcom/virtuallyabstract/eve/Eve;Lcom/virtuallyabstract/eve/Eve$UpdateTime;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/api.txt"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, apiFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sdcard/api.txt"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 106
    .local v1, pw:Ljava/io/PrintWriter;
    const-string v2, "userid=\r"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v2, "apikey=\r"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v2, "#Please disconnect phone from computer before trying to load api information from this file."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1           #pw:Ljava/io/PrintWriter;
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 492
    const-string v0, "Refresh"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 493
    const-string v0, "Reload Skills DB"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 494
    const-string v0, "Enter API Info"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 495
    const-string v0, "Skill Browser"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 496
    const-string v0, "Skill Planner"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 499
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v4, "name"

    .line 573
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 574
    .local v0, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 575
    .local v2, skillname:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 587
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 578
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/virtuallyabstract/eve/SkillInfo;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    .local v1, skillinfo:Landroid/content/Intent;
    const-string v3, "name"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v3, "char"

    iget-object v4, p0, Lcom/virtuallyabstract/eve/Eve;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v3, "memory"

    iget v4, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 582
    const-string v3, "intelligence"

    iget v4, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 583
    const-string v3, "willpower"

    iget v4, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 584
    const-string v3, "charisma"

    iget v4, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 585
    const-string v3, "perception"

    iget v4, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/Eve;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 9
    .parameter "featureID"
    .parameter "item"

    .prologue
    const-string v8, "time"

    const-string v7, "perception"

    const-string v6, "memory"

    const-string v5, "intelligence"

    const-string v4, "charisma"

    .line 504
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 506
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 508
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Reload Skills DB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->populateDB(Landroid/app/ProgressDialog;)V

    .line 512
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Refresh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 514
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/Eve;->updateCharList()V

    .line 517
    :cond_3
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Enter API Info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 518
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/Eve;->setAPIKey()V

    .line 519
    :cond_4
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Skill Browser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 521
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/virtuallyabstract/eve/SkillBrowser;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v1, skillBrowse:Landroid/content/Intent;
    const-string v2, "char"

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v2, "time"

    iget-wide v2, p0, Lcom/virtuallyabstract/eve/Eve;->skillTime:J

    invoke-virtual {v1, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 524
    const-string v2, "memory"

    iget v2, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 525
    const-string v2, "intelligence"

    iget v2, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 526
    const-string v2, "willpower"

    iget v3, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 527
    const-string v2, "charisma"

    iget v2, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 528
    const-string v2, "perception"

    iget v2, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 529
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 530
    invoke-virtual {p0, v1}, Lcom/virtuallyabstract/eve/Eve;->startActivity(Landroid/content/Intent;)V

    .line 532
    .end local v1           #skillBrowse:Landroid/content/Intent;
    :cond_5
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Skill Planner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/virtuallyabstract/eve/SkillPlanner;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .local v0, plan:Landroid/content/Intent;
    const-string v2, "name"

    iget-object v3, p0, Lcom/virtuallyabstract/eve/Eve;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    const-string v2, "time"

    iget-wide v2, p0, Lcom/virtuallyabstract/eve/Eve;->skillTime:J

    invoke-virtual {v0, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 537
    const-string v2, "memory"

    iget v2, p0, Lcom/virtuallyabstract/eve/Eve;->memory:F

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 538
    const-string v2, "intelligence"

    iget v2, p0, Lcom/virtuallyabstract/eve/Eve;->intel:F

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 539
    const-string v2, "willpower"

    iget v3, p0, Lcom/virtuallyabstract/eve/Eve;->will:F

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 540
    const-string v2, "charisma"

    iget v2, p0, Lcom/virtuallyabstract/eve/Eve;->charisma:F

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 541
    const-string v2, "perception"

    iget v2, p0, Lcom/virtuallyabstract/eve/Eve;->percept:F

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 542
    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 543
    invoke-virtual {p0, v0}, Lcom/virtuallyabstract/eve/Eve;->startActivity(Landroid/content/Intent;)V

    .line 545
    .end local v0           #plan:Landroid/content/Intent;
    :cond_6
    const/4 v2, 0x1

    return v2
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 591
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 592
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 593
    iget-object v0, p0, Lcom/virtuallyabstract/eve/Eve;->dbApi:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/ApiDBHelper;->open()V

    .line 594
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/Eve;->updateCharList()V

    .line 595
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 599
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 600
    iget-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->spinNames:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 602
    const-string v1, "name"

    iget-object v2, p0, Lcom/virtuallyabstract/eve/Eve;->spinNames:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 603
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 604
    iget-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 605
    iget-object v1, p0, Lcom/virtuallyabstract/eve/Eve;->dbApi:Lcom/virtuallyabstract/eve/ApiDBHelper;

    invoke-virtual {v1}, Lcom/virtuallyabstract/eve/ApiDBHelper;->close()V

    .line 606
    return-void
.end method
