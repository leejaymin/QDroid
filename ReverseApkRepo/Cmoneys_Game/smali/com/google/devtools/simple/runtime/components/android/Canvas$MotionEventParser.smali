.class Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/simple/runtime/components/android/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionEventParser"
.end annotation


# static fields
.field public static final FINGER_HEIGHT:I = 0x18

.field public static final FINGER_WIDTH:I = 0x18

.field private static final HALF_FINGER_HEIGHT:I = 0xc

.field private static final HALF_FINGER_WIDTH:I = 0xc

.field public static final TAP_THRESHOLD:I = 0x1e

.field private static final UNSET:I = -0x1


# instance fields
.field private drag:Z

.field private final draggedSprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/devtools/simple/runtime/components/android/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private lastX:F

.field private lastY:F

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Canvas;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, -0x4080

    .line 117
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    .line 152
    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startX:F

    .line 153
    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startY:F

    .line 156
    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastX:F

    .line 157
    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastY:F

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->drag:Z

    return-void
.end method


# virtual methods
.method parse(Landroid/view/MotionEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Width()I

    move-result v14

    .line 163
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Height()I

    move-result v12

    .line 169
    .local v12, height:I
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v15, v4

    .line 170
    .local v15, x:F
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v0, v4

    int-to-float v0, v0

    move/from16 v16, v0

    .line 174
    .local v16, y:F
    new-instance v2, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;

    const/4 v4, 0x0

    float-to-int v5, v15

    const/16 v6, 0xc

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v3, v4

    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v0, v0

    move v6, v0

    const/16 v7, 0xc

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v5, v5

    const/4 v7, 0x1

    sub-int v7, v14, v7

    float-to-int v8, v15

    add-int/lit8 v8, v8, 0xc

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x1

    sub-int v9, v12, v9

    move/from16 v0, v16

    float-to-int v0, v0

    move v10, v0

    add-int/lit8 v10, v10, 0xc

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v9, v9

    invoke-direct/range {v2 .. v10}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;-><init>(DDDD)V

    .line 180
    .local v2, rect:Lcom/google/devtools/simple/runtime/components/util/BoundingBox;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 182
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 183
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startX:F

    .line 184
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startY:F

    .line 185
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastX:F

    .line 186
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastY:F

    .line 187
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->drag:Z

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    move-object v4, v0

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas;->sprites:Ljava/util/List;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->access$000(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/devtools/simple/runtime/components/android/Sprite;

    .line 189
    .local v3, sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->intersectsWith(Lcom/google/devtools/simple/runtime/components/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    .end local v3           #sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    .end local v13           #i$:Ljava/util/Iterator;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startX:F

    move v4, v0

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startY:F

    move v4, v0

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastX:F

    move v4, v0

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastY:F

    move v4, v0

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    .line 198
    :cond_2
    const-string v4, "Canvas"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startX:F

    move v4, v0

    sub-float v4, v15, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41f0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startY:F

    move v4, v0

    sub-float v4, v16, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41f0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 207
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->drag:Z

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    move-object v4, v0

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Canvas;->sprites:Ljava/util/List;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->access$000(Lcom/google/devtools/simple/runtime/components/android/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/devtools/simple/runtime/components/android/Sprite;

    .line 212
    .restart local v3       #sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v2}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->intersectsWith(Lcom/google/devtools/simple/runtime/components/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    .end local v3           #sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    :cond_6
    const/4 v11, 0x0

    .line 221
    .local v11, handled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_7
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/devtools/simple/runtime/components/android/Sprite;

    .line 222
    .restart local v3       #sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startX:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startY:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastX:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastY:F

    move v7, v0

    move v8, v15

    move/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Dragged(FFFFFF)V

    .line 224
    const/4 v11, 0x1

    goto :goto_3

    .line 229
    .end local v3           #sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startY:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastX:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastY:F

    move v8, v0

    move v9, v15

    move/from16 v10, v16

    invoke-virtual/range {v4 .. v11}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Dragged(FFFFFFZ)V

    .line 230
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastX:F

    .line 231
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_0

    .line 238
    .end local v11           #handled:Z
    .end local v13           #i$:Ljava/util/Iterator;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->drag:Z

    move v4, v0

    if-nez v4, :cond_b

    .line 240
    const/4 v11, 0x0

    .line 241
    .restart local v11       #handled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/devtools/simple/runtime/components/android/Sprite;

    .line 242
    .restart local v3       #sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startX:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startY:F

    move v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Touched(FF)V

    .line 244
    const/4 v11, 0x1

    goto :goto_4

    .line 248
    .end local v3           #sprite:Lcom/google/devtools/simple/runtime/components/android/Sprite;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->this$0:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startY:F

    move v6, v0

    invoke-virtual {v4, v5, v6, v11}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Touched(FFZ)V

    .line 252
    .end local v11           #handled:Z
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_b
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->drag:Z

    .line 253
    const/high16 v4, -0x4080

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startX:F

    .line 254
    const/high16 v4, -0x4080

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->startY:F

    .line 255
    const/high16 v4, -0x4080

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastX:F

    .line 256
    const/high16 v4, -0x4080

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/devtools/simple/runtime/components/android/Canvas$MotionEventParser;->lastY:F

    goto/16 :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
