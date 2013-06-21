.class public Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;
.super Landroid/widget/Button;
.source "AssumptionChoiceButton.java"


# static fields
.field public static final POSITION_BOTTOM:I = 0x2

.field public static final POSITION_MIDDLE:I = 0x1

.field public static final POSITION_SINGLE:I = 0x4

.field public static final POSITION_TOP:I = 0x0

.field public static final POSITION_TOP_VARIABLEINCLUDE:I = 0x3

.field private static bottomButtonBackground:Landroid/graphics/drawable/PaintDrawable;

.field private static bottomButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

.field private static middleButtonBackground:Landroid/graphics/drawable/PaintDrawable;

.field private static middleButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

.field private static singleButtonBackground:Landroid/graphics/drawable/PaintDrawable;

.field private static singleButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

.field private static topButtonBackground:Landroid/graphics/drawable/PaintDrawable;

.field private static topButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

.field private static topVIButtonBackground:Landroid/graphics/drawable/PaintDrawable;

.field private static topVIButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;


# instance fields
.field private assumptionInput:Ljava/lang/String;

.field private assumptionsActivity:Lcom/wolfram/android/alpha/activity/AssumptionsActivity;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x100

    const/16 v2, 0x8

    .line 49
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    const/16 v1, -0x34

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 50
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 51
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->middleButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 52
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->bottomButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 53
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->bottomButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 54
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topVIButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 55
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topVIButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 56
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->singleButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 57
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->singleButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 58
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 59
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 60
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->middleButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 61
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->bottomButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 62
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->bottomButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    new-array v1, v2, [F

    fill-array-data v1, :array_5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 63
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topVIButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 64
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    sput-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->singleButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    .line 65
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->singleButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    new-array v1, v2, [F

    fill-array-data v1, :array_6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 66
    return-void

    .line 50
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
    .end array-data

    .line 55
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 57
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
    .end array-data

    .line 59
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 62
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
    .end array-data

    .line 65
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x41t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "position"
    .parameter "assumptionInput"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 73
    check-cast p1, Lcom/wolfram/android/alpha/activity/AssumptionsActivity;

    .end local p1
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->assumptionsActivity:Lcom/wolfram/android/alpha/activity/AssumptionsActivity;

    .line 74
    iput p2, p0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->position:I

    .line 75
    iput-object p3, p0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->assumptionInput:Ljava/lang/String;

    .line 76
    packed-switch p2, :pswitch_data_0

    .line 84
    :goto_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setTextColor(I)V

    .line 86
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setGravity(I)V

    .line 87
    if-nez p2, :cond_0

    .line 88
    invoke-virtual {p0, v3, v3, v4, v3}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setPadding(IIII)V

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->assumptionsActivity:Lcom/wolfram/android/alpha/activity/AssumptionsActivity;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 77
    :pswitch_0
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->middleButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->bottomButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 80
    :pswitch_3
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topVIButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 81
    :pswitch_4
    sget-object v0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->singleButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0, v3, v5, v4, v5}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setPadding(IIII)V

    goto :goto_1

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getAssumptionInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->assumptionInput:Ljava/lang/String;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x100

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 107
    .local v0, a:I
    if-nez v0, :cond_1

    .line 108
    iget v1, p0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->position:I

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->invalidate()V

    .line 124
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 109
    :pswitch_0
    sget-object v1, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->middleButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setTextColor(I)V

    goto :goto_0

    .line 110
    :pswitch_1
    sget-object v1, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->bottomButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setTextColor(I)V

    goto :goto_0

    .line 111
    :pswitch_2
    sget-object v1, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topVIButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setTextColor(I)V

    goto :goto_0

    .line 112
    :pswitch_3
    sget-object v1, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->singleButtonSelectedBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setTextColor(I)V

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    iget v1, p0, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->position:I

    packed-switch v1, :pswitch_data_1

    .line 122
    :goto_2
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->invalidate()V

    goto :goto_1

    .line 117
    :pswitch_4
    sget-object v1, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->middleButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setTextColor(I)V

    goto :goto_2

    .line 118
    :pswitch_5
    sget-object v1, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->bottomButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setTextColor(I)V

    goto :goto_2

    .line 119
    :pswitch_6
    sget-object v1, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->topVIButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setTextColor(I)V

    goto :goto_2

    .line 120
    :pswitch_7
    sget-object v1, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->singleButtonBackground:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/view/AssumptionChoiceButton;->setTextColor(I)V

    goto :goto_2

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
