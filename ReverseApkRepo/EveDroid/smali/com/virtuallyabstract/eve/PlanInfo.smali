.class public Lcom/virtuallyabstract/eve/PlanInfo;
.super Landroid/app/ListActivity;
.source "PlanInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;
    }
.end annotation


# static fields
.field private static dateObj:Ljava/util/Date;


# instance fields
.field adapterMain:Landroid/widget/SimpleAdapter;

.field charName:Ljava/lang/String;

.field data:Ljava/util/ArrayList;
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

.field db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

.field from:[Ljava/lang/String;

.field private levelPoints:[I

.field listMain:Landroid/widget/ListView;

.field planID:Ljava/lang/String;

.field planName:Ljava/lang/String;

.field skillList:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field to:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/virtuallyabstract/eve/PlanInfo;->dateObj:Ljava/util/Date;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 29
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "start"

    aput-object v1, v0, v4

    const-string v1, "end"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo;->from:[Ljava/lang/String;

    .line 30
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo;->to:[I

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0xfa

    aput v1, v0, v4

    const/16 v1, 0x586

    aput v1, v0, v5

    const/16 v1, 0x1f40

    aput v1, v0, v3

    const/4 v1, 0x4

    const v2, 0xb0c7

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x3e800

    aput v2, v0, v1

    iput-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo;->levelPoints:[I

    .line 23
    return-void

    .line 30
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x5t 0x7ft
        0x15t 0x0t 0x5t 0x7ft
        0x16t 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/virtuallyabstract/eve/PlanInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/PlanInfo;->populateList()V

    return-void
.end method

.method private longToStringTime(J)Ljava/lang/String;
    .locals 11
    .parameter "millis"

    .prologue
    .line 245
    const-wide/16 v9, 0x3e8

    div-long v6, p1, v9

    .line 246
    .local v6, seconds:J
    const-wide/32 v9, 0x15180

    div-long v0, v6, v9

    .line 247
    .local v0, days:J
    const-wide/32 v9, 0x15180

    rem-long/2addr v6, v9

    .line 248
    const-wide/16 v9, 0xe10

    div-long v2, v6, v9

    .line 249
    .local v2, hours:J
    const-wide/16 v9, 0xe10

    rem-long/2addr v6, v9

    .line 250
    const-wide/16 v9, 0x3c

    div-long v4, v6, v9

    .line 251
    .local v4, mins:J
    const-wide/16 v9, 0x3c

    rem-long/2addr v6, v9

    .line 252
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

    .line 253
    .local v8, timeDiff:Ljava/lang/String;
    return-object v8
.end method

.method private populateList()V
    .locals 37

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->data:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->planID:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getPlanSkills(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 65
    .local v30, skills:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 67
    .local v11, cal:Ljava/util/Calendar;
    invoke-virtual/range {p0 .. p0}, Lcom/virtuallyabstract/eve/PlanInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "time"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v34

    .line 69
    .local v34, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v3, v3, v34

    invoke-virtual {v11, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 74
    .local v9, base:J
    const-string v3, ""

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    const-string v3, ","

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 78
    .local v31, skillsList:[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move-object/from16 v0, v31

    array-length v0, v0

    move v3, v0

    if-lt v15, v3, :cond_1

    .line 139
    .end local v15           #i:I
    .end local v31           #skillsList:[Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/widget/SimpleAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->data:Ljava/util/ArrayList;

    move-object v5, v0

    const v6, 0x7f030004

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->from:[Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->to:[I

    move-object v8, v0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/virtuallyabstract/eve/PlanInfo;->adapterMain:Landroid/widget/SimpleAdapter;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->listMain:Landroid/widget/ListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->adapterMain:Landroid/widget/SimpleAdapter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    return-void

    .line 80
    .restart local v15       #i:I
    .restart local v31       #skillsList:[Ljava/lang/String;
    :cond_1
    aget-object v3, v31, v15

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v28, v3, v4

    .line 81
    .local v28, skill:Ljava/lang/String;
    aget-object v3, v31, v15

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v33, v3, v4

    .line 82
    .local v33, targetLevel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    const-string v4, "name"

    move-object v0, v3

    move-object/from16 v1, v28

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillCol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 83
    .local v29, skillName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->charName:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getCharSkill(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 84
    .local v16, info:Ljava/lang/String;
    const/16 v19, 0x1

    .local v19, level:I
    const/16 v22, 0x0

    .local v22, points:I
    const/16 v21, 0x0

    .line 86
    .local v21, minPoints:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    const-string v3, ","

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 90
    .local v36, vals:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v36, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 92
    .end local v36           #vals:[Ljava/lang/String;
    :cond_2
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->charName:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "3374"

    invoke-virtual {v3, v4, v5}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getCharSkill(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 94
    .local v17, learn:Ljava/lang/String;
    const-string v3, ","

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 95
    .local v18, learnLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillRank(Ljava/lang/String;)I

    move-result v24

    .line 96
    .local v24, rank:I
    const-string v3, ""

    const-string v4, "gettingatts"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/virtuallyabstract/eve/PlanInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v4, v0

    const-string v5, "priattr"

    move-object v0, v4

    move-object/from16 v1, v28

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillCol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v23

    .line 98
    .local v23, pri:F
    invoke-virtual/range {p0 .. p0}, Lcom/virtuallyabstract/eve/PlanInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    move-object v4, v0

    const-string v5, "secattr"

    move-object v0, v4

    move-object/from16 v1, v28

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getSkillCol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v27

    .line 99
    .local v27, sec:F
    const-string v3, ""

    const-string v4, "attsobtained"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/high16 v3, 0x4000

    div-float v3, v27, v3

    add-float v3, v3, v23

    const/high16 v4, 0x3f80

    const v5, 0x3ca3d70a

    move/from16 v0, v18

    int-to-float v0, v0

    move v6, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    mul-float v25, v3, v4

    .line 103
    .local v25, rate:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->levelPoints:[I

    move-object v3, v0

    aget v3, v3, v19

    mul-int v20, v3, v24

    .line 104
    .local v20, maxPoints:I
    if-lez v19, :cond_3

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->levelPoints:[I

    move-object v3, v0

    const/4 v4, 0x1

    sub-int v4, v19, v4

    aget v3, v3, v4

    mul-int v21, v3, v24

    .line 106
    :cond_3
    move/from16 v0, v22

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    move/from16 v0, v22

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 107
    move/from16 v21, v22

    .line 114
    :cond_4
    const-string v3, ""

    const-string v4, "getting time"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v3, Lcom/virtuallyabstract/eve/PlanInfo;->dateObj:Ljava/util/Date;

    invoke-virtual {v3, v9, v10}, Ljava/util/Date;->setTime(J)V

    .line 116
    sget-object v3, Lcom/virtuallyabstract/eve/PlanInfo;->dateObj:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v32

    .line 117
    .local v32, start:Ljava/lang/String;
    const-string v3, ""

    const-string v4, "gt1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    move-wide v13, v9

    .line 119
    .local v13, endtime:J
    const-string v3, ""

    const-string v4, "gt2"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sub-int v3, v20, v21

    int-to-float v3, v3

    div-float v3, v3, v25

    const v4, 0x476a6000

    mul-float/2addr v3, v4

    float-to-long v3, v3

    add-long/2addr v13, v3

    .line 121
    const-string v3, ""

    const-string v4, "gt3"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v3, Lcom/virtuallyabstract/eve/PlanInfo;->dateObj:Ljava/util/Date;

    invoke-virtual {v3, v13, v14}, Ljava/util/Date;->setTime(J)V

    .line 123
    sget-object v3, Lcom/virtuallyabstract/eve/PlanInfo;->dateObj:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, end:Ljava/lang/String;
    const-string v3, ""

    const-string v4, "gt4"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    move-wide v9, v13

    .line 126
    const-string v3, ""

    const-string v4, "time obtained"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v26, row:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "SKILLNAME"

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v3, "name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "start"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Start Time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v3, "end"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "End Time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v3, "id"

    move-object/from16 v0, v26

    move-object v1, v3

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v3, "level"

    move-object/from16 v0, v26

    move-object v1, v3

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/virtuallyabstract/eve/PlanInfo;->data:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "saved"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/PlanInfo;->setContentView(I)V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo;->data:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/PlanInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "plan"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo;->planID:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/PlanInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, name:Ljava/lang/String;
    iput-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo;->charName:Ljava/lang/String;

    .line 49
    new-instance v2, Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-direct {v2, p0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    .line 50
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v2}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 52
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v3, p0, Lcom/virtuallyabstract/eve/PlanInfo;->planID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->getPlanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo;->planName:Ljava/lang/String;

    .line 53
    const v2, 0x7f050017

    invoke-virtual {p0, v2}, Lcom/virtuallyabstract/eve/PlanInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, txtPlanName:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo;->planName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/PlanInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/virtuallyabstract/eve/PlanInfo;->listMain:Landroid/widget/ListView;

    .line 57
    invoke-direct {p0}, Lcom/virtuallyabstract/eve/PlanInfo;->populateList()V

    .line 59
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 213
    const-string v0, "Delete Plan"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 145
    new-instance v0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;

    invoke-direct {v0, p0, p0, p3}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;-><init>(Lcom/virtuallyabstract/eve/PlanInfo;Landroid/content/Context;I)V

    .line 146
    .local v0, d:Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;
    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->show()V

    .line 148
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Delete Plan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    iget-object v1, p0, Lcom/virtuallyabstract/eve/PlanInfo;->planID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->deletePlan(Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/virtuallyabstract/eve/PlanInfo;->finish()V

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 234
    iget-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 235
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 240
    iget-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->open()V

    .line 241
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 228
    iget-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo;->db:Lcom/virtuallyabstract/eve/SkillsDBHelper;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/SkillsDBHelper;->close()V

    .line 229
    return-void
.end method
