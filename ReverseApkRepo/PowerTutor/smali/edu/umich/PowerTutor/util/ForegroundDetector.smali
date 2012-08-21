.class public Ledu/umich/PowerTutor/util/ForegroundDetector;
.super Ljava/lang/Object;
.source "ForegroundDetector.java"


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field lastSize:I

.field lastUids:[I

.field nowSize:I

.field nowUids:[I

.field private validated:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 2
    .parameter "activityManager"

    .prologue
    const/16 v1, 0xa

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowSize:I

    iput v0, p0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastSize:I

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastUids:[I

    .line 47
    new-array v0, v1, [I

    iput-object v0, p0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    .line 48
    new-instance v0, Ljava/util/BitSet;

    const/high16 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Ledu/umich/PowerTutor/util/ForegroundDetector;->validated:Ljava/util/BitSet;

    .line 49
    iget-object v0, p0, Ledu/umich/PowerTutor/util/ForegroundDetector;->validated:Ljava/util/BitSet;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 50
    iput-object p1, p0, Ledu/umich/PowerTutor/util/ForegroundDetector;->activityManager:Landroid/app/ActivityManager;

    .line 51
    return-void
.end method


# virtual methods
.method public getForegroundUid()I
    .locals 18

    .prologue
    .line 55
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v11

    .line 57
    .local v11, sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v14}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 60
    .local v5, appProcs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastUids:[I

    .line 61
    .local v12, tmp:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    move-object/from16 v0, p0

    iput-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastUids:[I

    .line 62
    move-object/from16 v0, p0

    iget v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowSize:I

    move-object/from16 v0, p0

    iput v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastSize:I

    .line 63
    array-length v14, v12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_0

    .line 64
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    new-array v12, v14, [I

    .line 66
    :cond_0
    move-object/from16 v0, p0

    iput-object v12, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    .line 69
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowSize:I

    .line 70
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_6

    .line 79
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowSize:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Ljava/util/Arrays;->sort([III)V

    .line 82
    const/4 v4, -0x1

    .line 83
    .local v4, appExit:I
    const/4 v3, -0x1

    .line 84
    .local v3, appEnter:I
    const/4 v9, 0x0

    .line 85
    .local v9, indNow:I
    const/4 v7, 0x0

    .line 86
    .local v7, indLast:I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowSize:I

    if-ge v9, v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastSize:I

    if-lt v7, v14, :cond_7

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowSize:I

    if-ge v9, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    aget v3, v14, v9

    .line 96
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastSize:I

    if-ge v7, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastUids:[I

    aget v4, v14, v7

    .line 99
    :cond_4
    const/4 v14, -0x1

    if-eq v3, v14, :cond_5

    const/4 v14, -0x1

    if-eq v4, v14, :cond_5

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->validated:Ljava/util/BitSet;

    invoke-virtual {v14, v3}, Ljava/util/BitSet;->set(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->validated:Ljava/util/BitSet;

    invoke-virtual {v14, v4}, Ljava/util/BitSet;->set(I)V

    .line 107
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowSize:I

    add-int/lit8 v6, v14, -0x1

    .local v6, i:I
    :goto_2
    if-gez v6, :cond_a

    .line 112
    const/16 v14, 0x3e8

    :goto_3
    return v14

    .line 70
    .end local v3           #appEnter:I
    .end local v4           #appExit:I
    .end local v6           #i:I
    .end local v7           #indLast:I
    .end local v9           #indNow:I
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 71
    .local v2, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v15, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 72
    const/16 v16, 0x64

    .line 71
    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 73
    iget v15, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v11, v15}, Ledu/umich/PowerTutor/util/SystemInfo;->getUidForPid(I)I

    move-result v13

    .line 74
    .local v13, uid:I
    const/16 v15, 0x2710

    if-gt v15, v13, :cond_1

    const/high16 v15, 0x1

    if-ge v13, v15, :cond_1

    .line 75
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    move-object/from16 v0, p0

    iget v0, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowSize:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowSize:I

    aput v13, v15, v16

    goto/16 :goto_0

    .line 87
    .end local v2           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v13           #uid:I
    .restart local v3       #appEnter:I
    .restart local v4       #appExit:I
    .restart local v7       #indLast:I
    .restart local v9       #indNow:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    aget v14, v14, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastUids:[I

    aget v15, v15, v7

    if-ne v14, v15, :cond_8

    .line 88
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 89
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    aget v14, v14, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastUids:[I

    aget v15, v15, v7

    if-ge v14, v15, :cond_9

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9           #indNow:I
    .local v10, indNow:I
    aget v3, v14, v9

    move v9, v10

    .end local v10           #indNow:I
    .restart local v9       #indNow:I
    goto/16 :goto_1

    .line 92
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->lastUids:[I

    add-int/lit8 v8, v7, 0x1

    .end local v7           #indLast:I
    .local v8, indLast:I
    aget v4, v14, v7

    move v7, v8

    .end local v8           #indLast:I
    .restart local v7       #indLast:I
    goto/16 :goto_1

    .line 108
    .restart local v6       #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->validated:Ljava/util/BitSet;

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    aget v15, v15, v6

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 109
    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/umich/PowerTutor/util/ForegroundDetector;->nowUids:[I

    aget v14, v14, v6

    goto/16 :goto_3

    .line 107
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2
.end method
