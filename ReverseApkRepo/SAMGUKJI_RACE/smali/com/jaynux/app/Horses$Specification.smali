.class Lcom/jaynux/app/Horses$Specification;
.super Ljava/lang/Thread;
.source "Horses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/Horses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Specification"
.end annotation


# instance fields
.field AG:I

.field BGROUND_REFLASH:I

.field DAMAGE:I

.field FRAME:I

.field LOCATION:I

.field NAME:Ljava/lang/String;

.field RANK:I

.field SPEED:I

.field cnt:I

.field horseNum:I

.field mBoosterChance:I

.field mBoosterSpeed:I

.field mCurrentSpeed:I

.field mHImage:[Landroid/graphics/drawable/Drawable;

.field mObstacleImage:[Landroid/graphics/drawable/Drawable;

.field mPause:Z

.field meter:I

.field obstableFlag:Z

.field playerName:Ljava/lang/String;

.field preStep:I

.field stopwatch:I

.field final synthetic this$0:Lcom/jaynux/app/Horses;


# direct methods
.method public constructor <init>(Lcom/jaynux/app/Horses;IIIIILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter "arAg"
    .parameter "arSpeed"
    .parameter "arBooster"
    .parameter "arDamage"
    .parameter "arBoosterChance"
    .parameter "arName"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    .line 36
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 193
    iput v2, p0, Lcom/jaynux/app/Horses$Specification;->cnt:I

    .line 203
    iput v1, p0, Lcom/jaynux/app/Horses$Specification;->RANK:I

    .line 207
    iput-boolean v1, p0, Lcom/jaynux/app/Horses$Specification;->obstableFlag:Z

    .line 208
    iput-boolean v2, p0, Lcom/jaynux/app/Horses$Specification;->mPause:Z

    .line 211
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    .line 212
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    .line 37
    iput p3, p0, Lcom/jaynux/app/Horses$Specification;->SPEED:I

    .line 38
    iput p2, p0, Lcom/jaynux/app/Horses$Specification;->AG:I

    .line 39
    iput p5, p0, Lcom/jaynux/app/Horses$Specification;->DAMAGE:I

    .line 40
    iput p4, p0, Lcom/jaynux/app/Horses$Specification;->mBoosterSpeed:I

    .line 41
    iput p6, p0, Lcom/jaynux/app/Horses$Specification;->mBoosterChance:I

    .line 42
    iput-object p7, p0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    .line 44
    iput v1, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    .line 45
    iput v1, p0, Lcom/jaynux/app/Horses$Specification;->preStep:I

    .line 46
    iput v2, p0, Lcom/jaynux/app/Horses$Specification;->BGROUND_REFLASH:I

    .line 47
    invoke-virtual {p0}, Lcom/jaynux/app/Horses$Specification;->setDrawble()V

    .line 48
    iput v1, p0, Lcom/jaynux/app/Horses$Specification;->stopwatch:I

    .line 49
    iput v1, p0, Lcom/jaynux/app/Horses$Specification;->RANK:I

    return-void
.end method


# virtual methods
.method public getStopWatch()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/jaynux/app/Horses$Specification;->stopwatch:I

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4024

    const/4 v9, 0x1

    .line 93
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/jaynux/app/Horses$Specification;->mPause:Z

    if-nez v4, :cond_1

    .line 183
    :goto_1
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Lcom/jaynux/app/Horses$Specification;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 188
    :goto_2
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->RANK:I

    if-eqz v4, :cond_0

    .line 192
    return-void

    .line 95
    :cond_1
    :try_start_1
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->cnt:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v9, :cond_2

    .line 97
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Lcom/jaynux/app/Horses$Specification;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    :goto_3
    const/4 v4, 0x0

    :try_start_3
    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->cnt:I

    .line 105
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v6, p0, Lcom/jaynux/app/Horses$Specification;->mBoosterChance:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v9, :cond_3

    .line 106
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/jaynux/app/Horses$Specification;->obstableFlag:Z

    .line 107
    const/4 v4, 0x0

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    .line 108
    :goto_4
    iget-boolean v4, p0, Lcom/jaynux/app/Horses$Specification;->obstableFlag:Z

    if-nez v4, :cond_5

    .line 117
    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v6, p0, Lcom/jaynux/app/Horses$Specification;->mBoosterChance:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/jaynux/app/Horses$Specification;->mBoosterChance:I

    if-ne v4, v5, :cond_8

    .line 119
    const/4 v4, 0x0

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    .line 120
    iget v2, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    .line 123
    .local v2, preventFrame:I
    iget v3, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    .local v3, preventLocation:I
    :cond_4
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    add-int/lit16 v5, v3, 0x3e8

    if-lt v4, v5, :cond_6

    .line 165
    .end local v2           #preventFrame:I
    .end local v3           #preventLocation:I
    :goto_5
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->preStep:I

    .line 167
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v5, p0, Lcom/jaynux/app/Horses$Specification;->meter:I

    if-lt v4, v5, :cond_0

    .line 168
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 169
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 170
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 171
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 172
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget v4, v4, Lcom/jaynux/app/Horses;->NUMBER:I

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->RANK:I

    .line 173
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget v5, v4, Lcom/jaynux/app/Horses;->NUMBER:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/jaynux/app/Horses;->NUMBER:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 98
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e1:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 109
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :cond_5
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    .line 110
    const/4 v4, 0x0

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->mCurrentSpeed:I

    .line 111
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v5, p0, Lcom/jaynux/app/Horses$Specification;->mCurrentSpeed:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    .line 112
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Lcom/jaynux/app/Horses$Specification;->sleep(J)V

    goto/16 :goto_4

    .line 125
    .restart local v2       #preventFrame:I
    .restart local v3       #preventLocation:I
    :cond_6
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    .line 126
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    add-int/lit8 v5, v2, 0x5

    if-gt v4, v5, :cond_7

    .line 128
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 129
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 130
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 131
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x5

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 141
    :goto_6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v6, p0, Lcom/jaynux/app/Horses$Specification;->SPEED:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/jaynux/app/Horses$Specification;->mBoosterSpeed:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->mCurrentSpeed:I

    .line 143
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v5, p0, Lcom/jaynux/app/Horses$Specification;->mCurrentSpeed:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    .line 147
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v6, p0, Lcom/jaynux/app/Horses$Specification;->AG:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4034

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/jaynux/app/Horses$Specification;->sleep(J)V

    .line 148
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v5, p0, Lcom/jaynux/app/Horses$Specification;->meter:I

    if-le v4, v5, :cond_4

    goto/16 :goto_5

    .line 135
    :cond_7
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x6

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 136
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x7

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 137
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x6

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 138
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x7

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    goto/16 :goto_6

    .line 154
    .end local v2           #preventFrame:I
    .end local v3           #preventLocation:I
    :cond_8
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->FRAME:I

    .line 155
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 156
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 157
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 158
    iget-object v4, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v6, v6, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v7, v7, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v8, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 160
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v6, p0, Lcom/jaynux/app/Horses$Specification;->SPEED:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->mCurrentSpeed:I

    .line 161
    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    iget v5, p0, Lcom/jaynux/app/Horses$Specification;->mCurrentSpeed:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/jaynux/app/Horses$Specification;->LOCATION:I

    .line 162
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    iget v6, p0, Lcom/jaynux/app/Horses$Specification;->AG:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4034

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/jaynux/app/Horses$Specification;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 184
    :catch_2
    move-exception v0

    .line 186
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public setDieDrawble()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    return-void
.end method

.method public setDrawble()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 53
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/jaynux/app/Horses$horse_num;->valueOf(Ljava/lang/String;)Lcom/jaynux/app/Horses$horse_num;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaynux/app/Horses$horse_num;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    .line 54
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v3, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v2, v2, v3

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 55
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v3, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v2, v2, v3

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 56
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v3, v3, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v3, v3, v4

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v3, v3, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v4, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v3, v3, v4

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    return-void
.end method

.method public setShowDrawble()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 70
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v3, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 71
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v3, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v2, v2, v3

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 72
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v3, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 73
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mHImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v2, v2, Lcom/jaynux/app/Horses;->imgHorse:[[I

    iget v3, p0, Lcom/jaynux/app/Horses$Specification;->horseNum:I

    aget-object v2, v2, v3

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 75
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 76
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 77
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 78
    iget-object v0, p0, Lcom/jaynux/app/Horses$Specification;->mObstacleImage:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/jaynux/app/Horses$Specification;->this$0:Lcom/jaynux/app/Horses;

    iget-object v1, v1, Lcom/jaynux/app/Horses;->res:Landroid/content/res/Resources;

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 79
    return-void
.end method

.method public setStopWatch(I)V
    .locals 0
    .parameter "arTime"

    .prologue
    .line 82
    iput p1, p0, Lcom/jaynux/app/Horses$Specification;->stopwatch:I

    .line 83
    return-void
.end method
