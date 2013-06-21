.class Lorg/tf/stage/LayerEffect;
.super Ljava/lang/Object;
.source "StageEffects.java"


# static fields
.field private static final PROFILE_DEFAULT:I = 0x1

.field private static final PROFILE_LINSTEP:I = 0x1

.field private static final PROFILE_SINSTEP:I = 0x3

.field private static final PROFILE_SMOOTHSTEP:I = 0x2

.field private static final STREAM_TAG:I = 0x53465845

.field private static final TRIGGER_BEAT:I = 0x1

.field private static final TRIGGER_DEFAULT:I = 0x0

.field private static final TRIGGER_MISS:I = 0x4

.field private static final TRIGGER_NONE:I = 0x0

.field private static final TRIGGER_PICK:I = 0x3

.field private static final TRIGGER_QUARTERBIT:I = 0x2


# instance fields
.field private m_delay:F

.field private m_intensity:F

.field private m_period:F

.field private m_profile:I

.field private m_stage:Lorg/tf/stage/StageEffects;

.field private m_trigger:I


# direct methods
.method public constructor <init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V
    .locals 2
    .parameter "stage"
    .parameter "iniSection"

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object p1, p0, Lorg/tf/stage/LayerEffect;->m_stage:Lorg/tf/stage/StageEffects;

    .line 644
    const-string v0, "intensity"

    const/high16 v1, 0x3f80

    invoke-virtual {p2, v0, v1}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_intensity:F

    .line 645
    const-string v0, "trigger"

    invoke-virtual {p2, v0}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/tf/stage/LayerEffect;->parseTrigger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_trigger:I

    .line 646
    const-string v0, "profile"

    invoke-virtual {p2, v0}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/tf/stage/LayerEffect;->parseProfile(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_profile:I

    .line 647
    const-string v0, "period"

    const/high16 v1, 0x43fa

    invoke-virtual {p2, v0, v1}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_period:F

    .line 648
    const-string v0, "delay"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_delay:F

    .line 649
    return-void
.end method

.method public static create(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)Lorg/tf/stage/LayerEffect;
    .locals 3
    .parameter "stage"
    .parameter "iniSection"

    .prologue
    const/4 v2, 0x0

    .line 677
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, type:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    .line 693
    :goto_0
    return-object v1

    .line 681
    :cond_0
    const-string v1, "wiggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    new-instance v1, Lorg/tf/stage/WiggleLayerEffect;

    invoke-direct {v1, p0, p1}, Lorg/tf/stage/WiggleLayerEffect;-><init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V

    goto :goto_0

    .line 684
    :cond_1
    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 685
    new-instance v1, Lorg/tf/stage/ScaleLayerEffect;

    invoke-direct {v1, p0, p1}, Lorg/tf/stage/ScaleLayerEffect;-><init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V

    goto :goto_0

    .line 687
    :cond_2
    const-string v1, "rotate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 688
    new-instance v1, Lorg/tf/stage/RotateLayerEffect;

    invoke-direct {v1, p0, p1}, Lorg/tf/stage/RotateLayerEffect;-><init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V

    goto :goto_0

    .line 690
    :cond_3
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 691
    new-instance v1, Lorg/tf/stage/LightLayerEffect;

    invoke-direct {v1, p0, p1}, Lorg/tf/stage/LightLayerEffect;-><init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V

    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 693
    goto :goto_0
.end method

.method private static parseProfile(Ljava/lang/String;)I
    .locals 2
    .parameter "profileName"

    .prologue
    const/4 v1, 0x1

    .line 784
    if-nez p0, :cond_0

    move v0, v1

    .line 796
    :goto_0
    return v0

    .line 787
    :cond_0
    const-string v0, "linstep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 788
    goto :goto_0

    .line 790
    :cond_1
    const-string v0, "sinstep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    const/4 v0, 0x3

    goto :goto_0

    .line 793
    :cond_2
    const-string v0, "smoothstep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 794
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 796
    goto :goto_0
.end method

.method private static parseTrigger(Ljava/lang/String;)I
    .locals 2
    .parameter "triggerName"

    .prologue
    const/4 v1, 0x0

    .line 765
    if-nez p0, :cond_0

    move v0, v1

    .line 780
    :goto_0
    return v0

    .line 768
    :cond_0
    const-string v0, "beat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    const/4 v0, 0x1

    goto :goto_0

    .line 771
    :cond_1
    const-string v0, "quarterbeat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    const/4 v0, 0x2

    goto :goto_0

    .line 774
    :cond_2
    const-string v0, "pick"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 775
    const/4 v0, 0x3

    goto :goto_0

    .line 777
    :cond_3
    const-string v0, "miss"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 778
    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    move v0, v1

    .line 780
    goto :goto_0
.end method

.method private step(FFF)F
    .locals 3
    .parameter "min"
    .parameter "max"
    .parameter "x"

    .prologue
    const/high16 v2, 0x3f80

    .line 749
    cmpg-float v0, p3, p1

    if-gez v0, :cond_0

    .line 750
    const/4 v0, 0x0

    .line 761
    :goto_0
    return v0

    .line 752
    :cond_0
    cmpl-float v0, p3, p2

    if-lez v0, :cond_1

    move v0, v2

    .line 753
    goto :goto_0

    .line 755
    :cond_1
    sub-float v0, p3, p1

    sub-float v1, p2, p1

    div-float p3, v0, v1

    .line 756
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_profile:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 757
    const/high16 v0, -0x4000

    mul-float/2addr v0, p3

    mul-float/2addr v0, p3

    mul-float/2addr v0, p3

    const/high16 v1, 0x4040

    mul-float/2addr v1, p3

    mul-float/2addr v1, p3

    add-float p3, v0, v1

    :cond_2
    :goto_1
    move v0, p3

    .line 761
    goto :goto_0

    .line 758
    :cond_3
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_profile:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 759
    const v0, 0x40490fdb

    sub-float v1, v2, p3

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result p3

    goto :goto_1
.end method


# virtual methods
.method public apply(Lorg/tf/stage/Layer;)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 674
    return-void
.end method

.method protected getDelay()F
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_delay:F

    return v0
.end method

.method protected getIntensity()F
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_intensity:F

    return v0
.end method

.method protected getPeriod()F
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_period:F

    return v0
.end method

.method public getStage()Lorg/tf/stage/StageEffects;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lorg/tf/stage/LayerEffect;->m_stage:Lorg/tf/stage/StageEffects;

    return-object v0
.end method

.method public restoreState(Ljava/io/DataInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    const v0, 0x53465845

    invoke-static {p1, v0}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 662
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_trigger:I

    .line 663
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_profile:I

    .line 664
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_intensity:F

    .line 665
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_period:F

    .line 666
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LayerEffect;->m_delay:F

    .line 667
    return-void
.end method

.method public saveState(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    const v0, 0x53465845

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 653
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_trigger:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 654
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_profile:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 655
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_intensity:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 656
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_period:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 657
    iget v0, p0, Lorg/tf/stage/LayerEffect;->m_delay:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 658
    return-void
.end method

.method protected trigger()F
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 711
    iget v3, p0, Lorg/tf/stage/LayerEffect;->m_trigger:I

    packed-switch v3, :pswitch_data_0

    move v3, v6

    .line 742
    :goto_0
    return v3

    .line 715
    :pswitch_0
    iget v3, p0, Lorg/tf/stage/LayerEffect;->m_trigger:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 716
    iget-object v3, p0, Lorg/tf/stage/LayerEffect;->m_stage:Lorg/tf/stage/StageEffects;

    invoke-virtual {v3}, Lorg/tf/stage/StageEffects;->getBeatPosition()I

    move-result v3

    move v2, v3

    .line 718
    .local v2, position:I
    :goto_1
    if-nez v2, :cond_1

    move v3, v6

    .line 719
    goto :goto_0

    .line 717
    .end local v2           #position:I
    :cond_0
    iget-object v3, p0, Lorg/tf/stage/LayerEffect;->m_stage:Lorg/tf/stage/StageEffects;

    invoke-virtual {v3}, Lorg/tf/stage/StageEffects;->getQuarterbeatPosition()I

    move-result v3

    move v2, v3

    goto :goto_1

    .line 721
    .restart local v2       #position:I
    :cond_1
    iget-object v3, p0, Lorg/tf/stage/LayerEffect;->m_stage:Lorg/tf/stage/StageEffects;

    invoke-virtual {v3}, Lorg/tf/stage/StageEffects;->getBeatPeriod()F

    move-result v1

    .line 722
    .local v1, period:F
    iget v3, p0, Lorg/tf/stage/LayerEffect;->m_trigger:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 723
    const/high16 v3, 0x4080

    div-float/2addr v1, v3

    .line 725
    :cond_2
    iget-object v3, p0, Lorg/tf/stage/LayerEffect;->m_stage:Lorg/tf/stage/StageEffects;

    invoke-virtual {v3}, Lorg/tf/stage/StageEffects;->getPosition()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/tf/stage/LayerEffect;->m_delay:F

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    int-to-float v4, v2

    sub-float v0, v3, v4

    .line 726
    .local v0, p:F
    iget v3, p0, Lorg/tf/stage/LayerEffect;->m_intensity:F

    invoke-direct {p0, v6, v1, v0}, Lorg/tf/stage/LayerEffect;->step(FFF)F

    move-result v4

    sub-float v4, v7, v4

    mul-float/2addr v3, v4

    goto :goto_0

    .line 731
    .end local v0           #p:F
    .end local v1           #period:F
    .end local v2           #position:I
    :pswitch_1
    iget v3, p0, Lorg/tf/stage/LayerEffect;->m_trigger:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 732
    iget-object v3, p0, Lorg/tf/stage/LayerEffect;->m_stage:Lorg/tf/stage/StageEffects;

    invoke-virtual {v3}, Lorg/tf/stage/StageEffects;->getNotesPickPosition()I

    move-result v3

    move v2, v3

    .line 734
    .restart local v2       #position:I
    :goto_2
    if-nez v2, :cond_4

    move v3, v6

    .line 735
    goto :goto_0

    .line 733
    .end local v2           #position:I
    :cond_3
    iget-object v3, p0, Lorg/tf/stage/LayerEffect;->m_stage:Lorg/tf/stage/StageEffects;

    invoke-virtual {v3}, Lorg/tf/stage/StageEffects;->getNotesMissPosition()I

    move-result v3

    move v2, v3

    goto :goto_2

    .line 737
    .restart local v2       #position:I
    :cond_4
    iget-object v3, p0, Lorg/tf/stage/LayerEffect;->m_stage:Lorg/tf/stage/StageEffects;

    invoke-virtual {v3}, Lorg/tf/stage/StageEffects;->getPosition()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/tf/stage/LayerEffect;->m_delay:F

    iget v5, p0, Lorg/tf/stage/LayerEffect;->m_period:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    int-to-float v4, v2

    sub-float v0, v3, v4

    .line 738
    .restart local v0       #p:F
    iget v3, p0, Lorg/tf/stage/LayerEffect;->m_intensity:F

    iget v4, p0, Lorg/tf/stage/LayerEffect;->m_period:F

    invoke-direct {p0, v6, v4, v0}, Lorg/tf/stage/LayerEffect;->step(FFF)F

    move-result v4

    sub-float v4, v7, v4

    mul-float/2addr v3, v4

    goto :goto_0

    .line 711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
