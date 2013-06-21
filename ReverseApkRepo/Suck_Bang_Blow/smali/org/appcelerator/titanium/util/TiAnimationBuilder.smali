.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiAnimationBuilder"


# instance fields
.field protected anchorX:F

.field protected anchorY:F

.field protected animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

.field protected applyOpacity:Z

.field protected autoreverse:Ljava/lang/Boolean;

.field protected bottom:Ljava/lang/Integer;

.field protected callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field protected centerX:Ljava/lang/Integer;

.field protected centerY:Ljava/lang/Integer;

.field protected delay:Ljava/lang/Double;

.field protected duration:Ljava/lang/Double;

.field protected fromOpacity:Ljava/lang/Double;

.field protected height:Ljava/lang/Integer;

.field protected left:Ljava/lang/Integer;

.field protected options:Lorg/appcelerator/kroll/KrollDict;

.field protected relayoutChild:Z

.field protected repeat:Ljava/lang/Double;

.field protected right:Ljava/lang/Integer;

.field protected tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected toOpacity:Ljava/lang/Double;

.field protected top:Ljava/lang/Integer;

.field protected view:Landroid/view/View;

.field protected viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected width:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 45
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    .line 46
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    .line 47
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    .line 48
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    .line 49
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 50
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    .line 51
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    .line 52
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    .line 53
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    .line 58
    iput-boolean v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    iput-boolean v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 65
    iput v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    .line 66
    iput v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    .line 67
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->DBG:Z

    return v0
.end method

.method private addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "as"
    .parameter "a"

    .prologue
    .line 153
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 164
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 165
    return-void

    .line 161
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public applyAnimation(Lorg/appcelerator/titanium/view/TiAnimation;)V
    .locals 1
    .parameter "anim"

    .prologue
    .line 130
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    .line 131
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiAnimation;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOptions(Lorg/appcelerator/kroll/KrollDict;)V

    .line 132
    return-void
.end method

