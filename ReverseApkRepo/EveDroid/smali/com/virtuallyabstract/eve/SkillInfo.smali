.class public Lcom/virtuallyabstract/eve/SkillInfo;
.super Landroid/app/ListActivity;
.source "SkillInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;,
        Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;
    }
.end annotation


# instance fields
.field dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

.field private from:[Ljava/lang/String;

.field private initialSelect:Z

.field private levelPoints:[I

.field levelsData:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field planIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private planName:Ljava/lang/String;

.field skillname:Ljava/lang/String;

.field spinData:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spinLevels:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;

.field spinPlans:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;

.field private to:[I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 21
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 24
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "rank"

    aput-object v1, v0, v4

    const-string v1, "points"

    aput-object v1, v0, v5

    const-string v1, "groupname"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/virtuallyabstract/eve/SkillInfo;->from:[Ljava/lang/String;

    .line 25
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/virtuallyabstract/eve/SkillInfo;->to:[I

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xfa

    aput v1, v0, v4

    const/16 v1, 0x586

    aput v1, v0, v5

    const/16 v1, 0x1f40

    aput v1, v0, v6

    const v1, 0xb0c7

    aput v1, v0, v2

    const/4 v1, 0x5

    const v2, 0x3e800

    aput v2, v0, v1

    iput-object v0, p0, Lcom/virtuallyabstract/eve/SkillInfo;->levelPoints:[I

    .line 32
    iput-boolean v3, p0, Lcom/virtuallyabstract/eve/SkillInfo;->initialSelect:Z

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/virtuallyabstract/eve/SkillInfo;->planName:Ljava/lang/String;

    .line 21
    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x1ct 0x0t 0x5t 0x7ft
        0x1et 0x0t 0x5t 0x7ft
        0x1dt 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/virtuallyabstract/eve/SkillInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/SkillInfo;->addToPlan()V

    return-void
.end method

.method private addToPlan()V
    .locals 7

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "char"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, charname:Ljava/lang/String;
    iget-object v5, p0, Lcom/virtuallyabstract/eve/SkillInfo;->spinPlans:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;

    invoke-virtual {v5}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;->getSelectedItemPosition()I

    move-result v3

    .line 181
    .local v3, pos:I
    iget-object v5, p0, Lcom/virtuallyabstract/eve/SkillInfo;->spinLevels:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;

    invoke-virtual {v5}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;->getSelectedItemPosition()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 182
    .local v2, level:I
    iget-object v5, p0, Lcom/virtuallyabstract/eve/SkillInfo;->planIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    .local v1, id:Ljava/lang/String;
    iget-object v5, p0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v6, p0, Lcom/virtuallyabstract/eve/SkillInfo;->skillname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillIDByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, skillid:Ljava/lang/String;
    iget-object v5, p0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v5, v1, v4, v0, v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->addToPlan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 39
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v3, 0x7f030008

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillInfo;->setContentView(I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/virtuallyabstract/eve/SkillInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 40
    .local v10, attVals:Landroid/os/Bundle;
    const-string v3, "char"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 42
    .local v11, charName:Ljava/lang/String;
    new-instance v3, Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/virtuallyabstract/eve/SkillInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/SkillInfo;->skillname:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->skillname:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getInfoByName(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v29

    .line 46
    .local v29, skillData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->skillname:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillIDByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 47
    .local v30, skillID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v11

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getCharSkill(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 48
    .local v12, charSkillData:Ljava/lang/String;
    const-string v31, ""

    .local v31, skillLevel:Ljava/lang/String;
    const-string v32, ""

    .line 51
    .local v32, skillPoints:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 53
    const-string v3, ","

    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v31, v3, v4

    .line 54
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 55
    .local v17, iSkillLevel:I
    const/4 v3, 0x5

    move/from16 v0, v17

    move v1, v3

    if-ge v0, v1, :cond_0

    .line 56
    add-int/lit8 v17, v17, 0x1

    .line 57
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->levelPoints:[I

    move-object v4, v0

    aget v4, v4, v17

    const-string v5, "rank"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v32

    .line 65
    .end local v17           #iSkillLevel:I
    :cond_1
    :goto_0
    const v3, 0x7f050020

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillInfo;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 66
    .local v38, txtSkillName:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->skillname:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v38

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v3, 0x7f050021

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillInfo;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 69
    .local v35, txtGroupName:Landroid/widget/TextView;
    const-string v3, "groupid"

    move-object/from16 v0, v29

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 70
    .local v15, groupid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    invoke-virtual {v3, v15}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getGroupNameByGroupID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, group:Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n\nYour Level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nPoints: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 73
    :cond_2
    move-object/from16 v0, v35

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const-string v3, "priattr"

    move-object/from16 v0, v29

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 76
    .local v23, primary:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v23

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .local v20, left:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v23

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 77
    .local v26, right:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 79
    const-string v3, "secattr"

    move-object/from16 v0, v29

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 80
    .local v28, secondary:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v28

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 81
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    .line 82
    const/4 v3, 0x1

    move-object/from16 v0, v28

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 84
    const v3, 0x7f050022

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillInfo;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 86
    .local v36, txtSkillAtts:Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v22

    .line 87
    .local v22, priLevel:Ljava/lang/String;
    const-string v3, "\\."

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, attSplit:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v9, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "00"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v9, v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 90
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v27

    .line 91
    .local v27, secLevel:Ljava/lang/String;
    const-string v3, "\\."

    move-object/from16 v0, v27

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 92
    const/4 v3, 0x1

    aget-object v4, v9, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "00"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v9, v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Primary: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (You: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")\nSecondary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (You: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v3, 0x7f050023

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillInfo;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 97
    .local v37, txtSkillDesc:Landroid/widget/TextView;
    const-string v3, "descript"

    move-object/from16 v0, v29

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const-string v3, "reqskills"

    move-object/from16 v0, v29

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 100
    .local v25, required:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 102
    const-string v3, " "

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 103
    .local v34, skills:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v5, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move-object/from16 v0, v34

    array-length v0, v0

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-lt v0, v1, :cond_4

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/virtuallyabstract/eve/SkillInfo;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .end local v9           #attSplit:[Ljava/lang/String;
    new-instance v3, Landroid/widget/SimpleAdapter;

    const v6, 0x7f030007

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->from:[Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->to:[I

    move-object v8, v0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    .end local v5           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v16           #i:I
    .end local v34           #skills:[Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/virtuallyabstract/eve/SkillInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "char"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 122
    .local v13, charname:Ljava/lang/String;
    new-instance v3, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;-><init>(Lcom/virtuallyabstract/eve/SkillInfo;Landroid/content/Context;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/SkillInfo;->spinPlans:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;

    .line 123
    new-instance v3, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;-><init>(Lcom/virtuallyabstract/eve/SkillInfo;Landroid/content/Context;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/SkillInfo;->spinLevels:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;

    .line 125
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/SkillInfo;->spinData:Landroid/widget/ArrayAdapter;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->spinData:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 127
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/SkillInfo;->levelsData:Landroid/widget/ArrayAdapter;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->levelsData:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/SkillInfo;->planIds:Ljava/util/ArrayList;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    invoke-virtual {v3, v13}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillPlans(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v19

    .line 131
    .local v19, ids:[Ljava/lang/Integer;
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-lt v0, v1, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->levelsData:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->levelsData:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    const-string v4, "2"

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->levelsData:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    const-string v4, "3"

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->levelsData:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    const-string v4, "4"

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->levelsData:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    const-string v4, "5"

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->spinPlans:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->spinData:Landroid/widget/ArrayAdapter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->spinLevels:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->levelsData:Landroid/widget/ArrayAdapter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->spinPlans:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;

    move-object v3, v0

    const-string v4, "Select a plan:"

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->spinLevels:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;

    move-object v3, v0

    const-string v4, "Level to train to:"

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner2;->setPrompt(Ljava/lang/CharSequence;)V

    .line 148
    return-void

    .line 106
    .end local v13           #charname:Ljava/lang/String;
    .end local v19           #ids:[Ljava/lang/Integer;
    .restart local v5       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9       #attSplit:[Ljava/lang/String;
    .restart local v34       #skills:[Ljava/lang/String;
    :cond_4
    aget-object v3, v34, v16

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 107
    .local v33, skillinfo:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v4, v33, v4

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getNameByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 108
    .local v24, reqname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->skillname:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 104
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 110
    :cond_5
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v21, listRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    move-object/from16 v0, v21

    move-object v1, v3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v3, "rank"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Level: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v33, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v3, "points"

    const-string v4, ""

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v3, "groupname"

    const-string v4, ""

    move-object/from16 v0, v21

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 133
    .end local v5           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9           #attSplit:[Ljava/lang/String;
    .end local v21           #listRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24           #reqname:Ljava/lang/String;
    .end local v33           #skillinfo:[Ljava/lang/String;
    .end local v34           #skills:[Ljava/lang/String;
    .restart local v13       #charname:Ljava/lang/String;
    .restart local v19       #ids:[Ljava/lang/Integer;
    :cond_6
    aget-object v3, v19, v16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->spinData:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getPlanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/SkillInfo;->planIds:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 60
    .end local v13           #charname:Ljava/lang/String;
    .end local v14           #group:Ljava/lang/String;
    .end local v15           #groupid:Ljava/lang/String;
    .end local v16           #i:I
    .end local v18           #id:Ljava/lang/String;
    .end local v19           #ids:[Ljava/lang/Integer;
    .end local v20           #left:Ljava/lang/String;
    .end local v22           #priLevel:Ljava/lang/String;
    .end local v23           #primary:Ljava/lang/String;
    .end local v25           #required:Ljava/lang/String;
    .end local v26           #right:Ljava/lang/String;
    .end local v27           #secLevel:Ljava/lang/String;
    .end local v28           #secondary:Ljava/lang/String;
    .end local v35           #txtGroupName:Landroid/widget/TextView;
    .end local v36           #txtSkillAtts:Landroid/widget/TextView;
    .end local v37           #txtSkillDesc:Landroid/widget/TextView;
    .end local v38           #txtSkillName:Landroid/widget/TextView;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 163
    const-string v0, "Add to plan"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v7, "name"

    const-string v6, "char"

    .line 151
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 152
    .local v1, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "name"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, skillname:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/SkillInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "char"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, charname:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/virtuallyabstract/eve/SkillInfo;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v2, skillinfo:Landroid/content/Intent;
    const-string v4, "name"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v4, "char"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/SkillInfo;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Add to plan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillInfo;->spinPlans:Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillInfo$CustomSpinner;->performClick()Z

    .line 174
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 197
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 202
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 203
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 190
    iget-object v0, p0, Lcom/virtuallyabstract/eve/SkillInfo;->dbMain:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 191
    return-void
.end method
