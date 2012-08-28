.class public Lorg/connectbot/GeneratePubkeyActivity;
.super Landroid/app/Activity;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Lorg/connectbot/util/OnEntropyGatheredListener;


# instance fields
.field private bits:I

.field private bitsSlider:Landroid/widget/SeekBar;

.field private bitsText:Landroid/widget/EditText;

.field private confirmUse:Landroid/widget/CheckBox;

.field private entropy:[B

.field private entropyDialog:Landroid/app/Dialog;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private keyType:Ljava/lang/String;

.field private keyTypeGroup:Landroid/widget/RadioGroup;

.field private final mKeyGen:Ljava/lang/Runnable;

.field private minBits:I

.field private nickname:Landroid/widget/EditText;

.field private password1:Landroid/widget/EditText;

.field private password2:Landroid/widget/EditText;

.field private progress:Landroid/app/ProgressDialog;

.field private save:Landroid/widget/Button;

.field private final textChecker:Landroid/text/TextWatcher;

.field private unlockAtStartup:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->inflater:Landroid/view/LayoutInflater;

    .line 74
    const-string v0, "RSA"

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->keyType:Ljava/lang/String;

    .line 75
    const/16 v0, 0x300

    iput v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->minBits:I

    .line 76
    const/16 v0, 0x400

    iput v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->bits:I

    .line 240
    new-instance v0, Lorg/connectbot/GeneratePubkeyActivity$1;

    invoke-direct {v0, p0}, Lorg/connectbot/GeneratePubkeyActivity$1;-><init>(Lorg/connectbot/GeneratePubkeyActivity;)V

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->handler:Landroid/os/Handler;

    .line 248
    new-instance v0, Lorg/connectbot/GeneratePubkeyActivity$2;

    invoke-direct {v0, p0}, Lorg/connectbot/GeneratePubkeyActivity$2;-><init>(Lorg/connectbot/GeneratePubkeyActivity;)V

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->mKeyGen:Ljava/lang/Runnable;

    .line 295
    new-instance v0, Lorg/connectbot/GeneratePubkeyActivity$3;

    invoke-direct {v0, p0}, Lorg/connectbot/GeneratePubkeyActivity$3;-><init>(Lorg/connectbot/GeneratePubkeyActivity;)V

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->textChecker:Landroid/text/TextWatcher;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lorg/connectbot/GeneratePubkeyActivity;)[B
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->entropy:[B

    return-object v0
.end method

.method static synthetic access$10(Lorg/connectbot/GeneratePubkeyActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lorg/connectbot/GeneratePubkeyActivity;->minBits:I

    return-void
.end method

.method static synthetic access$11(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$12(Lorg/connectbot/GeneratePubkeyActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->minBits:I

    return v0
.end method

.method static synthetic access$13(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lorg/connectbot/GeneratePubkeyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lorg/connectbot/GeneratePubkeyActivity;->keyType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lorg/connectbot/GeneratePubkeyActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lorg/connectbot/GeneratePubkeyActivity;->bits:I

    return-void
.end method

.method static synthetic access$16(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->save:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$17(Lorg/connectbot/GeneratePubkeyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/connectbot/GeneratePubkeyActivity;->startEntropyGather()V

    return-void
.end method

.method static synthetic access$2(Lorg/connectbot/GeneratePubkeyActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lorg/connectbot/GeneratePubkeyActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->bits:I

    return v0
.end method

.method static synthetic access$4(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->nickname:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->unlockAtStartup:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->confirmUse:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lorg/connectbot/GeneratePubkeyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/connectbot/GeneratePubkeyActivity;->checkEntries()V

    return-void
.end method

.method private checkEntries()V
    .locals 3

    .prologue
    .line 191
    const/4 v0, 0x1

    .line 193
    .local v0, allowSave:Z
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity;->password2:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :cond_0
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->nickname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 197
    const/4 v0, 0x0

    .line 199
    :cond_1
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->save:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 200
    return-void
.end method

.method private measureNumberOfSetBits(B)I
    .locals 4
    .parameter "b"

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 310
    .local v1, numSetBits:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 316
    return v1

    .line 311
    :cond_0
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 313
    :cond_1
    shr-int/lit8 v2, p1, 0x1

    int-to-byte p1, v2

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startEntropyGather()V
    .locals 5

    .prologue
    .line 203
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, entropyView:Landroid/view/View;
    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/connectbot/util/EntropyView;

    invoke-virtual {v1, p0}, Lorg/connectbot/util/EntropyView;->addOnEntropyGatheredListener(Lorg/connectbot/util/OnEntropyGatheredListener;)V

    .line 205
    new-instance v1, Lorg/connectbot/util/EntropyDialog;

    invoke-direct {v1, p0, v0}, Lorg/connectbot/util/EntropyDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->entropyDialog:Landroid/app/Dialog;

    .line 206
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->entropyDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 207
    return-void
.end method

.method private startKeyGen()V
    .locals 4

    .prologue
    .line 229
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    .line 230
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/connectbot/GeneratePubkeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 232
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 233
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 235
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->mKeyGen:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 236
    .local v0, keyGenThread:Ljava/lang/Thread;
    const-string v1, "KeyGen"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->nickname:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->keyTypeGroup:Landroid/widget/RadioGroup;

    .line 90
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;

    .line 91
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;

    .line 93
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->password2:Landroid/widget/EditText;

    .line 96
    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->unlockAtStartup:Landroid/widget/CheckBox;

    .line 98
    const v0, 0x7f0b0019

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->confirmUse:Landroid/widget/CheckBox;

    .line 100
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lorg/connectbot/GeneratePubkeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->save:Landroid/widget/Button;

    .line 102
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->inflater:Landroid/view/LayoutInflater;

    .line 104
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->nickname:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->textChecker:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->password1:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->textChecker:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 106
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->password2:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity;->textChecker:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->keyTypeGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lorg/connectbot/GeneratePubkeyActivity$4;

    invoke-direct {v1, p0}, Lorg/connectbot/GeneratePubkeyActivity$4;-><init>(Lorg/connectbot/GeneratePubkeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 135
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;

    new-instance v1, Lorg/connectbot/GeneratePubkeyActivity$5;

    invoke-direct {v1, p0}, Lorg/connectbot/GeneratePubkeyActivity$5;-><init>(Lorg/connectbot/GeneratePubkeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 161
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;

    new-instance v1, Lorg/connectbot/GeneratePubkeyActivity$6;

    invoke-direct {v1, p0}, Lorg/connectbot/GeneratePubkeyActivity$6;-><init>(Lorg/connectbot/GeneratePubkeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 180
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity;->save:Landroid/widget/Button;

    new-instance v1, Lorg/connectbot/GeneratePubkeyActivity$7;

    invoke-direct {v1, p0}, Lorg/connectbot/GeneratePubkeyActivity$7;-><init>(Lorg/connectbot/GeneratePubkeyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method

.method public onEntropyGathered([B)V
    .locals 8
    .parameter "entropy"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lorg/connectbot/GeneratePubkeyActivity;->finish()V

    .line 226
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity;->entropy:[B

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, numSetBits:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 222
    const-string v2, "ConnectBot.GeneratePubkeyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Entropy distribution="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/high16 v4, 0x4059

    int-to-double v6, v1

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4064

    div-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v2, "ConnectBot.GeneratePubkeyActivity"

    const-string v3, "entropy gathered; attemping to generate key..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Lorg/connectbot/GeneratePubkeyActivity;->startKeyGen()V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity;->entropy:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v2}, Lorg/connectbot/GeneratePubkeyActivity;->measureNumberOfSetBits(B)I

    move-result v2

    add-int/2addr v1, v2

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