.method public applyOptions(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .parameter "options"

    .prologue
    const-string v7, "delay"

    const-string v6, "center"

    const-string v5, "bottom"

    const-string v4, "autoreverse"

    const-string v3, "anchorPoint"

    .line 71
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string v2, "anchorPoint"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const-string v2, "anchorPoint"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 77
    .local v1, point:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "x"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/KrollConverter;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    .line 78
    const-string v2, "y"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/KrollConverter;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    .line 81
    .end local v1           #point:Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    const-string v2, "transform"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const-string v2, "transform"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 84
    :cond_2
    const-string v2, "delay"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    const-string v2, "delay"

    invoke-static {p1, v7}, Lorg/appcelerator/kroll/KrollConverter;->toDouble(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    .line 87
    :cond_3
    const-string v2, "duration"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    const-string v2, "duration"

    invoke-static {p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->toDouble(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    .line 90
    :cond_4
    const-string v2, "opacity"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    const-string v2, "opacity"

    invoke-static {p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->toDouble(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    .line 93
    :cond_5
    const-string v2, "repeat"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    const-string v2, "repeat"

    invoke-static {p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->toDouble(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 96
    :cond_6
    const-string v2, "autoreverse"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    const-string v2, "autoreverse"

    invoke-static {p1, v4}, Lorg/appcelerator/kroll/KrollConverter;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    .line 99
    :cond_7
    const-string v2, "top"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 100
    const-string v2, "top"

    invoke-static {p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    .line 102
    :cond_8
    const-string v2, "bottom"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 103
    const-string v2, "bottom"

    invoke-static {p1, v5}, Lorg/appcelerator/kroll/KrollConverter;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    .line 105
    :cond_9
    const-string v2, "left"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 106
    const-string v2, "left"

    invoke-static {p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    .line 108
    :cond_a
    const-string v2, "right"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 109
    const-string v2, "right"

    invoke-static {p1, v2}, Lorg/appcelerator/kroll/KrollConverter;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    .line 111
    :cond_b
    const-string v2, "center"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 112
    const-string v2, "center"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 113
    .local v0, center:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v0, :cond_c

    .line 114
    const-string v2, "x"

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/KrollConverter;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    .line 115
    const-string v2, "y"

    invoke-static {v0, v2}, Lorg/appcelerator/kroll/KrollConverter;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    .line 118
    .end local v0           #center:Lorg/appcelerator/kroll/KrollDict;
    :cond_c
    const-string v2, "width"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 119
    const-string v2, "width"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    .line 121
    :cond_d
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 122
    const-string v2, "height"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    .line 125
    :cond_e
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Lorg/appcelerator/kroll/KrollDict;

    goto/16 :goto_0
.end method

.method public createMatrixAnimation(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    .locals 3
    .parameter "matrix"

    .prologue
    .line 169
    new-instance v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    iget v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    invoke-direct {v0, p1, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;FF)V

    return-object v0
.end method

.method public render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)Landroid/view/animation/AnimationSet;
    .locals 12
    .parameter "viewProxy"
    .parameter "view"

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 142
    .local v11, parent:Landroid/view/ViewParent;
    const/4 v8, 0x0

    .local v8, parentWidth:I
    const/4 v9, 0x0

    .line 143
    .local v9, parentHeight:I
    instance-of v1, v11, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 144
    move-object v0, v11

    check-cast v0, Landroid/view/ViewGroup;

    move-object v10, v0

    .line 145
    .local v10, group:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    .line 146
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    .line 148
    .end local v10           #group:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;IIIIII)Landroid/view/animation/AnimationSet;

    move-result-object v1

    return-object v1
.end method

.method public render(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;IIIIII)Landroid/view/animation/AnimationSet;
    .locals 36
    .parameter "viewProxy"
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 174
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    .line 175
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 177
    new-instance v29, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x0

    move-object/from16 v0, v29

    move v1, v8

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 178
    .local v29, as:Landroid/view/animation/AnimationSet;
    new-instance v30, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    .line 180
    .local v30, listener:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    move-object v8, v0

    if-eqz v8, :cond_0

    .line 181
    const-string v8, "opacity"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 182
    const-string v8, "opacity"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    .line 187
    :goto_0
    new-instance v20, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Double;->floatValue()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Double;->floatValue()F

    move-result v9

    move-object/from16 v0, v20

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 188
    .local v20, a:Landroid/view/animation/Animation;
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 190
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 192
    const-string v8, "opacity"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    move-object v8, v0

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    move-object v8, v0

    if-eqz v8, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 194
    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v35

    .line 195
    .local v35, uiView:Lorg/appcelerator/titanium/view/TiUIView;
    const/high16 v8, 0x3f80

    move-object/from16 v0, v35

    move v1, v8

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 200
    .end local v20           #a:Landroid/view/animation/Animation;
    .end local v35           #uiView:Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object v8, v0

    if-eqz v8, :cond_2

    .line 201
    const/4 v8, 0x1

    move-object/from16 v0, v29

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 202
    const/4 v8, 0x1

    move-object/from16 v0, v29

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 203
    new-instance v31, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    move v10, v0

    move-object/from16 v0, v31

    move-object v1, v8

    move v2, v9

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;FF)V

    .line 204
    .local v31, matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    move-object v8, v0

    if-eqz v8, :cond_1

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v31

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->setDuration(J)V

    .line 207
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 211
    .end local v31           #matrixAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    move-object v8, v0

    if-eqz v8, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v29

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 214
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    move-object v8, v0

    if-eqz v8, :cond_4

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v29

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 219
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    move-object v8, v0

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    move-object v8, v0

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    move-object v8, v0

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    move-object v8, v0

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    move-object v8, v0

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    move-object v8, v0

    if-eqz v8, :cond_f

    .line 220
    :cond_5
    const/4 v13, 0x0

    .local v13, optionTop:Lorg/appcelerator/titanium/TiDimension;
    const/4 v15, 0x0

    .line 221
    .local v15, optionBottom:Lorg/appcelerator/titanium/TiDimension;
    const/4 v5, 0x0

    .local v5, optionLeft:Lorg/appcelerator/titanium/TiDimension;
    const/4 v7, 0x0

    .line 222
    .local v7, optionRight:Lorg/appcelerator/titanium/TiDimension;
    const/4 v6, 0x0

    .local v6, optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    const/4 v14, 0x0

    .line 224
    .local v14, optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    move-object v8, v0

    if-eqz v8, :cond_6

    .line 225
    new-instance v13, Lorg/appcelerator/titanium/TiDimension;

    .end local v13           #optionTop:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x3

    invoke-direct {v13, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 227
    .restart local v13       #optionTop:Lorg/appcelerator/titanium/TiDimension;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    move-object v8, v0

    if-eqz v8, :cond_7

    .line 228
    new-instance v15, Lorg/appcelerator/titanium/TiDimension;

    .end local v15           #optionBottom:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x5

    invoke-direct {v15, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 230
    .restart local v15       #optionBottom:Lorg/appcelerator/titanium/TiDimension;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    move-object v8, v0

    if-eqz v8, :cond_8

    .line 231
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    .end local v5           #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 233
    .restart local v5       #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    move-object v8, v0

    if-eqz v8, :cond_9

    .line 234
    new-instance v7, Lorg/appcelerator/titanium/TiDimension;

    .end local v7           #optionRight:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x2

    invoke-direct {v7, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 236
    .restart local v7       #optionRight:Lorg/appcelerator/titanium/TiDimension;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    move-object v8, v0

    if-eqz v8, :cond_a

    .line 237
    new-instance v6, Lorg/appcelerator/titanium/TiDimension;

    .end local v6           #optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x1

    invoke-direct {v6, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 239
    .restart local v6       #optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    move-object v8, v0

    if-eqz v8, :cond_b

    .line 240
    new-instance v14, Lorg/appcelerator/titanium/TiDimension;

    .end local v14           #optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x4

    invoke-direct {v14, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 243
    .restart local v14       #optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    :cond_b
    const/4 v8, 0x2

    new-array v11, v8, [I

    .line 244
    .local v11, horizontal:[I
    const/4 v8, 0x2

    move v0, v8

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 245
    .local v19, vertical:[I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 246
    .local v32, parent:Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 247
    .local v4, parentView:Landroid/view/View;
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/view/View;

    move v8, v0

    if-eqz v8, :cond_c

    .line 248
    move-object/from16 v0, v32

    check-cast v0, Landroid/view/View;

    move-object v4, v0

    .line 251
    :cond_c
    const/4 v9, 0x0

    move/from16 v8, p5

    move/from16 v10, p7

    invoke-static/range {v4 .. v11}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 252
    const/16 v17, 0x0

    move-object v12, v4

    move/from16 v16, p6

    move/from16 v18, p8

    invoke-static/range {v12 .. v19}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 254
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v8, 0x0

    aget v8, v11, v8

    sub-int v8, v8, p3

    move v0, v8

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/4 v8, 0x0

    aget v8, v19, v8

    sub-int v8, v8, p4

    move v0, v8

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-direct/range {v20 .. v28}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 256
    .restart local v20       #a:Landroid/view/animation/Animation;
    const/4 v8, 0x1

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 257
    const/4 v8, 0x1

    move-object/from16 v0, v20

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    move-object v8, v0

    if-eqz v8, :cond_d

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v20

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 262
    :cond_d
    const/4 v8, 0x1

    move-object/from16 v0, v29

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 263
    const/4 v8, 0x1

    move-object/from16 v0, v29

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 265
    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 266
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 267
    sget-boolean v8, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->DBG:Z

    if-eqz v8, :cond_e

    .line 268
    const-string v8, "TiAnimationBuilder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "animate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " relative to self: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v11, v10

    sub-int v10, v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v19, v10

    sub-int v10, v10, p4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_e
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 273
    .end local v4           #parentView:Landroid/view/View;
    .end local v5           #optionLeft:Lorg/appcelerator/titanium/TiDimension;
    .end local v6           #optionCenterX:Lorg/appcelerator/titanium/TiDimension;
    .end local v7           #optionRight:Lorg/appcelerator/titanium/TiDimension;
    .end local v11           #horizontal:[I
    .end local v13           #optionTop:Lorg/appcelerator/titanium/TiDimension;
    .end local v14           #optionCenterY:Lorg/appcelerator/titanium/TiDimension;
    .end local v15           #optionBottom:Lorg/appcelerator/titanium/TiDimension;
    .end local v19           #vertical:[I
    .end local v20           #a:Landroid/view/animation/Animation;
    .end local v32           #parent:Landroid/view/ViewParent;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object v8, v0

    if-nez v8, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    move-object v8, v0

    if-nez v8, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    move-object v8, v0

    if-eqz v8, :cond_12

    .line 275
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    move-object v8, v0

    if-nez v8, :cond_16

    move/from16 v34, p5

    .line 276
    .local v34, toWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    move-object v8, v0

    if-nez v8, :cond_17

    move/from16 v33, p6

    .line 277
    .local v33, toHeight:I
    :goto_2
    new-instance v21, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v22, p0

    move-object/from16 v23, p2

    invoke-direct/range {v21 .. v27}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;Landroid/view/View;FFFF)V

    .line 278
    .local v21, sa:Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    move-object v8, v0

    if-eqz v8, :cond_11

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v21

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setDuration(J)V

    .line 281
    :cond_11
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 282
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 283
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 284
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 287
    .end local v21           #sa:Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    .end local v33           #toHeight:I
    .end local v34           #toWidth:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v8, v0

    if-nez v8, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    move-object v8, v0

    if-eqz v8, :cond_14

    .line 288
    :cond_13
    invoke-virtual/range {v29 .. v30}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 291
    :cond_14
    return-object v29

    .line 184
    :cond_15
    const-wide/high16 v8, 0x3ff0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->fromOpacity:Ljava/lang/Double;

    goto/16 :goto_0

    .line 275
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move/from16 v34, v8

    goto/16 :goto_1

    .line 276
    .restart local v34       #toWidth:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move/from16 v33, v8

    goto/16 :goto_2
.end method

.method public setCallback(Lorg/appcelerator/titanium/kroll/KrollCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 136
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 137
    return-void
.end method
