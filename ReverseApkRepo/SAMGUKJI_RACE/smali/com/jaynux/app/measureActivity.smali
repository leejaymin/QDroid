.class public Lcom/jaynux/app/measureActivity;
.super Landroid/app/Activity;
.source "measureActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaynux/app/measureActivity$Vertex;,
        Lcom/jaynux/app/measureActivity$processResultThread;
    }
.end annotation


# static fields
.field public static final ACCELERATECONDTION:I = 0x64

.field public static final ALLOFF:I = 0x4

.field public static final DIALOG_PROBABILITY_PROGRESS:I = 0x1

.field public static final FINGERDISTANCEON:I = 0x3

.field public static final FINGERTOUCHON:I = 0x2

.field public static final POWERON:I = 0x1

.field public static final PROCESSRESULT:I = 0x4

.field public static final SHAKEON:I = 0x0

.field public static final TAG:Ljava/lang/String; = "measureActivity"


# instance fields
.field final BOOSTER_INDEX:I

.field final FINGELDISTANCEINDEX:I

.field private Listner:Landroid/hardware/SensorEventListener;

.field final SPEED_INDEX:I

.field final STEP_INDEX:I

.field private arVertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jaynux/app/measureActivity$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private mAccelerateValue:I

.field private mAfterValue:[I

.field private mApplyButton:Landroid/widget/Button;

.field private mBeforValue:[I

.field mChanceResult:[I

.field mClickListener:Landroid/view/View$OnClickListener;

.field mCycle:I

.field mEdit:Landroid/content/SharedPreferences$Editor;

.field private mFingerDistanceButton:Landroid/widget/Button;

.field private mFingerDistanceValue:I

.field private mFingerTouchButton:Landroid/widget/Button;

.field private mFingerTouchValue:I

.field private mMeasureResult:[I

.field private mMeasureText:Landroid/widget/TextView;

.field private mMeasureTime:I

.field private mMesaageText2:Landroid/widget/TextView;

.field private mMessageText1:Landroid/widget/TextView;

.field private mNowTimeText:Landroid/widget/TextView;

.field private mNum:I

.field private mPm:Landroid/os/PowerManager;

.field mPool:Landroid/media/SoundPool;

.field private mPowerButton:Landroid/widget/Button;

.field mPref:Landroid/content/SharedPreferences;

.field private mReadyTime:I

.field private mShakeButton:Landroid/widget/Button;

.field mSm:Landroid/hardware/SensorManager;

.field mStatus:I

.field private mTime:I

.field private mTimeSound:I

.field mTimerHandler:Landroid/os/Handler;

.field private mValueText:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWriteProgressDialog:Landroid/app/ProgressDialog;

.field row1col1Flag:Z

.field row1col2Flag:Z

.field row1col3Flag:Z

.field row2col1Flag:Z

.field row2col2Flag:Z

.field row2col3Flag:Z

.field row3col1Flag:Z

.field row3col2Flag:Z

.field row3col3Flag:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/jaynux/app/measureActivity;->row1col1Flag:Z

    .line 27
    iput-boolean v1, p0, Lcom/jaynux/app/measureActivity;->row1col2Flag:Z

    .line 28
    iput-boolean v1, p0, Lcom/jaynux/app/measureActivity;->row1col3Flag:Z

    .line 29
    iput-boolean v1, p0, Lcom/jaynux/app/measureActivity;->row2col1Flag:Z

    .line 30
    iput-boolean v0, p0, Lcom/jaynux/app/measureActivity;->row2col2Flag:Z

    .line 31
    iput-boolean v1, p0, Lcom/jaynux/app/measureActivity;->row2col3Flag:Z

    .line 32
    iput-boolean v1, p0, Lcom/jaynux/app/measureActivity;->row3col1Flag:Z

    .line 33
    iput-boolean v1, p0, Lcom/jaynux/app/measureActivity;->row3col2Flag:Z

    .line 34
    iput-boolean v1, p0, Lcom/jaynux/app/measureActivity;->row3col3Flag:Z

    .line 37
    iput v1, p0, Lcom/jaynux/app/measureActivity;->SPEED_INDEX:I

    .line 38
    iput v0, p0, Lcom/jaynux/app/measureActivity;->BOOSTER_INDEX:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/jaynux/app/measureActivity;->STEP_INDEX:I

    .line 40
    iput v2, p0, Lcom/jaynux/app/measureActivity;->FINGELDISTANCEINDEX:I

    .line 67
    iput v2, p0, Lcom/jaynux/app/measureActivity;->mReadyTime:I

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/jaynux/app/measureActivity;->mMeasureTime:I

    .line 78
    iput v3, p0, Lcom/jaynux/app/measureActivity;->mStatus:I

    .line 81
    iput v1, p0, Lcom/jaynux/app/measureActivity;->mNum:I

    .line 82
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mBeforValue:[I

    .line 83
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mAfterValue:[I

    .line 84
    iput v1, p0, Lcom/jaynux/app/measureActivity;->mTime:I

    .line 86
    iput v1, p0, Lcom/jaynux/app/measureActivity;->mFingerTouchValue:I

    .line 87
    iput v1, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I

    .line 92
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mMeasureResult:[I

    .line 95
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    .line 168
    new-instance v0, Lcom/jaynux/app/measureActivity$1;

    invoke-direct {v0, p0}, Lcom/jaynux/app/measureActivity$1;-><init>(Lcom/jaynux/app/measureActivity;)V

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 261
    new-instance v0, Lcom/jaynux/app/measureActivity$2;

    invoke-direct {v0, p0}, Lcom/jaynux/app/measureActivity$2;-><init>(Lcom/jaynux/app/measureActivity;)V

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->Listner:Landroid/hardware/SensorEventListener;

    .line 392
    new-instance v0, Lcom/jaynux/app/measureActivity$3;

    invoke-direct {v0, p0}, Lcom/jaynux/app/measureActivity$3;-><init>(Lcom/jaynux/app/measureActivity;)V

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mTimerHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/jaynux/app/measureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/jaynux/app/measureActivity;->mNum:I

    return-void
.end method

.method static synthetic access$1(Lcom/jaynux/app/measureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/jaynux/app/measureActivity;->mMeasureTime:I

    return-void
.end method

.method static synthetic access$10(Lcom/jaynux/app/measureActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 84
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mTime:I

    return v0
.end method

.method static synthetic access$11(Lcom/jaynux/app/measureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/jaynux/app/measureActivity;->mTime:I

    return-void
.end method

.method static synthetic access$12(Lcom/jaynux/app/measureActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mBeforValue:[I

    return-object v0
.end method

.method static synthetic access$13(Lcom/jaynux/app/measureActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mAfterValue:[I

    return-object v0
.end method

.method static synthetic access$14(Lcom/jaynux/app/measureActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mAccelerateValue:I

    return v0
.end method

.method static synthetic access$15(Lcom/jaynux/app/measureActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 81
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mNum:I

    return v0
.end method

.method static synthetic access$16(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mValueText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jaynux/app/measureActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$18(Lcom/jaynux/app/measureActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mMeasureResult:[I

    return-object v0
.end method

.method static synthetic access$19(Lcom/jaynux/app/measureActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mReadyTime:I

    return v0
.end method

.method static synthetic access$2(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mShakeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jaynux/app/measureActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mTimeSound:I

    return v0
.end method

.method static synthetic access$21(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mMessageText1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mMesaageText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mNowTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jaynux/app/measureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/jaynux/app/measureActivity;->mReadyTime:I

    return-void
.end method

.method static synthetic access$25(Lcom/jaynux/app/measureActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mMeasureTime:I

    return v0
.end method

.method static synthetic access$26(Lcom/jaynux/app/measureActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 86
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mFingerTouchValue:I

    return v0
.end method

.method static synthetic access$27(Lcom/jaynux/app/measureActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I

    return v0
.end method

.method static synthetic access$3(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mPowerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mFingerTouchButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mApplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jaynux/app/measureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lcom/jaynux/app/measureActivity;->mAccelerateValue:I

    return-void
.end method

.method static synthetic access$8(Lcom/jaynux/app/measureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/jaynux/app/measureActivity;->mFingerTouchValue:I

    return-void
.end method

.method static synthetic access$9(Lcom/jaynux/app/measureActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I

    return-void
.end method


# virtual methods
.method public dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 705
    new-instance v0, Lcom/jaynux/app/measureActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/jaynux/app/measureActivity$6;-><init>(Lcom/jaynux/app/measureActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->setContentView(I)V

    .line 108
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mValueText:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mNowTimeText:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mMessageText1:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mMesaageText2:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mMeasureText:Landroid/widget/TextView;

    .line 115
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mPool:Landroid/media/SoundPool;

    .line 116
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mPool:Landroid/media/SoundPool;

    const/high16 v1, 0x7f05

    invoke-virtual {v0, p0, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/jaynux/app/measureActivity;->mTimeSound:I

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    .line 122
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mShakeButton:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mShakeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jaynux/app/measureActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mPowerButton:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mPowerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jaynux/app/measureActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mFingerTouchButton:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mFingerTouchButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jaynux/app/measureActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceButton:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jaynux/app/measureActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mApplyButton:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mApplyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jaynux/app/measureActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mPm:Landroid/os/PowerManager;

    .line 135
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mPm:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "tag"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 138
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mSm:Landroid/hardware/SensorManager;

    .line 140
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 597
    packed-switch p1, :pswitch_data_0

    .line 608
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 599
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    .line 600
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 601
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/jaynux/app/measureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 603
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 604
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    .line 605
    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/jaynux/app/measureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWriteProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 160
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/jaynux/app/measureActivity;->Listner:Landroid/hardware/SensorEventListener;

    .line 161
    iget-object v2, p0, Lcom/jaynux/app/measureActivity;->mSm:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 163
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/jaynux/app/measureActivity;->Listner:Landroid/hardware/SensorEventListener;

    .line 147
    iget-object v2, p0, Lcom/jaynux/app/measureActivity;->mSm:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 148
    const/4 v3, 0x2

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 150
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 153
    const-string v0, "preftest"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jaynux/app/measureActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mPref:Landroid/content/SharedPreferences;

    .line 154
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    .line 155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 334
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mStatus:I

    if-ne v0, v4, :cond_1

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mFingerTouchValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jaynux/app/measureActivity;->mFingerTouchValue:I

    .line 339
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mValueText:Landroid/widget/TextView;

    const-string v3, "%d"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/jaynux/app/measureActivity;->mFingerTouchValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 372
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 342
    goto :goto_0

    .line 344
    :cond_1
    iget v0, p0, Lcom/jaynux/app/measureActivity;->mStatus:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    new-instance v3, Lcom/jaynux/app/measureActivity$Vertex;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/jaynux/app/measureActivity$Vertex;-><init>(Lcom/jaynux/app/measureActivity;FFZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 348
    iget v3, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I

    .line 349
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaynux/app/measureActivity$Vertex;

    iget v4, v0, Lcom/jaynux/app/measureActivity$Vertex;->x:F

    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaynux/app/measureActivity$Vertex;

    iget v5, v0, Lcom/jaynux/app/measureActivity$Vertex;->y:F

    .line 350
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaynux/app/measureActivity$Vertex;

    iget v6, v0, Lcom/jaynux/app/measureActivity$Vertex;->x:F

    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaynux/app/measureActivity$Vertex;

    iget v0, v0, Lcom/jaynux/app/measureActivity$Vertex;->y:F

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/jaynux/app/measureActivity;->processDistance(FFFF)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mValueText:Landroid/widget/TextView;

    const-string v3, "%d"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 355
    goto/16 :goto_0

    .line 357
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 358
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    new-instance v3, Lcom/jaynux/app/measureActivity$Vertex;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/jaynux/app/measureActivity$Vertex;-><init>(Lcom/jaynux/app/measureActivity;FFZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 360
    iget v3, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I

    .line 361
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaynux/app/measureActivity$Vertex;

    iget v4, v0, Lcom/jaynux/app/measureActivity$Vertex;->x:F

    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaynux/app/measureActivity$Vertex;

    iget v5, v0, Lcom/jaynux/app/measureActivity$Vertex;->y:F

    .line 362
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaynux/app/measureActivity$Vertex;

    iget v6, v0, Lcom/jaynux/app/measureActivity$Vertex;->x:F

    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/jaynux/app/measureActivity;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jaynux/app/measureActivity$Vertex;

    iget v0, v0, Lcom/jaynux/app/measureActivity$Vertex;->y:F

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/jaynux/app/measureActivity;->processDistance(FFFF)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mValueText:Landroid/widget/TextView;

    const-string v3, "%d"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 367
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 369
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 372
    goto/16 :goto_0
.end method

.method public processDistance(FFFF)I
    .locals 7
    .parameter "srcX"
    .parameter "srcY"
    .parameter "desX"
    .parameter "desY"

    .prologue
    const-wide/high16 v5, 0x4000

    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, result:I
    sub-float v1, p1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-float v3, p2, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 388
    return v0
.end method

.method public saveProgress(I)V
    .locals 1
    .parameter "arTime"

    .prologue
    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->showDialogSafely(I)V

    .line 639
    return-void
.end method

.method public showDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 614
    new-instance v0, Lcom/jaynux/app/measureActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/jaynux/app/measureActivity$4;-><init>(Lcom/jaynux/app/measureActivity;I)V

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 630
    return-void
.end method

.method public showMessageDialog(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "message"
    .parameter "success"

    .prologue
    .line 644
    new-instance v0, Lcom/jaynux/app/measureActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/jaynux/app/measureActivity$5;-><init>(Lcom/jaynux/app/measureActivity;Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, v0}, Lcom/jaynux/app/measureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 702
    return-void
.end method

.method public showMesureText()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 588
    iget-object v0, p0, Lcom/jaynux/app/measureActivity;->mMeasureText:Landroid/widget/TextView;

    const-string v1, "\ud754\ub4e0\ud69f\uc218 :%d, \ud754\ub4e0\ud30c\uc6cc :%d, \ud130\uce58\ud69f\uc218 :%d \uac70\ub9ac : %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 589
    iget-object v3, p0, Lcom/jaynux/app/measureActivity;->mMeasureResult:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/jaynux/app/measureActivity;->mMeasureResult:[I

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/jaynux/app/measureActivity;->mMeasureResult:[I

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/jaynux/app/measureActivity;->mMeasureResult:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 588
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    return-void
.end method
